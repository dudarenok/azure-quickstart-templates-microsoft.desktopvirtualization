using 'main.bicep'

param location = 'westeurope'

// param deployNetwork = true

param virtualNetworkName = 'vnet-avd'
param virtualNetworkAddressSpace = '10.100.0.0/16'

param subnetName1 = 'sn-1'

param subnetAddressPrefix1 = '10.100.0.0/24'

param numberOfSessionHost = 1

param artifactsLocation = 'https://wvdportalstorageblob.blob.core.windows.net/galleryartifacts/Configuration_1.0.02797.442.zip'

param adminGroupObjectId = '0f410fe1-be2d-4902-a1e2-08857d6b1fe8'
param userGroupObjectId = '857d68cd-d6fe-4a1d-ac68-e3ab62f85781'

param hostPoolName = 'hostpool-entra'
param applicationGroupName = 'ag-entra'
param workspaceName = 'workspace-entra'

param vmAdminUsername = 'avdadmin'
param vmAdminPassword = 'LILA)2j(!3mu/15'
param vmSize = 'Standard_D2s_v3'


