$ErrorActionPreference = "Stop"
$GithubBaseUrl = "https://raw.githubusercontent.com/JordanAfolabiLaw/antigravity-cleaner/main"

# Detect OS
$IsWin = if ($null -ne $IsWindows) { $IsWindows } else { $env:OS -like "*Windows*" }
$HomePath = if ($IsWin) { $env:USERPROFILE } else { $env:HOME }
$PSExe = if ($IsWin) { "powershell.exe" } else { "pwsh" }

$InstallDir = Join-Path $HomePath ".antigravity"
$TargetFile = Join-Path $InstallDir "Antigravity.ps1"

# 1. Create Directory
if (!(Test-Path $InstallDir)) {
    New-Item -ItemType Directory -Path $InstallDir -Force | Out-Null
    Write-Host "Created installation directory: $InstallDir" -ForegroundColor Cyan
}

# 2. Download Main Script
Write-Host "Downloading Antigravity Shell..." -ForegroundColor Yellow
try {
    Invoke-WebRequest -Uri "$GithubBaseUrl/Antigravity.ps1" -OutFile $TargetFile -UseBasicParsing
    Write-Host "Download Complete." -ForegroundColor Green
}
catch {
    Write-Host "Failed to download script. Check internet connection." -ForegroundColor Red
    Write-Host "Error: $_" -ForegroundColor Red
    exit 1
}

# 3. Verify Integrity (SHA256 Hash Check)
Write-Host "Verifying file integrity..." -ForegroundColor Yellow
try {
    $checksumFile = Join-Path $InstallDir "checksums.sha256"
    Invoke-WebRequest -Uri "$GithubBaseUrl/checksums.sha256" -OutFile $checksumFile -UseBasicParsing

    # Parse expected hash from checksums file
    $checksumContent = Get-Content $checksumFile -Raw
    $expectedHash = ($checksumContent -split "\s+")[0].Trim().ToUpper()

    # Compute actual hash of downloaded file
    $actualHash = (Get-FileHash -Path $TargetFile -Algorithm SHA256).Hash.ToUpper()

    if ($actualHash -ne $expectedHash) {
        Write-Host "" 
        Write-Host "  !!  INTEGRITY CHECK FAILED  !!" -ForegroundColor Red
        Write-Host "  The downloaded file does not match the expected checksum." -ForegroundColor Red
        Write-Host "  Expected: $expectedHash" -ForegroundColor DarkGray
        Write-Host "  Got:      $actualHash" -ForegroundColor DarkGray
        Write-Host "  The file may have been tampered with. Aborting installation." -ForegroundColor Red
        Remove-Item -Path $TargetFile -Force -ErrorAction SilentlyContinue
        Remove-Item -Path $checksumFile -Force -ErrorAction SilentlyContinue
        exit 1
    }

    Write-Host "Integrity verified (SHA256 match)." -ForegroundColor Green
    Remove-Item -Path $checksumFile -Force -ErrorAction SilentlyContinue
}
catch {
    Write-Host "WARNING: Could not verify file integrity. Checksums file not found." -ForegroundColor Yellow
    Write-Host "Proceeding without verification — consider updating the repo." -ForegroundColor Yellow
}

# 4. Create Desktop Shortcut (Windows Only)
if ($IsWin) {
    try {
        $WshShell = New-Object -ComObject WScript.Shell
        $DesktopPath = [Environment]::GetFolderPath("Desktop")
        $ShortcutFile = "$DesktopPath\Antigravity Shell.lnk"
        $Shortcut = $WshShell.CreateShortcut($ShortcutFile)
        $Shortcut.TargetPath = "powershell.exe"
        $Shortcut.Arguments = "-NoProfile -ExecutionPolicy Bypass -File `"$TargetFile`""
        $Shortcut.IconLocation = "shell32.dll,238" 
        $Shortcut.Save()
        Write-Host "Shortcut created on Desktop." -ForegroundColor Green
    }
    catch {
        Write-Host "Could not create shortcut automatically." -ForegroundColor Gray
    }
}
else {
    Write-Host ""
    Write-Host "Installation Note (macOS/Linux):" -ForegroundColor Cyan
    Write-Host "To run Antigravity in the future, use:" -ForegroundColor White
    Write-Host "  pwsh $TargetFile" -ForegroundColor Yellow
    Write-Host ""
}

# 5. Launch
Write-Host "Launching Antigravity..." -ForegroundColor Cyan
Start-Process $PSExe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$TargetFile`""
