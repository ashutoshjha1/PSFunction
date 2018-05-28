New-AzureRmVm `
    -ResourceGroupName "JenkinsPOC" `
    -Name "myVM" `
    -Location "East US" `
    -VirtualNetworkName "JenkinsPOC-vnet" `
    -SubnetName "default" `
    -SecurityGroupName "JenkinsVM-nsg" `
    -PublicIpAddressName "JenkinsVM-ip" `
    -OpenPorts 80,3389
