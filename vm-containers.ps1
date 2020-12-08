function main   {

    Install-VM_Container_Tools

}

function Install-VM_Container_Tools {

    Write-Host 'Installing Virtualization and container apps' -ForegroundColor Cyan

    choco install -y virtualbox
    
    choco install -y vagrant
    
    choco install -y docker-desktop

    choco install -y minikube

}

main