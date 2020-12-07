
function main {
    
    Update-Windows-Configuration
	
	Chocolatey-pkg-creation

    Install-Utils

    Install-Networking_VPN
	
	Install-Browsers

    Install-DevTools

    Install-ProductivityTools

}

function Update-Windows-Configuration {
    Write-Host 'Configuring Windows'

    choco install -y taskbar-winconfig --params "'/LOCATION:top /SIZE:small /LOCKED:yes /COMBINED:no /CORTANA:icon /AUTOTRAY:no /USEPOWERSHELL:no'"
    choco install -y desktopicons-winconfig --params "'/Desktop:YES /UserFiles:YES /ControlPanel:NO /Network:NO /RecycleBin:YES /OneDrive:NO'"
    choco install -y explorer-winconfig --params "'/SHOWEXTENSIONS:yes /SHOWFULLPATH:yes /SHOWENCRYPTED:yes /SHOWCHECKBOXES:no /USESHARINGWIZARD:no /USEVIEW:details'"
}

function Chocolatey-pkg-creation {

    Write-Host 'Configuring Chocolatey package creation'

    choco install -y ussf

    choco install -y checksum
}

function Install-Utils {
    
    Write-Host 'Installing Utilities'

    choco install -y 7zip.install

    choco install -y mobaxterm

    choco install -y putty.install

    choco install -y tightvnc

    choco install -y winscp

    choco install -y partitionwinzard

    choco install -y greenshot

    choco install -y adobereader

    choco install -y ccleaner

    choco install -y aria2

    choco install -y ffmpeg

    choco install -y ffmpeg
	
	choco install -y keepass.install

    choco install -y etcher
	
	choco install -y foxitreader --ia '/MERGETASKS="!desktopicon,!setdefaultreader,!displayinbrowser /COMPONENTS=*pdfviewer,*ffse,*installprint,*ffaddin,*ffspellcheck,!connectedpdf"'

	choco install -y advanced-renamer.install
	
}

function Install-Networking_VPN {

    Write-Host 'Installing Networking tools and VPN'

    choco install -y tapwindows

    choco install -y wireguard

}

function Install-DevTools {
    
    Write-Host 'Installing CLI Tools'

    choco install -y powershell-core

    choco install -y microsoft-windows-terminal

    choco install -y awscli
	
	choco install -y arduino-cli
	
	Write-Host 'Installing Git and programming languages/frameworks'
	
	choco install -y git

    choco install -y tortoisegit
	
	choco install -y souretree

    choco install -y nodejs
	
	choco install -y openjdk8jre
	
	choco install -y python
	
	choco install -y golang
	
	choco install -y hugo
	
	Write-Host 'Installing Code editors'
	
	choco install -y vscode
	
	choco install -y notepadplusplus
	
	Write-Host 'Installing Virtualization and containers'
	
	choco install -y vagrant
	
	choco install -y virtualbox
	
	choco install -y docker-desktopicon
	
	choco install -y minikube
	
	Write-Host 'Installing PCB Design software'
	
	choco install -y kicad

}

function Install-ProductivityTools{
	
	Write-Host 'Installing documentation software'
	
    choco install -y notion
    
    choco install -y libreoffice
	
	choco install -y typora
	
	Write-Host 'Installing multimedia packages'
	
	choco install -y vlc
	
	choco install -y plex
	
	choco install -y youtube-dl
	
	choco install -y obs-studio
	
	choco install -y spotify
	
	choco install -y telegram
}

main


