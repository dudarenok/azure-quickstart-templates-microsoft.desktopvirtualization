param location string

param virtualNetworkName string
param virtualNetworkAddressSpace string
param subnetName1 string
param subnetAddressPrefix1 string

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2024-01-01' = {
  name: virtualNetworkName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [virtualNetworkAddressSpace]
    }
  }
}

resource subnet1 'Microsoft.Network/virtualNetworks/subnets@2024-01-01' = {
  parent: virtualNetwork
  name: subnetName1
  properties: {
    addressPrefix: subnetAddressPrefix1
    privateEndpointNetworkPolicies: 'Enabled'
  }
}

output virtualNetworkId string = virtualNetwork.id
output subnetId1 string = subnet1.id
