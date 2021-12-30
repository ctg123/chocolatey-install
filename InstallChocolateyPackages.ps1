function main {

    Install-Chocolatey_Pkg_Creation

    Install-Browsers

    Install-Utils

    Install-Networking_VPN

    Install-DevTools

    Install-ProductivityTools

}

function Install-Chocolatey_Pkg_Creation {

    Write-Host 'Configuring Chocolatey package creation and GUI' -ForegroundColor Cyan

    choco install -y chocolateygui

    choco install -y ussf

    choco install -y checksum
}

function Install-Browsers {

    Write-Host 'Installing Web Browsers' -ForegroundColor Cyan

    choco install -y firefox

    choco install -y googlechrome

    choco install -y microsoft-edge
}

function Install-Utils {
    
    Write-Host 'Installing Utilities' -ForegroundColor Cyan

    choco install -y 7zip.install

    choco install -y mobaxterm

    choco install -y putty.install

    choco install -y tightvnc

    choco install -y anydesk.portable --params="'/install'"

    choco install -y winscp

    choco install -y partitionwizard

    choco install -y greenshot

    choco install -y inkscape

    choco install -y adobereader

    choco install -y ccleaner

    choco install -y aria2

    choco install -y ffmpeg
    
    choco install -y keepass.install

    choco install -y etcher

    choco install -y foxitreader --ia '/MERGETASKS="!desktopicon,!setdefaultreader,!displayinbrowser /COMPONENTS=*pdfviewer,*ffse,*installprint,*ffaddin,*ffspellcheck,!connectedpdf"'

    choco install -y advanced-renamer.install

}

function Install-Networking_VPN {

    Write-Host 'Installing Networking tools and VPN' -ForegroundColor Cyan

    choco install -y tapwindows

    choco install -y wireguard

}

function Install-DevTools {

    Write-Host 'Installing CLI Tools'   -ForegroundColor Cyan

    choco install -y cygwin --params "/InstallDir:C:\tools /NoStartMenu" 

    choco install -y powershell-core

    choco install -y microsoft-windows-terminal

    choco install -y awscli

    choco install -y arduino-cli
    # For Arduino IDE
    choco install -y arduino

    Write-Host 'Installing Git and programming languages/frameworks' -ForegroundColor Cyan

    choco install -y git

    choco install -y tortoisegit

    choco install -y sourcetree

    #For local servers
    choco install -y nginx --params '"/installLocation:C:\tools /port:433"'

    choco install -y nodejs --params "/InstallDir:C:\tools\Nodejs /NoStartMenu"

    choco install -y openjdk8jre --params "/InstallDir:C:\tools\Java /NoStartMenu"

    choco install -y python --params "/InstallDir:C:\tools\Python /NoStartMenu"

    choco install -y golang --params "/InstallDir:C:\tools\Golang /NoStartMenu"

    choco install -y hugo --params "/InstallDir:C:\tools\Hugo /NoStartMenu"

    Write-Host 'Installing Code editors' -ForegroundColor Cyan

    choco install -y vscode

    choco install -y notepadplusplus

    Write-Host 'Installing PCB Design software' -ForegroundColor Cyan

    choco install -y kicad

}

function Install-ProductivityTools{

    Write-Host 'Installing Documentation software' -ForegroundColor Cyan

    choco install -y notion

    choco install -y libreoffice

    choco install -y typora

    Write-Host 'Installing multimedia packages' -ForegroundColor Cyan

    choco install -y vlc

    choco install -y plex

    choco install -y youtube-dl

    choco install -y obs-studio

    choco install -y spotify

    choco install -y telegram
}

main
