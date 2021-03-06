
module AWS.OpsWorks.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Describes an agent version.</p>
newtype AgentVersion = AgentVersion 
  { "Version" :: Maybe (String)
  , "ConfigurationManager" :: Maybe (StackConfigurationManager)
  }
derive instance newtypeAgentVersion :: Newtype AgentVersion _
derive instance repGenericAgentVersion :: Generic AgentVersion _
instance showAgentVersion :: Show AgentVersion where show = genericShow
instance decodeAgentVersion :: Decode AgentVersion where decode = genericDecode options
instance encodeAgentVersion :: Encode AgentVersion where encode = genericEncode options

-- | Constructs AgentVersion from required parameters
newAgentVersion :: AgentVersion
newAgentVersion  = AgentVersion { "ConfigurationManager": Nothing, "Version": Nothing }

-- | Constructs AgentVersion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAgentVersion' :: ( { "Version" :: Maybe (String) , "ConfigurationManager" :: Maybe (StackConfigurationManager) } -> {"Version" :: Maybe (String) , "ConfigurationManager" :: Maybe (StackConfigurationManager) } ) -> AgentVersion
newAgentVersion'  customize = (AgentVersion <<< customize) { "ConfigurationManager": Nothing, "Version": Nothing }



newtype AgentVersions = AgentVersions (Array AgentVersion)
derive instance newtypeAgentVersions :: Newtype AgentVersions _
derive instance repGenericAgentVersions :: Generic AgentVersions _
instance showAgentVersions :: Show AgentVersions where show = genericShow
instance decodeAgentVersions :: Decode AgentVersions where decode = genericDecode options
instance encodeAgentVersions :: Encode AgentVersions where encode = genericEncode options



-- | <p>A description of the app.</p>
newtype App = App 
  { "AppId" :: Maybe (String)
  , "StackId" :: Maybe (String)
  , "Shortname" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "DataSources" :: Maybe (DataSources)
  , "Type" :: Maybe (AppType)
  , "AppSource" :: Maybe (Source)
  , "Domains" :: Maybe (Strings)
  , "EnableSsl" :: Maybe (Boolean)
  , "SslConfiguration" :: Maybe (SslConfiguration)
  , "Attributes" :: Maybe (AppAttributes)
  , "CreatedAt" :: Maybe (String)
  , "Environment" :: Maybe (EnvironmentVariables)
  }
derive instance newtypeApp :: Newtype App _
derive instance repGenericApp :: Generic App _
instance showApp :: Show App where show = genericShow
instance decodeApp :: Decode App where decode = genericDecode options
instance encodeApp :: Encode App where encode = genericEncode options

-- | Constructs App from required parameters
newApp :: App
newApp  = App { "AppId": Nothing, "AppSource": Nothing, "Attributes": Nothing, "CreatedAt": Nothing, "DataSources": Nothing, "Description": Nothing, "Domains": Nothing, "EnableSsl": Nothing, "Environment": Nothing, "Name": Nothing, "Shortname": Nothing, "SslConfiguration": Nothing, "StackId": Nothing, "Type": Nothing }

-- | Constructs App's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApp' :: ( { "AppId" :: Maybe (String) , "StackId" :: Maybe (String) , "Shortname" :: Maybe (String) , "Name" :: Maybe (String) , "Description" :: Maybe (String) , "DataSources" :: Maybe (DataSources) , "Type" :: Maybe (AppType) , "AppSource" :: Maybe (Source) , "Domains" :: Maybe (Strings) , "EnableSsl" :: Maybe (Boolean) , "SslConfiguration" :: Maybe (SslConfiguration) , "Attributes" :: Maybe (AppAttributes) , "CreatedAt" :: Maybe (String) , "Environment" :: Maybe (EnvironmentVariables) } -> {"AppId" :: Maybe (String) , "StackId" :: Maybe (String) , "Shortname" :: Maybe (String) , "Name" :: Maybe (String) , "Description" :: Maybe (String) , "DataSources" :: Maybe (DataSources) , "Type" :: Maybe (AppType) , "AppSource" :: Maybe (Source) , "Domains" :: Maybe (Strings) , "EnableSsl" :: Maybe (Boolean) , "SslConfiguration" :: Maybe (SslConfiguration) , "Attributes" :: Maybe (AppAttributes) , "CreatedAt" :: Maybe (String) , "Environment" :: Maybe (EnvironmentVariables) } ) -> App
newApp'  customize = (App <<< customize) { "AppId": Nothing, "AppSource": Nothing, "Attributes": Nothing, "CreatedAt": Nothing, "DataSources": Nothing, "Description": Nothing, "Domains": Nothing, "EnableSsl": Nothing, "Environment": Nothing, "Name": Nothing, "Shortname": Nothing, "SslConfiguration": Nothing, "StackId": Nothing, "Type": Nothing }



newtype AppAttributes = AppAttributes (StrMap.StrMap String)
derive instance newtypeAppAttributes :: Newtype AppAttributes _
derive instance repGenericAppAttributes :: Generic AppAttributes _
instance showAppAttributes :: Show AppAttributes where show = genericShow
instance decodeAppAttributes :: Decode AppAttributes where decode = genericDecode options
instance encodeAppAttributes :: Encode AppAttributes where encode = genericEncode options



newtype AppAttributesKeys = AppAttributesKeys String
derive instance newtypeAppAttributesKeys :: Newtype AppAttributesKeys _
derive instance repGenericAppAttributesKeys :: Generic AppAttributesKeys _
instance showAppAttributesKeys :: Show AppAttributesKeys where show = genericShow
instance decodeAppAttributesKeys :: Decode AppAttributesKeys where decode = genericDecode options
instance encodeAppAttributesKeys :: Encode AppAttributesKeys where encode = genericEncode options



newtype AppType = AppType String
derive instance newtypeAppType :: Newtype AppType _
derive instance repGenericAppType :: Generic AppType _
instance showAppType :: Show AppType where show = genericShow
instance decodeAppType :: Decode AppType where decode = genericDecode options
instance encodeAppType :: Encode AppType where encode = genericEncode options



newtype Apps = Apps (Array App)
derive instance newtypeApps :: Newtype Apps _
derive instance repGenericApps :: Generic Apps _
instance showApps :: Show Apps where show = genericShow
instance decodeApps :: Decode Apps where decode = genericDecode options
instance encodeApps :: Encode Apps where encode = genericEncode options



newtype Architecture = Architecture String
derive instance newtypeArchitecture :: Newtype Architecture _
derive instance repGenericArchitecture :: Generic Architecture _
instance showArchitecture :: Show Architecture where show = genericShow
instance decodeArchitecture :: Decode Architecture where decode = genericDecode options
instance encodeArchitecture :: Encode Architecture where encode = genericEncode options



newtype AssignInstanceRequest = AssignInstanceRequest 
  { "InstanceId" :: (String)
  , "LayerIds" :: (Strings)
  }
derive instance newtypeAssignInstanceRequest :: Newtype AssignInstanceRequest _
derive instance repGenericAssignInstanceRequest :: Generic AssignInstanceRequest _
instance showAssignInstanceRequest :: Show AssignInstanceRequest where show = genericShow
instance decodeAssignInstanceRequest :: Decode AssignInstanceRequest where decode = genericDecode options
instance encodeAssignInstanceRequest :: Encode AssignInstanceRequest where encode = genericEncode options

-- | Constructs AssignInstanceRequest from required parameters
newAssignInstanceRequest :: String -> Strings -> AssignInstanceRequest
newAssignInstanceRequest _InstanceId _LayerIds = AssignInstanceRequest { "InstanceId": _InstanceId, "LayerIds": _LayerIds }

-- | Constructs AssignInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssignInstanceRequest' :: String -> Strings -> ( { "InstanceId" :: (String) , "LayerIds" :: (Strings) } -> {"InstanceId" :: (String) , "LayerIds" :: (Strings) } ) -> AssignInstanceRequest
newAssignInstanceRequest' _InstanceId _LayerIds customize = (AssignInstanceRequest <<< customize) { "InstanceId": _InstanceId, "LayerIds": _LayerIds }



newtype AssignVolumeRequest = AssignVolumeRequest 
  { "VolumeId" :: (String)
  , "InstanceId" :: Maybe (String)
  }
derive instance newtypeAssignVolumeRequest :: Newtype AssignVolumeRequest _
derive instance repGenericAssignVolumeRequest :: Generic AssignVolumeRequest _
instance showAssignVolumeRequest :: Show AssignVolumeRequest where show = genericShow
instance decodeAssignVolumeRequest :: Decode AssignVolumeRequest where decode = genericDecode options
instance encodeAssignVolumeRequest :: Encode AssignVolumeRequest where encode = genericEncode options

-- | Constructs AssignVolumeRequest from required parameters
newAssignVolumeRequest :: String -> AssignVolumeRequest
newAssignVolumeRequest _VolumeId = AssignVolumeRequest { "VolumeId": _VolumeId, "InstanceId": Nothing }

-- | Constructs AssignVolumeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssignVolumeRequest' :: String -> ( { "VolumeId" :: (String) , "InstanceId" :: Maybe (String) } -> {"VolumeId" :: (String) , "InstanceId" :: Maybe (String) } ) -> AssignVolumeRequest
newAssignVolumeRequest' _VolumeId customize = (AssignVolumeRequest <<< customize) { "VolumeId": _VolumeId, "InstanceId": Nothing }



newtype AssociateElasticIpRequest = AssociateElasticIpRequest 
  { "ElasticIp" :: (String)
  , "InstanceId" :: Maybe (String)
  }
derive instance newtypeAssociateElasticIpRequest :: Newtype AssociateElasticIpRequest _
derive instance repGenericAssociateElasticIpRequest :: Generic AssociateElasticIpRequest _
instance showAssociateElasticIpRequest :: Show AssociateElasticIpRequest where show = genericShow
instance decodeAssociateElasticIpRequest :: Decode AssociateElasticIpRequest where decode = genericDecode options
instance encodeAssociateElasticIpRequest :: Encode AssociateElasticIpRequest where encode = genericEncode options

-- | Constructs AssociateElasticIpRequest from required parameters
newAssociateElasticIpRequest :: String -> AssociateElasticIpRequest
newAssociateElasticIpRequest _ElasticIp = AssociateElasticIpRequest { "ElasticIp": _ElasticIp, "InstanceId": Nothing }

-- | Constructs AssociateElasticIpRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateElasticIpRequest' :: String -> ( { "ElasticIp" :: (String) , "InstanceId" :: Maybe (String) } -> {"ElasticIp" :: (String) , "InstanceId" :: Maybe (String) } ) -> AssociateElasticIpRequest
newAssociateElasticIpRequest' _ElasticIp customize = (AssociateElasticIpRequest <<< customize) { "ElasticIp": _ElasticIp, "InstanceId": Nothing }



newtype AttachElasticLoadBalancerRequest = AttachElasticLoadBalancerRequest 
  { "ElasticLoadBalancerName" :: (String)
  , "LayerId" :: (String)
  }
derive instance newtypeAttachElasticLoadBalancerRequest :: Newtype AttachElasticLoadBalancerRequest _
derive instance repGenericAttachElasticLoadBalancerRequest :: Generic AttachElasticLoadBalancerRequest _
instance showAttachElasticLoadBalancerRequest :: Show AttachElasticLoadBalancerRequest where show = genericShow
instance decodeAttachElasticLoadBalancerRequest :: Decode AttachElasticLoadBalancerRequest where decode = genericDecode options
instance encodeAttachElasticLoadBalancerRequest :: Encode AttachElasticLoadBalancerRequest where encode = genericEncode options

-- | Constructs AttachElasticLoadBalancerRequest from required parameters
newAttachElasticLoadBalancerRequest :: String -> String -> AttachElasticLoadBalancerRequest
newAttachElasticLoadBalancerRequest _ElasticLoadBalancerName _LayerId = AttachElasticLoadBalancerRequest { "ElasticLoadBalancerName": _ElasticLoadBalancerName, "LayerId": _LayerId }

-- | Constructs AttachElasticLoadBalancerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachElasticLoadBalancerRequest' :: String -> String -> ( { "ElasticLoadBalancerName" :: (String) , "LayerId" :: (String) } -> {"ElasticLoadBalancerName" :: (String) , "LayerId" :: (String) } ) -> AttachElasticLoadBalancerRequest
newAttachElasticLoadBalancerRequest' _ElasticLoadBalancerName _LayerId customize = (AttachElasticLoadBalancerRequest <<< customize) { "ElasticLoadBalancerName": _ElasticLoadBalancerName, "LayerId": _LayerId }



-- | <p>Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks Stacks starts or stops load-based instances.</p>
newtype AutoScalingThresholds = AutoScalingThresholds 
  { "InstanceCount" :: Maybe (Int)
  , "ThresholdsWaitTime" :: Maybe (Minute)
  , "IgnoreMetricsTime" :: Maybe (Minute)
  , "CpuThreshold" :: Maybe (Number)
  , "MemoryThreshold" :: Maybe (Number)
  , "LoadThreshold" :: Maybe (Number)
  , "Alarms" :: Maybe (Strings)
  }
derive instance newtypeAutoScalingThresholds :: Newtype AutoScalingThresholds _
derive instance repGenericAutoScalingThresholds :: Generic AutoScalingThresholds _
instance showAutoScalingThresholds :: Show AutoScalingThresholds where show = genericShow
instance decodeAutoScalingThresholds :: Decode AutoScalingThresholds where decode = genericDecode options
instance encodeAutoScalingThresholds :: Encode AutoScalingThresholds where encode = genericEncode options

-- | Constructs AutoScalingThresholds from required parameters
newAutoScalingThresholds :: AutoScalingThresholds
newAutoScalingThresholds  = AutoScalingThresholds { "Alarms": Nothing, "CpuThreshold": Nothing, "IgnoreMetricsTime": Nothing, "InstanceCount": Nothing, "LoadThreshold": Nothing, "MemoryThreshold": Nothing, "ThresholdsWaitTime": Nothing }

-- | Constructs AutoScalingThresholds's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAutoScalingThresholds' :: ( { "InstanceCount" :: Maybe (Int) , "ThresholdsWaitTime" :: Maybe (Minute) , "IgnoreMetricsTime" :: Maybe (Minute) , "CpuThreshold" :: Maybe (Number) , "MemoryThreshold" :: Maybe (Number) , "LoadThreshold" :: Maybe (Number) , "Alarms" :: Maybe (Strings) } -> {"InstanceCount" :: Maybe (Int) , "ThresholdsWaitTime" :: Maybe (Minute) , "IgnoreMetricsTime" :: Maybe (Minute) , "CpuThreshold" :: Maybe (Number) , "MemoryThreshold" :: Maybe (Number) , "LoadThreshold" :: Maybe (Number) , "Alarms" :: Maybe (Strings) } ) -> AutoScalingThresholds
newAutoScalingThresholds'  customize = (AutoScalingThresholds <<< customize) { "Alarms": Nothing, "CpuThreshold": Nothing, "IgnoreMetricsTime": Nothing, "InstanceCount": Nothing, "LoadThreshold": Nothing, "MemoryThreshold": Nothing, "ThresholdsWaitTime": Nothing }



newtype AutoScalingType = AutoScalingType String
derive instance newtypeAutoScalingType :: Newtype AutoScalingType _
derive instance repGenericAutoScalingType :: Generic AutoScalingType _
instance showAutoScalingType :: Show AutoScalingType where show = genericShow
instance decodeAutoScalingType :: Decode AutoScalingType where decode = genericDecode options
instance encodeAutoScalingType :: Encode AutoScalingType where encode = genericEncode options



-- | <p>Describes a block device mapping. This data type maps directly to the Amazon EC2 <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html">BlockDeviceMapping</a> data type. </p>
newtype BlockDeviceMapping = BlockDeviceMapping 
  { "DeviceName" :: Maybe (String)
  , "NoDevice" :: Maybe (String)
  , "VirtualName" :: Maybe (String)
  , "Ebs" :: Maybe (EbsBlockDevice)
  }
derive instance newtypeBlockDeviceMapping :: Newtype BlockDeviceMapping _
derive instance repGenericBlockDeviceMapping :: Generic BlockDeviceMapping _
instance showBlockDeviceMapping :: Show BlockDeviceMapping where show = genericShow
instance decodeBlockDeviceMapping :: Decode BlockDeviceMapping where decode = genericDecode options
instance encodeBlockDeviceMapping :: Encode BlockDeviceMapping where encode = genericEncode options

-- | Constructs BlockDeviceMapping from required parameters
newBlockDeviceMapping :: BlockDeviceMapping
newBlockDeviceMapping  = BlockDeviceMapping { "DeviceName": Nothing, "Ebs": Nothing, "NoDevice": Nothing, "VirtualName": Nothing }

-- | Constructs BlockDeviceMapping's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBlockDeviceMapping' :: ( { "DeviceName" :: Maybe (String) , "NoDevice" :: Maybe (String) , "VirtualName" :: Maybe (String) , "Ebs" :: Maybe (EbsBlockDevice) } -> {"DeviceName" :: Maybe (String) , "NoDevice" :: Maybe (String) , "VirtualName" :: Maybe (String) , "Ebs" :: Maybe (EbsBlockDevice) } ) -> BlockDeviceMapping
newBlockDeviceMapping'  customize = (BlockDeviceMapping <<< customize) { "DeviceName": Nothing, "Ebs": Nothing, "NoDevice": Nothing, "VirtualName": Nothing }



newtype BlockDeviceMappings = BlockDeviceMappings (Array BlockDeviceMapping)
derive instance newtypeBlockDeviceMappings :: Newtype BlockDeviceMappings _
derive instance repGenericBlockDeviceMappings :: Generic BlockDeviceMappings _
instance showBlockDeviceMappings :: Show BlockDeviceMappings where show = genericShow
instance decodeBlockDeviceMappings :: Decode BlockDeviceMappings where decode = genericDecode options
instance encodeBlockDeviceMappings :: Encode BlockDeviceMappings where encode = genericEncode options



-- | <p>Describes the Chef configuration.</p>
newtype ChefConfiguration = ChefConfiguration 
  { "ManageBerkshelf" :: Maybe (Boolean)
  , "BerkshelfVersion" :: Maybe (String)
  }
derive instance newtypeChefConfiguration :: Newtype ChefConfiguration _
derive instance repGenericChefConfiguration :: Generic ChefConfiguration _
instance showChefConfiguration :: Show ChefConfiguration where show = genericShow
instance decodeChefConfiguration :: Decode ChefConfiguration where decode = genericDecode options
instance encodeChefConfiguration :: Encode ChefConfiguration where encode = genericEncode options

-- | Constructs ChefConfiguration from required parameters
newChefConfiguration :: ChefConfiguration
newChefConfiguration  = ChefConfiguration { "BerkshelfVersion": Nothing, "ManageBerkshelf": Nothing }

-- | Constructs ChefConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChefConfiguration' :: ( { "ManageBerkshelf" :: Maybe (Boolean) , "BerkshelfVersion" :: Maybe (String) } -> {"ManageBerkshelf" :: Maybe (Boolean) , "BerkshelfVersion" :: Maybe (String) } ) -> ChefConfiguration
newChefConfiguration'  customize = (ChefConfiguration <<< customize) { "BerkshelfVersion": Nothing, "ManageBerkshelf": Nothing }



newtype CloneStackRequest = CloneStackRequest 
  { "SourceStackId" :: (String)
  , "Name" :: Maybe (String)
  , "Region" :: Maybe (String)
  , "VpcId" :: Maybe (String)
  , "Attributes" :: Maybe (StackAttributes)
  , "ServiceRoleArn" :: (String)
  , "DefaultInstanceProfileArn" :: Maybe (String)
  , "DefaultOs" :: Maybe (String)
  , "HostnameTheme" :: Maybe (String)
  , "DefaultAvailabilityZone" :: Maybe (String)
  , "DefaultSubnetId" :: Maybe (String)
  , "CustomJson" :: Maybe (String)
  , "ConfigurationManager" :: Maybe (StackConfigurationManager)
  , "ChefConfiguration" :: Maybe (ChefConfiguration)
  , "UseCustomCookbooks" :: Maybe (Boolean)
  , "UseOpsworksSecurityGroups" :: Maybe (Boolean)
  , "CustomCookbooksSource" :: Maybe (Source)
  , "DefaultSshKeyName" :: Maybe (String)
  , "ClonePermissions" :: Maybe (Boolean)
  , "CloneAppIds" :: Maybe (Strings)
  , "DefaultRootDeviceType" :: Maybe (RootDeviceType)
  , "AgentVersion" :: Maybe (String)
  }
derive instance newtypeCloneStackRequest :: Newtype CloneStackRequest _
derive instance repGenericCloneStackRequest :: Generic CloneStackRequest _
instance showCloneStackRequest :: Show CloneStackRequest where show = genericShow
instance decodeCloneStackRequest :: Decode CloneStackRequest where decode = genericDecode options
instance encodeCloneStackRequest :: Encode CloneStackRequest where encode = genericEncode options

-- | Constructs CloneStackRequest from required parameters
newCloneStackRequest :: String -> String -> CloneStackRequest
newCloneStackRequest _ServiceRoleArn _SourceStackId = CloneStackRequest { "ServiceRoleArn": _ServiceRoleArn, "SourceStackId": _SourceStackId, "AgentVersion": Nothing, "Attributes": Nothing, "ChefConfiguration": Nothing, "CloneAppIds": Nothing, "ClonePermissions": Nothing, "ConfigurationManager": Nothing, "CustomCookbooksSource": Nothing, "CustomJson": Nothing, "DefaultAvailabilityZone": Nothing, "DefaultInstanceProfileArn": Nothing, "DefaultOs": Nothing, "DefaultRootDeviceType": Nothing, "DefaultSshKeyName": Nothing, "DefaultSubnetId": Nothing, "HostnameTheme": Nothing, "Name": Nothing, "Region": Nothing, "UseCustomCookbooks": Nothing, "UseOpsworksSecurityGroups": Nothing, "VpcId": Nothing }

-- | Constructs CloneStackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloneStackRequest' :: String -> String -> ( { "SourceStackId" :: (String) , "Name" :: Maybe (String) , "Region" :: Maybe (String) , "VpcId" :: Maybe (String) , "Attributes" :: Maybe (StackAttributes) , "ServiceRoleArn" :: (String) , "DefaultInstanceProfileArn" :: Maybe (String) , "DefaultOs" :: Maybe (String) , "HostnameTheme" :: Maybe (String) , "DefaultAvailabilityZone" :: Maybe (String) , "DefaultSubnetId" :: Maybe (String) , "CustomJson" :: Maybe (String) , "ConfigurationManager" :: Maybe (StackConfigurationManager) , "ChefConfiguration" :: Maybe (ChefConfiguration) , "UseCustomCookbooks" :: Maybe (Boolean) , "UseOpsworksSecurityGroups" :: Maybe (Boolean) , "CustomCookbooksSource" :: Maybe (Source) , "DefaultSshKeyName" :: Maybe (String) , "ClonePermissions" :: Maybe (Boolean) , "CloneAppIds" :: Maybe (Strings) , "DefaultRootDeviceType" :: Maybe (RootDeviceType) , "AgentVersion" :: Maybe (String) } -> {"SourceStackId" :: (String) , "Name" :: Maybe (String) , "Region" :: Maybe (String) , "VpcId" :: Maybe (String) , "Attributes" :: Maybe (StackAttributes) , "ServiceRoleArn" :: (String) , "DefaultInstanceProfileArn" :: Maybe (String) , "DefaultOs" :: Maybe (String) , "HostnameTheme" :: Maybe (String) , "DefaultAvailabilityZone" :: Maybe (String) , "DefaultSubnetId" :: Maybe (String) , "CustomJson" :: Maybe (String) , "ConfigurationManager" :: Maybe (StackConfigurationManager) , "ChefConfiguration" :: Maybe (ChefConfiguration) , "UseCustomCookbooks" :: Maybe (Boolean) , "UseOpsworksSecurityGroups" :: Maybe (Boolean) , "CustomCookbooksSource" :: Maybe (Source) , "DefaultSshKeyName" :: Maybe (String) , "ClonePermissions" :: Maybe (Boolean) , "CloneAppIds" :: Maybe (Strings) , "DefaultRootDeviceType" :: Maybe (RootDeviceType) , "AgentVersion" :: Maybe (String) } ) -> CloneStackRequest
newCloneStackRequest' _ServiceRoleArn _SourceStackId customize = (CloneStackRequest <<< customize) { "ServiceRoleArn": _ServiceRoleArn, "SourceStackId": _SourceStackId, "AgentVersion": Nothing, "Attributes": Nothing, "ChefConfiguration": Nothing, "CloneAppIds": Nothing, "ClonePermissions": Nothing, "ConfigurationManager": Nothing, "CustomCookbooksSource": Nothing, "CustomJson": Nothing, "DefaultAvailabilityZone": Nothing, "DefaultInstanceProfileArn": Nothing, "DefaultOs": Nothing, "DefaultRootDeviceType": Nothing, "DefaultSshKeyName": Nothing, "DefaultSubnetId": Nothing, "HostnameTheme": Nothing, "Name": Nothing, "Region": Nothing, "UseCustomCookbooks": Nothing, "UseOpsworksSecurityGroups": Nothing, "VpcId": Nothing }



-- | <p>Contains the response to a <code>CloneStack</code> request.</p>
newtype CloneStackResult = CloneStackResult 
  { "StackId" :: Maybe (String)
  }
derive instance newtypeCloneStackResult :: Newtype CloneStackResult _
derive instance repGenericCloneStackResult :: Generic CloneStackResult _
instance showCloneStackResult :: Show CloneStackResult where show = genericShow
instance decodeCloneStackResult :: Decode CloneStackResult where decode = genericDecode options
instance encodeCloneStackResult :: Encode CloneStackResult where encode = genericEncode options

-- | Constructs CloneStackResult from required parameters
newCloneStackResult :: CloneStackResult
newCloneStackResult  = CloneStackResult { "StackId": Nothing }

-- | Constructs CloneStackResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloneStackResult' :: ( { "StackId" :: Maybe (String) } -> {"StackId" :: Maybe (String) } ) -> CloneStackResult
newCloneStackResult'  customize = (CloneStackResult <<< customize) { "StackId": Nothing }



-- | <p>Describes the Amazon CloudWatch logs configuration for a layer.</p>
newtype CloudWatchLogsConfiguration = CloudWatchLogsConfiguration 
  { "Enabled" :: Maybe (Boolean)
  , "LogStreams" :: Maybe (CloudWatchLogsLogStreams)
  }
derive instance newtypeCloudWatchLogsConfiguration :: Newtype CloudWatchLogsConfiguration _
derive instance repGenericCloudWatchLogsConfiguration :: Generic CloudWatchLogsConfiguration _
instance showCloudWatchLogsConfiguration :: Show CloudWatchLogsConfiguration where show = genericShow
instance decodeCloudWatchLogsConfiguration :: Decode CloudWatchLogsConfiguration where decode = genericDecode options
instance encodeCloudWatchLogsConfiguration :: Encode CloudWatchLogsConfiguration where encode = genericEncode options

-- | Constructs CloudWatchLogsConfiguration from required parameters
newCloudWatchLogsConfiguration :: CloudWatchLogsConfiguration
newCloudWatchLogsConfiguration  = CloudWatchLogsConfiguration { "Enabled": Nothing, "LogStreams": Nothing }

-- | Constructs CloudWatchLogsConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudWatchLogsConfiguration' :: ( { "Enabled" :: Maybe (Boolean) , "LogStreams" :: Maybe (CloudWatchLogsLogStreams) } -> {"Enabled" :: Maybe (Boolean) , "LogStreams" :: Maybe (CloudWatchLogsLogStreams) } ) -> CloudWatchLogsConfiguration
newCloudWatchLogsConfiguration'  customize = (CloudWatchLogsConfiguration <<< customize) { "Enabled": Nothing, "LogStreams": Nothing }



-- | <p>Specifies the encoding of the log file so that the file can be read correctly. The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>
newtype CloudWatchLogsEncoding = CloudWatchLogsEncoding String
derive instance newtypeCloudWatchLogsEncoding :: Newtype CloudWatchLogsEncoding _
derive instance repGenericCloudWatchLogsEncoding :: Generic CloudWatchLogsEncoding _
instance showCloudWatchLogsEncoding :: Show CloudWatchLogsEncoding where show = genericShow
instance decodeCloudWatchLogsEncoding :: Decode CloudWatchLogsEncoding where decode = genericDecode options
instance encodeCloudWatchLogsEncoding :: Encode CloudWatchLogsEncoding where encode = genericEncode options



-- | <p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. It's only used if there is no state persisted for that log stream.</p>
newtype CloudWatchLogsInitialPosition = CloudWatchLogsInitialPosition String
derive instance newtypeCloudWatchLogsInitialPosition :: Newtype CloudWatchLogsInitialPosition _
derive instance repGenericCloudWatchLogsInitialPosition :: Generic CloudWatchLogsInitialPosition _
instance showCloudWatchLogsInitialPosition :: Show CloudWatchLogsInitialPosition where show = genericShow
instance decodeCloudWatchLogsInitialPosition :: Decode CloudWatchLogsInitialPosition where decode = genericDecode options
instance encodeCloudWatchLogsInitialPosition :: Encode CloudWatchLogsInitialPosition where encode = genericEncode options



-- | <p>Describes the Amazon CloudWatch logs configuration for a layer. For detailed information about members of this data type, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>
newtype CloudWatchLogsLogStream = CloudWatchLogsLogStream 
  { "LogGroupName" :: Maybe (String)
  , "DatetimeFormat" :: Maybe (String)
  , "TimeZone" :: Maybe (CloudWatchLogsTimeZone)
  , "File" :: Maybe (String)
  , "FileFingerprintLines" :: Maybe (String)
  , "MultiLineStartPattern" :: Maybe (String)
  , "InitialPosition" :: Maybe (CloudWatchLogsInitialPosition)
  , "Encoding" :: Maybe (CloudWatchLogsEncoding)
  , "BufferDuration" :: Maybe (Int)
  , "BatchCount" :: Maybe (Int)
  , "BatchSize" :: Maybe (Int)
  }
derive instance newtypeCloudWatchLogsLogStream :: Newtype CloudWatchLogsLogStream _
derive instance repGenericCloudWatchLogsLogStream :: Generic CloudWatchLogsLogStream _
instance showCloudWatchLogsLogStream :: Show CloudWatchLogsLogStream where show = genericShow
instance decodeCloudWatchLogsLogStream :: Decode CloudWatchLogsLogStream where decode = genericDecode options
instance encodeCloudWatchLogsLogStream :: Encode CloudWatchLogsLogStream where encode = genericEncode options

-- | Constructs CloudWatchLogsLogStream from required parameters
newCloudWatchLogsLogStream :: CloudWatchLogsLogStream
newCloudWatchLogsLogStream  = CloudWatchLogsLogStream { "BatchCount": Nothing, "BatchSize": Nothing, "BufferDuration": Nothing, "DatetimeFormat": Nothing, "Encoding": Nothing, "File": Nothing, "FileFingerprintLines": Nothing, "InitialPosition": Nothing, "LogGroupName": Nothing, "MultiLineStartPattern": Nothing, "TimeZone": Nothing }

-- | Constructs CloudWatchLogsLogStream's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudWatchLogsLogStream' :: ( { "LogGroupName" :: Maybe (String) , "DatetimeFormat" :: Maybe (String) , "TimeZone" :: Maybe (CloudWatchLogsTimeZone) , "File" :: Maybe (String) , "FileFingerprintLines" :: Maybe (String) , "MultiLineStartPattern" :: Maybe (String) , "InitialPosition" :: Maybe (CloudWatchLogsInitialPosition) , "Encoding" :: Maybe (CloudWatchLogsEncoding) , "BufferDuration" :: Maybe (Int) , "BatchCount" :: Maybe (Int) , "BatchSize" :: Maybe (Int) } -> {"LogGroupName" :: Maybe (String) , "DatetimeFormat" :: Maybe (String) , "TimeZone" :: Maybe (CloudWatchLogsTimeZone) , "File" :: Maybe (String) , "FileFingerprintLines" :: Maybe (String) , "MultiLineStartPattern" :: Maybe (String) , "InitialPosition" :: Maybe (CloudWatchLogsInitialPosition) , "Encoding" :: Maybe (CloudWatchLogsEncoding) , "BufferDuration" :: Maybe (Int) , "BatchCount" :: Maybe (Int) , "BatchSize" :: Maybe (Int) } ) -> CloudWatchLogsLogStream
newCloudWatchLogsLogStream'  customize = (CloudWatchLogsLogStream <<< customize) { "BatchCount": Nothing, "BatchSize": Nothing, "BufferDuration": Nothing, "DatetimeFormat": Nothing, "Encoding": Nothing, "File": Nothing, "FileFingerprintLines": Nothing, "InitialPosition": Nothing, "LogGroupName": Nothing, "MultiLineStartPattern": Nothing, "TimeZone": Nothing }



-- | <p>Describes the Amazon CloudWatch logs configuration for a layer.</p>
newtype CloudWatchLogsLogStreams = CloudWatchLogsLogStreams (Array CloudWatchLogsLogStream)
derive instance newtypeCloudWatchLogsLogStreams :: Newtype CloudWatchLogsLogStreams _
derive instance repGenericCloudWatchLogsLogStreams :: Generic CloudWatchLogsLogStreams _
instance showCloudWatchLogsLogStreams :: Show CloudWatchLogsLogStreams where show = genericShow
instance decodeCloudWatchLogsLogStreams :: Decode CloudWatchLogsLogStreams where decode = genericDecode options
instance encodeCloudWatchLogsLogStreams :: Encode CloudWatchLogsLogStreams where encode = genericEncode options



-- | <p>The preferred time zone for logs streamed to CloudWatch Logs. Valid values are <code>LOCAL</code> and <code>UTC</code>, for Coordinated Universal Time.</p>
newtype CloudWatchLogsTimeZone = CloudWatchLogsTimeZone String
derive instance newtypeCloudWatchLogsTimeZone :: Newtype CloudWatchLogsTimeZone _
derive instance repGenericCloudWatchLogsTimeZone :: Generic CloudWatchLogsTimeZone _
instance showCloudWatchLogsTimeZone :: Show CloudWatchLogsTimeZone where show = genericShow
instance decodeCloudWatchLogsTimeZone :: Decode CloudWatchLogsTimeZone where decode = genericDecode options
instance encodeCloudWatchLogsTimeZone :: Encode CloudWatchLogsTimeZone where encode = genericEncode options



-- | <p>Describes a command.</p>
newtype Command = Command 
  { "CommandId" :: Maybe (String)
  , "InstanceId" :: Maybe (String)
  , "DeploymentId" :: Maybe (String)
  , "CreatedAt" :: Maybe (DateTime)
  , "AcknowledgedAt" :: Maybe (DateTime)
  , "CompletedAt" :: Maybe (DateTime)
  , "Status" :: Maybe (String)
  , "ExitCode" :: Maybe (Int)
  , "LogUrl" :: Maybe (String)
  , "Type" :: Maybe (String)
  }
derive instance newtypeCommand :: Newtype Command _
derive instance repGenericCommand :: Generic Command _
instance showCommand :: Show Command where show = genericShow
instance decodeCommand :: Decode Command where decode = genericDecode options
instance encodeCommand :: Encode Command where encode = genericEncode options

-- | Constructs Command from required parameters
newCommand :: Command
newCommand  = Command { "AcknowledgedAt": Nothing, "CommandId": Nothing, "CompletedAt": Nothing, "CreatedAt": Nothing, "DeploymentId": Nothing, "ExitCode": Nothing, "InstanceId": Nothing, "LogUrl": Nothing, "Status": Nothing, "Type": Nothing }

-- | Constructs Command's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCommand' :: ( { "CommandId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "DeploymentId" :: Maybe (String) , "CreatedAt" :: Maybe (DateTime) , "AcknowledgedAt" :: Maybe (DateTime) , "CompletedAt" :: Maybe (DateTime) , "Status" :: Maybe (String) , "ExitCode" :: Maybe (Int) , "LogUrl" :: Maybe (String) , "Type" :: Maybe (String) } -> {"CommandId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "DeploymentId" :: Maybe (String) , "CreatedAt" :: Maybe (DateTime) , "AcknowledgedAt" :: Maybe (DateTime) , "CompletedAt" :: Maybe (DateTime) , "Status" :: Maybe (String) , "ExitCode" :: Maybe (Int) , "LogUrl" :: Maybe (String) , "Type" :: Maybe (String) } ) -> Command
newCommand'  customize = (Command <<< customize) { "AcknowledgedAt": Nothing, "CommandId": Nothing, "CompletedAt": Nothing, "CreatedAt": Nothing, "DeploymentId": Nothing, "ExitCode": Nothing, "InstanceId": Nothing, "LogUrl": Nothing, "Status": Nothing, "Type": Nothing }



newtype Commands = Commands (Array Command)
derive instance newtypeCommands :: Newtype Commands _
derive instance repGenericCommands :: Generic Commands _
instance showCommands :: Show Commands where show = genericShow
instance decodeCommands :: Decode Commands where decode = genericDecode options
instance encodeCommands :: Encode Commands where encode = genericEncode options



newtype CreateAppRequest = CreateAppRequest 
  { "StackId" :: (String)
  , "Shortname" :: Maybe (String)
  , "Name" :: (String)
  , "Description" :: Maybe (String)
  , "DataSources" :: Maybe (DataSources)
  , "Type" :: (AppType)
  , "AppSource" :: Maybe (Source)
  , "Domains" :: Maybe (Strings)
  , "EnableSsl" :: Maybe (Boolean)
  , "SslConfiguration" :: Maybe (SslConfiguration)
  , "Attributes" :: Maybe (AppAttributes)
  , "Environment" :: Maybe (EnvironmentVariables)
  }
derive instance newtypeCreateAppRequest :: Newtype CreateAppRequest _
derive instance repGenericCreateAppRequest :: Generic CreateAppRequest _
instance showCreateAppRequest :: Show CreateAppRequest where show = genericShow
instance decodeCreateAppRequest :: Decode CreateAppRequest where decode = genericDecode options
instance encodeCreateAppRequest :: Encode CreateAppRequest where encode = genericEncode options

-- | Constructs CreateAppRequest from required parameters
newCreateAppRequest :: String -> String -> AppType -> CreateAppRequest
newCreateAppRequest _Name _StackId _Type = CreateAppRequest { "Name": _Name, "StackId": _StackId, "Type": _Type, "AppSource": Nothing, "Attributes": Nothing, "DataSources": Nothing, "Description": Nothing, "Domains": Nothing, "EnableSsl": Nothing, "Environment": Nothing, "Shortname": Nothing, "SslConfiguration": Nothing }

-- | Constructs CreateAppRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAppRequest' :: String -> String -> AppType -> ( { "StackId" :: (String) , "Shortname" :: Maybe (String) , "Name" :: (String) , "Description" :: Maybe (String) , "DataSources" :: Maybe (DataSources) , "Type" :: (AppType) , "AppSource" :: Maybe (Source) , "Domains" :: Maybe (Strings) , "EnableSsl" :: Maybe (Boolean) , "SslConfiguration" :: Maybe (SslConfiguration) , "Attributes" :: Maybe (AppAttributes) , "Environment" :: Maybe (EnvironmentVariables) } -> {"StackId" :: (String) , "Shortname" :: Maybe (String) , "Name" :: (String) , "Description" :: Maybe (String) , "DataSources" :: Maybe (DataSources) , "Type" :: (AppType) , "AppSource" :: Maybe (Source) , "Domains" :: Maybe (Strings) , "EnableSsl" :: Maybe (Boolean) , "SslConfiguration" :: Maybe (SslConfiguration) , "Attributes" :: Maybe (AppAttributes) , "Environment" :: Maybe (EnvironmentVariables) } ) -> CreateAppRequest
newCreateAppRequest' _Name _StackId _Type customize = (CreateAppRequest <<< customize) { "Name": _Name, "StackId": _StackId, "Type": _Type, "AppSource": Nothing, "Attributes": Nothing, "DataSources": Nothing, "Description": Nothing, "Domains": Nothing, "EnableSsl": Nothing, "Environment": Nothing, "Shortname": Nothing, "SslConfiguration": Nothing }



-- | <p>Contains the response to a <code>CreateApp</code> request.</p>
newtype CreateAppResult = CreateAppResult 
  { "AppId" :: Maybe (String)
  }
derive instance newtypeCreateAppResult :: Newtype CreateAppResult _
derive instance repGenericCreateAppResult :: Generic CreateAppResult _
instance showCreateAppResult :: Show CreateAppResult where show = genericShow
instance decodeCreateAppResult :: Decode CreateAppResult where decode = genericDecode options
instance encodeCreateAppResult :: Encode CreateAppResult where encode = genericEncode options

-- | Constructs CreateAppResult from required parameters
newCreateAppResult :: CreateAppResult
newCreateAppResult  = CreateAppResult { "AppId": Nothing }

-- | Constructs CreateAppResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAppResult' :: ( { "AppId" :: Maybe (String) } -> {"AppId" :: Maybe (String) } ) -> CreateAppResult
newCreateAppResult'  customize = (CreateAppResult <<< customize) { "AppId": Nothing }



newtype CreateDeploymentRequest = CreateDeploymentRequest 
  { "StackId" :: (String)
  , "AppId" :: Maybe (String)
  , "InstanceIds" :: Maybe (Strings)
  , "LayerIds" :: Maybe (Strings)
  , "Command" :: (DeploymentCommand)
  , "Comment" :: Maybe (String)
  , "CustomJson" :: Maybe (String)
  }
derive instance newtypeCreateDeploymentRequest :: Newtype CreateDeploymentRequest _
derive instance repGenericCreateDeploymentRequest :: Generic CreateDeploymentRequest _
instance showCreateDeploymentRequest :: Show CreateDeploymentRequest where show = genericShow
instance decodeCreateDeploymentRequest :: Decode CreateDeploymentRequest where decode = genericDecode options
instance encodeCreateDeploymentRequest :: Encode CreateDeploymentRequest where encode = genericEncode options

-- | Constructs CreateDeploymentRequest from required parameters
newCreateDeploymentRequest :: DeploymentCommand -> String -> CreateDeploymentRequest
newCreateDeploymentRequest _Command _StackId = CreateDeploymentRequest { "Command": _Command, "StackId": _StackId, "AppId": Nothing, "Comment": Nothing, "CustomJson": Nothing, "InstanceIds": Nothing, "LayerIds": Nothing }

-- | Constructs CreateDeploymentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDeploymentRequest' :: DeploymentCommand -> String -> ( { "StackId" :: (String) , "AppId" :: Maybe (String) , "InstanceIds" :: Maybe (Strings) , "LayerIds" :: Maybe (Strings) , "Command" :: (DeploymentCommand) , "Comment" :: Maybe (String) , "CustomJson" :: Maybe (String) } -> {"StackId" :: (String) , "AppId" :: Maybe (String) , "InstanceIds" :: Maybe (Strings) , "LayerIds" :: Maybe (Strings) , "Command" :: (DeploymentCommand) , "Comment" :: Maybe (String) , "CustomJson" :: Maybe (String) } ) -> CreateDeploymentRequest
newCreateDeploymentRequest' _Command _StackId customize = (CreateDeploymentRequest <<< customize) { "Command": _Command, "StackId": _StackId, "AppId": Nothing, "Comment": Nothing, "CustomJson": Nothing, "InstanceIds": Nothing, "LayerIds": Nothing }



-- | <p>Contains the response to a <code>CreateDeployment</code> request.</p>
newtype CreateDeploymentResult = CreateDeploymentResult 
  { "DeploymentId" :: Maybe (String)
  }
derive instance newtypeCreateDeploymentResult :: Newtype CreateDeploymentResult _
derive instance repGenericCreateDeploymentResult :: Generic CreateDeploymentResult _
instance showCreateDeploymentResult :: Show CreateDeploymentResult where show = genericShow
instance decodeCreateDeploymentResult :: Decode CreateDeploymentResult where decode = genericDecode options
instance encodeCreateDeploymentResult :: Encode CreateDeploymentResult where encode = genericEncode options

-- | Constructs CreateDeploymentResult from required parameters
newCreateDeploymentResult :: CreateDeploymentResult
newCreateDeploymentResult  = CreateDeploymentResult { "DeploymentId": Nothing }

-- | Constructs CreateDeploymentResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDeploymentResult' :: ( { "DeploymentId" :: Maybe (String) } -> {"DeploymentId" :: Maybe (String) } ) -> CreateDeploymentResult
newCreateDeploymentResult'  customize = (CreateDeploymentResult <<< customize) { "DeploymentId": Nothing }



newtype CreateInstanceRequest = CreateInstanceRequest 
  { "StackId" :: (String)
  , "LayerIds" :: (Strings)
  , "InstanceType" :: (String)
  , "AutoScalingType" :: Maybe (AutoScalingType)
  , "Hostname" :: Maybe (String)
  , "Os" :: Maybe (String)
  , "AmiId" :: Maybe (String)
  , "SshKeyName" :: Maybe (String)
  , "AvailabilityZone" :: Maybe (String)
  , "VirtualizationType" :: Maybe (String)
  , "SubnetId" :: Maybe (String)
  , "Architecture" :: Maybe (Architecture)
  , "RootDeviceType" :: Maybe (RootDeviceType)
  , "BlockDeviceMappings" :: Maybe (BlockDeviceMappings)
  , "InstallUpdatesOnBoot" :: Maybe (Boolean)
  , "EbsOptimized" :: Maybe (Boolean)
  , "AgentVersion" :: Maybe (String)
  , "Tenancy" :: Maybe (String)
  }
derive instance newtypeCreateInstanceRequest :: Newtype CreateInstanceRequest _
derive instance repGenericCreateInstanceRequest :: Generic CreateInstanceRequest _
instance showCreateInstanceRequest :: Show CreateInstanceRequest where show = genericShow
instance decodeCreateInstanceRequest :: Decode CreateInstanceRequest where decode = genericDecode options
instance encodeCreateInstanceRequest :: Encode CreateInstanceRequest where encode = genericEncode options

-- | Constructs CreateInstanceRequest from required parameters
newCreateInstanceRequest :: String -> Strings -> String -> CreateInstanceRequest
newCreateInstanceRequest _InstanceType _LayerIds _StackId = CreateInstanceRequest { "InstanceType": _InstanceType, "LayerIds": _LayerIds, "StackId": _StackId, "AgentVersion": Nothing, "AmiId": Nothing, "Architecture": Nothing, "AutoScalingType": Nothing, "AvailabilityZone": Nothing, "BlockDeviceMappings": Nothing, "EbsOptimized": Nothing, "Hostname": Nothing, "InstallUpdatesOnBoot": Nothing, "Os": Nothing, "RootDeviceType": Nothing, "SshKeyName": Nothing, "SubnetId": Nothing, "Tenancy": Nothing, "VirtualizationType": Nothing }

-- | Constructs CreateInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateInstanceRequest' :: String -> Strings -> String -> ( { "StackId" :: (String) , "LayerIds" :: (Strings) , "InstanceType" :: (String) , "AutoScalingType" :: Maybe (AutoScalingType) , "Hostname" :: Maybe (String) , "Os" :: Maybe (String) , "AmiId" :: Maybe (String) , "SshKeyName" :: Maybe (String) , "AvailabilityZone" :: Maybe (String) , "VirtualizationType" :: Maybe (String) , "SubnetId" :: Maybe (String) , "Architecture" :: Maybe (Architecture) , "RootDeviceType" :: Maybe (RootDeviceType) , "BlockDeviceMappings" :: Maybe (BlockDeviceMappings) , "InstallUpdatesOnBoot" :: Maybe (Boolean) , "EbsOptimized" :: Maybe (Boolean) , "AgentVersion" :: Maybe (String) , "Tenancy" :: Maybe (String) } -> {"StackId" :: (String) , "LayerIds" :: (Strings) , "InstanceType" :: (String) , "AutoScalingType" :: Maybe (AutoScalingType) , "Hostname" :: Maybe (String) , "Os" :: Maybe (String) , "AmiId" :: Maybe (String) , "SshKeyName" :: Maybe (String) , "AvailabilityZone" :: Maybe (String) , "VirtualizationType" :: Maybe (String) , "SubnetId" :: Maybe (String) , "Architecture" :: Maybe (Architecture) , "RootDeviceType" :: Maybe (RootDeviceType) , "BlockDeviceMappings" :: Maybe (BlockDeviceMappings) , "InstallUpdatesOnBoot" :: Maybe (Boolean) , "EbsOptimized" :: Maybe (Boolean) , "AgentVersion" :: Maybe (String) , "Tenancy" :: Maybe (String) } ) -> CreateInstanceRequest
newCreateInstanceRequest' _InstanceType _LayerIds _StackId customize = (CreateInstanceRequest <<< customize) { "InstanceType": _InstanceType, "LayerIds": _LayerIds, "StackId": _StackId, "AgentVersion": Nothing, "AmiId": Nothing, "Architecture": Nothing, "AutoScalingType": Nothing, "AvailabilityZone": Nothing, "BlockDeviceMappings": Nothing, "EbsOptimized": Nothing, "Hostname": Nothing, "InstallUpdatesOnBoot": Nothing, "Os": Nothing, "RootDeviceType": Nothing, "SshKeyName": Nothing, "SubnetId": Nothing, "Tenancy": Nothing, "VirtualizationType": Nothing }



-- | <p>Contains the response to a <code>CreateInstance</code> request.</p>
newtype CreateInstanceResult = CreateInstanceResult 
  { "InstanceId" :: Maybe (String)
  }
derive instance newtypeCreateInstanceResult :: Newtype CreateInstanceResult _
derive instance repGenericCreateInstanceResult :: Generic CreateInstanceResult _
instance showCreateInstanceResult :: Show CreateInstanceResult where show = genericShow
instance decodeCreateInstanceResult :: Decode CreateInstanceResult where decode = genericDecode options
instance encodeCreateInstanceResult :: Encode CreateInstanceResult where encode = genericEncode options

-- | Constructs CreateInstanceResult from required parameters
newCreateInstanceResult :: CreateInstanceResult
newCreateInstanceResult  = CreateInstanceResult { "InstanceId": Nothing }

-- | Constructs CreateInstanceResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateInstanceResult' :: ( { "InstanceId" :: Maybe (String) } -> {"InstanceId" :: Maybe (String) } ) -> CreateInstanceResult
newCreateInstanceResult'  customize = (CreateInstanceResult <<< customize) { "InstanceId": Nothing }



newtype CreateLayerRequest = CreateLayerRequest 
  { "StackId" :: (String)
  , "Type" :: (LayerType)
  , "Name" :: (String)
  , "Shortname" :: (String)
  , "Attributes" :: Maybe (LayerAttributes)
  , "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration)
  , "CustomInstanceProfileArn" :: Maybe (String)
  , "CustomJson" :: Maybe (String)
  , "CustomSecurityGroupIds" :: Maybe (Strings)
  , "Packages" :: Maybe (Strings)
  , "VolumeConfigurations" :: Maybe (VolumeConfigurations)
  , "EnableAutoHealing" :: Maybe (Boolean)
  , "AutoAssignElasticIps" :: Maybe (Boolean)
  , "AutoAssignPublicIps" :: Maybe (Boolean)
  , "CustomRecipes" :: Maybe (Recipes)
  , "InstallUpdatesOnBoot" :: Maybe (Boolean)
  , "UseEbsOptimizedInstances" :: Maybe (Boolean)
  , "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration)
  }
derive instance newtypeCreateLayerRequest :: Newtype CreateLayerRequest _
derive instance repGenericCreateLayerRequest :: Generic CreateLayerRequest _
instance showCreateLayerRequest :: Show CreateLayerRequest where show = genericShow
instance decodeCreateLayerRequest :: Decode CreateLayerRequest where decode = genericDecode options
instance encodeCreateLayerRequest :: Encode CreateLayerRequest where encode = genericEncode options

-- | Constructs CreateLayerRequest from required parameters
newCreateLayerRequest :: String -> String -> String -> LayerType -> CreateLayerRequest
newCreateLayerRequest _Name _Shortname _StackId _Type = CreateLayerRequest { "Name": _Name, "Shortname": _Shortname, "StackId": _StackId, "Type": _Type, "Attributes": Nothing, "AutoAssignElasticIps": Nothing, "AutoAssignPublicIps": Nothing, "CloudWatchLogsConfiguration": Nothing, "CustomInstanceProfileArn": Nothing, "CustomJson": Nothing, "CustomRecipes": Nothing, "CustomSecurityGroupIds": Nothing, "EnableAutoHealing": Nothing, "InstallUpdatesOnBoot": Nothing, "LifecycleEventConfiguration": Nothing, "Packages": Nothing, "UseEbsOptimizedInstances": Nothing, "VolumeConfigurations": Nothing }

-- | Constructs CreateLayerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateLayerRequest' :: String -> String -> String -> LayerType -> ( { "StackId" :: (String) , "Type" :: (LayerType) , "Name" :: (String) , "Shortname" :: (String) , "Attributes" :: Maybe (LayerAttributes) , "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration) , "CustomInstanceProfileArn" :: Maybe (String) , "CustomJson" :: Maybe (String) , "CustomSecurityGroupIds" :: Maybe (Strings) , "Packages" :: Maybe (Strings) , "VolumeConfigurations" :: Maybe (VolumeConfigurations) , "EnableAutoHealing" :: Maybe (Boolean) , "AutoAssignElasticIps" :: Maybe (Boolean) , "AutoAssignPublicIps" :: Maybe (Boolean) , "CustomRecipes" :: Maybe (Recipes) , "InstallUpdatesOnBoot" :: Maybe (Boolean) , "UseEbsOptimizedInstances" :: Maybe (Boolean) , "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) } -> {"StackId" :: (String) , "Type" :: (LayerType) , "Name" :: (String) , "Shortname" :: (String) , "Attributes" :: Maybe (LayerAttributes) , "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration) , "CustomInstanceProfileArn" :: Maybe (String) , "CustomJson" :: Maybe (String) , "CustomSecurityGroupIds" :: Maybe (Strings) , "Packages" :: Maybe (Strings) , "VolumeConfigurations" :: Maybe (VolumeConfigurations) , "EnableAutoHealing" :: Maybe (Boolean) , "AutoAssignElasticIps" :: Maybe (Boolean) , "AutoAssignPublicIps" :: Maybe (Boolean) , "CustomRecipes" :: Maybe (Recipes) , "InstallUpdatesOnBoot" :: Maybe (Boolean) , "UseEbsOptimizedInstances" :: Maybe (Boolean) , "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) } ) -> CreateLayerRequest
newCreateLayerRequest' _Name _Shortname _StackId _Type customize = (CreateLayerRequest <<< customize) { "Name": _Name, "Shortname": _Shortname, "StackId": _StackId, "Type": _Type, "Attributes": Nothing, "AutoAssignElasticIps": Nothing, "AutoAssignPublicIps": Nothing, "CloudWatchLogsConfiguration": Nothing, "CustomInstanceProfileArn": Nothing, "CustomJson": Nothing, "CustomRecipes": Nothing, "CustomSecurityGroupIds": Nothing, "EnableAutoHealing": Nothing, "InstallUpdatesOnBoot": Nothing, "LifecycleEventConfiguration": Nothing, "Packages": Nothing, "UseEbsOptimizedInstances": Nothing, "VolumeConfigurations": Nothing }



-- | <p>Contains the response to a <code>CreateLayer</code> request.</p>
newtype CreateLayerResult = CreateLayerResult 
  { "LayerId" :: Maybe (String)
  }
derive instance newtypeCreateLayerResult :: Newtype CreateLayerResult _
derive instance repGenericCreateLayerResult :: Generic CreateLayerResult _
instance showCreateLayerResult :: Show CreateLayerResult where show = genericShow
instance decodeCreateLayerResult :: Decode CreateLayerResult where decode = genericDecode options
instance encodeCreateLayerResult :: Encode CreateLayerResult where encode = genericEncode options

-- | Constructs CreateLayerResult from required parameters
newCreateLayerResult :: CreateLayerResult
newCreateLayerResult  = CreateLayerResult { "LayerId": Nothing }

-- | Constructs CreateLayerResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateLayerResult' :: ( { "LayerId" :: Maybe (String) } -> {"LayerId" :: Maybe (String) } ) -> CreateLayerResult
newCreateLayerResult'  customize = (CreateLayerResult <<< customize) { "LayerId": Nothing }



newtype CreateStackRequest = CreateStackRequest 
  { "Name" :: (String)
  , "Region" :: (String)
  , "VpcId" :: Maybe (String)
  , "Attributes" :: Maybe (StackAttributes)
  , "ServiceRoleArn" :: (String)
  , "DefaultInstanceProfileArn" :: (String)
  , "DefaultOs" :: Maybe (String)
  , "HostnameTheme" :: Maybe (String)
  , "DefaultAvailabilityZone" :: Maybe (String)
  , "DefaultSubnetId" :: Maybe (String)
  , "CustomJson" :: Maybe (String)
  , "ConfigurationManager" :: Maybe (StackConfigurationManager)
  , "ChefConfiguration" :: Maybe (ChefConfiguration)
  , "UseCustomCookbooks" :: Maybe (Boolean)
  , "UseOpsworksSecurityGroups" :: Maybe (Boolean)
  , "CustomCookbooksSource" :: Maybe (Source)
  , "DefaultSshKeyName" :: Maybe (String)
  , "DefaultRootDeviceType" :: Maybe (RootDeviceType)
  , "AgentVersion" :: Maybe (String)
  }
derive instance newtypeCreateStackRequest :: Newtype CreateStackRequest _
derive instance repGenericCreateStackRequest :: Generic CreateStackRequest _
instance showCreateStackRequest :: Show CreateStackRequest where show = genericShow
instance decodeCreateStackRequest :: Decode CreateStackRequest where decode = genericDecode options
instance encodeCreateStackRequest :: Encode CreateStackRequest where encode = genericEncode options

-- | Constructs CreateStackRequest from required parameters
newCreateStackRequest :: String -> String -> String -> String -> CreateStackRequest
newCreateStackRequest _DefaultInstanceProfileArn _Name _Region _ServiceRoleArn = CreateStackRequest { "DefaultInstanceProfileArn": _DefaultInstanceProfileArn, "Name": _Name, "Region": _Region, "ServiceRoleArn": _ServiceRoleArn, "AgentVersion": Nothing, "Attributes": Nothing, "ChefConfiguration": Nothing, "ConfigurationManager": Nothing, "CustomCookbooksSource": Nothing, "CustomJson": Nothing, "DefaultAvailabilityZone": Nothing, "DefaultOs": Nothing, "DefaultRootDeviceType": Nothing, "DefaultSshKeyName": Nothing, "DefaultSubnetId": Nothing, "HostnameTheme": Nothing, "UseCustomCookbooks": Nothing, "UseOpsworksSecurityGroups": Nothing, "VpcId": Nothing }

-- | Constructs CreateStackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStackRequest' :: String -> String -> String -> String -> ( { "Name" :: (String) , "Region" :: (String) , "VpcId" :: Maybe (String) , "Attributes" :: Maybe (StackAttributes) , "ServiceRoleArn" :: (String) , "DefaultInstanceProfileArn" :: (String) , "DefaultOs" :: Maybe (String) , "HostnameTheme" :: Maybe (String) , "DefaultAvailabilityZone" :: Maybe (String) , "DefaultSubnetId" :: Maybe (String) , "CustomJson" :: Maybe (String) , "ConfigurationManager" :: Maybe (StackConfigurationManager) , "ChefConfiguration" :: Maybe (ChefConfiguration) , "UseCustomCookbooks" :: Maybe (Boolean) , "UseOpsworksSecurityGroups" :: Maybe (Boolean) , "CustomCookbooksSource" :: Maybe (Source) , "DefaultSshKeyName" :: Maybe (String) , "DefaultRootDeviceType" :: Maybe (RootDeviceType) , "AgentVersion" :: Maybe (String) } -> {"Name" :: (String) , "Region" :: (String) , "VpcId" :: Maybe (String) , "Attributes" :: Maybe (StackAttributes) , "ServiceRoleArn" :: (String) , "DefaultInstanceProfileArn" :: (String) , "DefaultOs" :: Maybe (String) , "HostnameTheme" :: Maybe (String) , "DefaultAvailabilityZone" :: Maybe (String) , "DefaultSubnetId" :: Maybe (String) , "CustomJson" :: Maybe (String) , "ConfigurationManager" :: Maybe (StackConfigurationManager) , "ChefConfiguration" :: Maybe (ChefConfiguration) , "UseCustomCookbooks" :: Maybe (Boolean) , "UseOpsworksSecurityGroups" :: Maybe (Boolean) , "CustomCookbooksSource" :: Maybe (Source) , "DefaultSshKeyName" :: Maybe (String) , "DefaultRootDeviceType" :: Maybe (RootDeviceType) , "AgentVersion" :: Maybe (String) } ) -> CreateStackRequest
newCreateStackRequest' _DefaultInstanceProfileArn _Name _Region _ServiceRoleArn customize = (CreateStackRequest <<< customize) { "DefaultInstanceProfileArn": _DefaultInstanceProfileArn, "Name": _Name, "Region": _Region, "ServiceRoleArn": _ServiceRoleArn, "AgentVersion": Nothing, "Attributes": Nothing, "ChefConfiguration": Nothing, "ConfigurationManager": Nothing, "CustomCookbooksSource": Nothing, "CustomJson": Nothing, "DefaultAvailabilityZone": Nothing, "DefaultOs": Nothing, "DefaultRootDeviceType": Nothing, "DefaultSshKeyName": Nothing, "DefaultSubnetId": Nothing, "HostnameTheme": Nothing, "UseCustomCookbooks": Nothing, "UseOpsworksSecurityGroups": Nothing, "VpcId": Nothing }



-- | <p>Contains the response to a <code>CreateStack</code> request.</p>
newtype CreateStackResult = CreateStackResult 
  { "StackId" :: Maybe (String)
  }
derive instance newtypeCreateStackResult :: Newtype CreateStackResult _
derive instance repGenericCreateStackResult :: Generic CreateStackResult _
instance showCreateStackResult :: Show CreateStackResult where show = genericShow
instance decodeCreateStackResult :: Decode CreateStackResult where decode = genericDecode options
instance encodeCreateStackResult :: Encode CreateStackResult where encode = genericEncode options

-- | Constructs CreateStackResult from required parameters
newCreateStackResult :: CreateStackResult
newCreateStackResult  = CreateStackResult { "StackId": Nothing }

-- | Constructs CreateStackResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStackResult' :: ( { "StackId" :: Maybe (String) } -> {"StackId" :: Maybe (String) } ) -> CreateStackResult
newCreateStackResult'  customize = (CreateStackResult <<< customize) { "StackId": Nothing }



newtype CreateUserProfileRequest = CreateUserProfileRequest 
  { "IamUserArn" :: (String)
  , "SshUsername" :: Maybe (String)
  , "SshPublicKey" :: Maybe (String)
  , "AllowSelfManagement" :: Maybe (Boolean)
  }
derive instance newtypeCreateUserProfileRequest :: Newtype CreateUserProfileRequest _
derive instance repGenericCreateUserProfileRequest :: Generic CreateUserProfileRequest _
instance showCreateUserProfileRequest :: Show CreateUserProfileRequest where show = genericShow
instance decodeCreateUserProfileRequest :: Decode CreateUserProfileRequest where decode = genericDecode options
instance encodeCreateUserProfileRequest :: Encode CreateUserProfileRequest where encode = genericEncode options

-- | Constructs CreateUserProfileRequest from required parameters
newCreateUserProfileRequest :: String -> CreateUserProfileRequest
newCreateUserProfileRequest _IamUserArn = CreateUserProfileRequest { "IamUserArn": _IamUserArn, "AllowSelfManagement": Nothing, "SshPublicKey": Nothing, "SshUsername": Nothing }

-- | Constructs CreateUserProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserProfileRequest' :: String -> ( { "IamUserArn" :: (String) , "SshUsername" :: Maybe (String) , "SshPublicKey" :: Maybe (String) , "AllowSelfManagement" :: Maybe (Boolean) } -> {"IamUserArn" :: (String) , "SshUsername" :: Maybe (String) , "SshPublicKey" :: Maybe (String) , "AllowSelfManagement" :: Maybe (Boolean) } ) -> CreateUserProfileRequest
newCreateUserProfileRequest' _IamUserArn customize = (CreateUserProfileRequest <<< customize) { "IamUserArn": _IamUserArn, "AllowSelfManagement": Nothing, "SshPublicKey": Nothing, "SshUsername": Nothing }



-- | <p>Contains the response to a <code>CreateUserProfile</code> request.</p>
newtype CreateUserProfileResult = CreateUserProfileResult 
  { "IamUserArn" :: Maybe (String)
  }
derive instance newtypeCreateUserProfileResult :: Newtype CreateUserProfileResult _
derive instance repGenericCreateUserProfileResult :: Generic CreateUserProfileResult _
instance showCreateUserProfileResult :: Show CreateUserProfileResult where show = genericShow
instance decodeCreateUserProfileResult :: Decode CreateUserProfileResult where decode = genericDecode options
instance encodeCreateUserProfileResult :: Encode CreateUserProfileResult where encode = genericEncode options

-- | Constructs CreateUserProfileResult from required parameters
newCreateUserProfileResult :: CreateUserProfileResult
newCreateUserProfileResult  = CreateUserProfileResult { "IamUserArn": Nothing }

-- | Constructs CreateUserProfileResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserProfileResult' :: ( { "IamUserArn" :: Maybe (String) } -> {"IamUserArn" :: Maybe (String) } ) -> CreateUserProfileResult
newCreateUserProfileResult'  customize = (CreateUserProfileResult <<< customize) { "IamUserArn": Nothing }



newtype DailyAutoScalingSchedule = DailyAutoScalingSchedule (StrMap.StrMap Switch)
derive instance newtypeDailyAutoScalingSchedule :: Newtype DailyAutoScalingSchedule _
derive instance repGenericDailyAutoScalingSchedule :: Generic DailyAutoScalingSchedule _
instance showDailyAutoScalingSchedule :: Show DailyAutoScalingSchedule where show = genericShow
instance decodeDailyAutoScalingSchedule :: Decode DailyAutoScalingSchedule where decode = genericDecode options
instance encodeDailyAutoScalingSchedule :: Encode DailyAutoScalingSchedule where encode = genericEncode options



-- | <p>Describes an app's data source.</p>
newtype DataSource = DataSource 
  { "Type" :: Maybe (String)
  , "Arn" :: Maybe (String)
  , "DatabaseName" :: Maybe (String)
  }
derive instance newtypeDataSource :: Newtype DataSource _
derive instance repGenericDataSource :: Generic DataSource _
instance showDataSource :: Show DataSource where show = genericShow
instance decodeDataSource :: Decode DataSource where decode = genericDecode options
instance encodeDataSource :: Encode DataSource where encode = genericEncode options

-- | Constructs DataSource from required parameters
newDataSource :: DataSource
newDataSource  = DataSource { "Arn": Nothing, "DatabaseName": Nothing, "Type": Nothing }

-- | Constructs DataSource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDataSource' :: ( { "Type" :: Maybe (String) , "Arn" :: Maybe (String) , "DatabaseName" :: Maybe (String) } -> {"Type" :: Maybe (String) , "Arn" :: Maybe (String) , "DatabaseName" :: Maybe (String) } ) -> DataSource
newDataSource'  customize = (DataSource <<< customize) { "Arn": Nothing, "DatabaseName": Nothing, "Type": Nothing }



newtype DataSources = DataSources (Array DataSource)
derive instance newtypeDataSources :: Newtype DataSources _
derive instance repGenericDataSources :: Generic DataSources _
instance showDataSources :: Show DataSources where show = genericShow
instance decodeDataSources :: Decode DataSources where decode = genericDecode options
instance encodeDataSources :: Encode DataSources where encode = genericEncode options



newtype DateTime = DateTime String
derive instance newtypeDateTime :: Newtype DateTime _
derive instance repGenericDateTime :: Generic DateTime _
instance showDateTime :: Show DateTime where show = genericShow
instance decodeDateTime :: Decode DateTime where decode = genericDecode options
instance encodeDateTime :: Encode DateTime where encode = genericEncode options



newtype DeleteAppRequest = DeleteAppRequest 
  { "AppId" :: (String)
  }
derive instance newtypeDeleteAppRequest :: Newtype DeleteAppRequest _
derive instance repGenericDeleteAppRequest :: Generic DeleteAppRequest _
instance showDeleteAppRequest :: Show DeleteAppRequest where show = genericShow
instance decodeDeleteAppRequest :: Decode DeleteAppRequest where decode = genericDecode options
instance encodeDeleteAppRequest :: Encode DeleteAppRequest where encode = genericEncode options

-- | Constructs DeleteAppRequest from required parameters
newDeleteAppRequest :: String -> DeleteAppRequest
newDeleteAppRequest _AppId = DeleteAppRequest { "AppId": _AppId }

-- | Constructs DeleteAppRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAppRequest' :: String -> ( { "AppId" :: (String) } -> {"AppId" :: (String) } ) -> DeleteAppRequest
newDeleteAppRequest' _AppId customize = (DeleteAppRequest <<< customize) { "AppId": _AppId }



newtype DeleteInstanceRequest = DeleteInstanceRequest 
  { "InstanceId" :: (String)
  , "DeleteElasticIp" :: Maybe (Boolean)
  , "DeleteVolumes" :: Maybe (Boolean)
  }
derive instance newtypeDeleteInstanceRequest :: Newtype DeleteInstanceRequest _
derive instance repGenericDeleteInstanceRequest :: Generic DeleteInstanceRequest _
instance showDeleteInstanceRequest :: Show DeleteInstanceRequest where show = genericShow
instance decodeDeleteInstanceRequest :: Decode DeleteInstanceRequest where decode = genericDecode options
instance encodeDeleteInstanceRequest :: Encode DeleteInstanceRequest where encode = genericEncode options

-- | Constructs DeleteInstanceRequest from required parameters
newDeleteInstanceRequest :: String -> DeleteInstanceRequest
newDeleteInstanceRequest _InstanceId = DeleteInstanceRequest { "InstanceId": _InstanceId, "DeleteElasticIp": Nothing, "DeleteVolumes": Nothing }

-- | Constructs DeleteInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteInstanceRequest' :: String -> ( { "InstanceId" :: (String) , "DeleteElasticIp" :: Maybe (Boolean) , "DeleteVolumes" :: Maybe (Boolean) } -> {"InstanceId" :: (String) , "DeleteElasticIp" :: Maybe (Boolean) , "DeleteVolumes" :: Maybe (Boolean) } ) -> DeleteInstanceRequest
newDeleteInstanceRequest' _InstanceId customize = (DeleteInstanceRequest <<< customize) { "InstanceId": _InstanceId, "DeleteElasticIp": Nothing, "DeleteVolumes": Nothing }



newtype DeleteLayerRequest = DeleteLayerRequest 
  { "LayerId" :: (String)
  }
derive instance newtypeDeleteLayerRequest :: Newtype DeleteLayerRequest _
derive instance repGenericDeleteLayerRequest :: Generic DeleteLayerRequest _
instance showDeleteLayerRequest :: Show DeleteLayerRequest where show = genericShow
instance decodeDeleteLayerRequest :: Decode DeleteLayerRequest where decode = genericDecode options
instance encodeDeleteLayerRequest :: Encode DeleteLayerRequest where encode = genericEncode options

-- | Constructs DeleteLayerRequest from required parameters
newDeleteLayerRequest :: String -> DeleteLayerRequest
newDeleteLayerRequest _LayerId = DeleteLayerRequest { "LayerId": _LayerId }

-- | Constructs DeleteLayerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteLayerRequest' :: String -> ( { "LayerId" :: (String) } -> {"LayerId" :: (String) } ) -> DeleteLayerRequest
newDeleteLayerRequest' _LayerId customize = (DeleteLayerRequest <<< customize) { "LayerId": _LayerId }



newtype DeleteStackRequest = DeleteStackRequest 
  { "StackId" :: (String)
  }
derive instance newtypeDeleteStackRequest :: Newtype DeleteStackRequest _
derive instance repGenericDeleteStackRequest :: Generic DeleteStackRequest _
instance showDeleteStackRequest :: Show DeleteStackRequest where show = genericShow
instance decodeDeleteStackRequest :: Decode DeleteStackRequest where decode = genericDecode options
instance encodeDeleteStackRequest :: Encode DeleteStackRequest where encode = genericEncode options

-- | Constructs DeleteStackRequest from required parameters
newDeleteStackRequest :: String -> DeleteStackRequest
newDeleteStackRequest _StackId = DeleteStackRequest { "StackId": _StackId }

-- | Constructs DeleteStackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteStackRequest' :: String -> ( { "StackId" :: (String) } -> {"StackId" :: (String) } ) -> DeleteStackRequest
newDeleteStackRequest' _StackId customize = (DeleteStackRequest <<< customize) { "StackId": _StackId }



newtype DeleteUserProfileRequest = DeleteUserProfileRequest 
  { "IamUserArn" :: (String)
  }
derive instance newtypeDeleteUserProfileRequest :: Newtype DeleteUserProfileRequest _
derive instance repGenericDeleteUserProfileRequest :: Generic DeleteUserProfileRequest _
instance showDeleteUserProfileRequest :: Show DeleteUserProfileRequest where show = genericShow
instance decodeDeleteUserProfileRequest :: Decode DeleteUserProfileRequest where decode = genericDecode options
instance encodeDeleteUserProfileRequest :: Encode DeleteUserProfileRequest where encode = genericEncode options

-- | Constructs DeleteUserProfileRequest from required parameters
newDeleteUserProfileRequest :: String -> DeleteUserProfileRequest
newDeleteUserProfileRequest _IamUserArn = DeleteUserProfileRequest { "IamUserArn": _IamUserArn }

-- | Constructs DeleteUserProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteUserProfileRequest' :: String -> ( { "IamUserArn" :: (String) } -> {"IamUserArn" :: (String) } ) -> DeleteUserProfileRequest
newDeleteUserProfileRequest' _IamUserArn customize = (DeleteUserProfileRequest <<< customize) { "IamUserArn": _IamUserArn }



-- | <p>Describes a deployment of a stack or app.</p>
newtype Deployment = Deployment 
  { "DeploymentId" :: Maybe (String)
  , "StackId" :: Maybe (String)
  , "AppId" :: Maybe (String)
  , "CreatedAt" :: Maybe (DateTime)
  , "CompletedAt" :: Maybe (DateTime)
  , "Duration" :: Maybe (Int)
  , "IamUserArn" :: Maybe (String)
  , "Comment" :: Maybe (String)
  , "Command" :: Maybe (DeploymentCommand)
  , "Status" :: Maybe (String)
  , "CustomJson" :: Maybe (String)
  , "InstanceIds" :: Maybe (Strings)
  }
derive instance newtypeDeployment :: Newtype Deployment _
derive instance repGenericDeployment :: Generic Deployment _
instance showDeployment :: Show Deployment where show = genericShow
instance decodeDeployment :: Decode Deployment where decode = genericDecode options
instance encodeDeployment :: Encode Deployment where encode = genericEncode options

-- | Constructs Deployment from required parameters
newDeployment :: Deployment
newDeployment  = Deployment { "AppId": Nothing, "Command": Nothing, "Comment": Nothing, "CompletedAt": Nothing, "CreatedAt": Nothing, "CustomJson": Nothing, "DeploymentId": Nothing, "Duration": Nothing, "IamUserArn": Nothing, "InstanceIds": Nothing, "StackId": Nothing, "Status": Nothing }

-- | Constructs Deployment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeployment' :: ( { "DeploymentId" :: Maybe (String) , "StackId" :: Maybe (String) , "AppId" :: Maybe (String) , "CreatedAt" :: Maybe (DateTime) , "CompletedAt" :: Maybe (DateTime) , "Duration" :: Maybe (Int) , "IamUserArn" :: Maybe (String) , "Comment" :: Maybe (String) , "Command" :: Maybe (DeploymentCommand) , "Status" :: Maybe (String) , "CustomJson" :: Maybe (String) , "InstanceIds" :: Maybe (Strings) } -> {"DeploymentId" :: Maybe (String) , "StackId" :: Maybe (String) , "AppId" :: Maybe (String) , "CreatedAt" :: Maybe (DateTime) , "CompletedAt" :: Maybe (DateTime) , "Duration" :: Maybe (Int) , "IamUserArn" :: Maybe (String) , "Comment" :: Maybe (String) , "Command" :: Maybe (DeploymentCommand) , "Status" :: Maybe (String) , "CustomJson" :: Maybe (String) , "InstanceIds" :: Maybe (Strings) } ) -> Deployment
newDeployment'  customize = (Deployment <<< customize) { "AppId": Nothing, "Command": Nothing, "Comment": Nothing, "CompletedAt": Nothing, "CreatedAt": Nothing, "CustomJson": Nothing, "DeploymentId": Nothing, "Duration": Nothing, "IamUserArn": Nothing, "InstanceIds": Nothing, "StackId": Nothing, "Status": Nothing }



-- | <p>Used to specify a stack or deployment command.</p>
newtype DeploymentCommand = DeploymentCommand 
  { "Name" :: (DeploymentCommandName)
  , "Args" :: Maybe (DeploymentCommandArgs)
  }
derive instance newtypeDeploymentCommand :: Newtype DeploymentCommand _
derive instance repGenericDeploymentCommand :: Generic DeploymentCommand _
instance showDeploymentCommand :: Show DeploymentCommand where show = genericShow
instance decodeDeploymentCommand :: Decode DeploymentCommand where decode = genericDecode options
instance encodeDeploymentCommand :: Encode DeploymentCommand where encode = genericEncode options

-- | Constructs DeploymentCommand from required parameters
newDeploymentCommand :: DeploymentCommandName -> DeploymentCommand
newDeploymentCommand _Name = DeploymentCommand { "Name": _Name, "Args": Nothing }

-- | Constructs DeploymentCommand's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeploymentCommand' :: DeploymentCommandName -> ( { "Name" :: (DeploymentCommandName) , "Args" :: Maybe (DeploymentCommandArgs) } -> {"Name" :: (DeploymentCommandName) , "Args" :: Maybe (DeploymentCommandArgs) } ) -> DeploymentCommand
newDeploymentCommand' _Name customize = (DeploymentCommand <<< customize) { "Name": _Name, "Args": Nothing }



newtype DeploymentCommandArgs = DeploymentCommandArgs (StrMap.StrMap Strings)
derive instance newtypeDeploymentCommandArgs :: Newtype DeploymentCommandArgs _
derive instance repGenericDeploymentCommandArgs :: Generic DeploymentCommandArgs _
instance showDeploymentCommandArgs :: Show DeploymentCommandArgs where show = genericShow
instance decodeDeploymentCommandArgs :: Decode DeploymentCommandArgs where decode = genericDecode options
instance encodeDeploymentCommandArgs :: Encode DeploymentCommandArgs where encode = genericEncode options



newtype DeploymentCommandName = DeploymentCommandName String
derive instance newtypeDeploymentCommandName :: Newtype DeploymentCommandName _
derive instance repGenericDeploymentCommandName :: Generic DeploymentCommandName _
instance showDeploymentCommandName :: Show DeploymentCommandName where show = genericShow
instance decodeDeploymentCommandName :: Decode DeploymentCommandName where decode = genericDecode options
instance encodeDeploymentCommandName :: Encode DeploymentCommandName where encode = genericEncode options



newtype Deployments = Deployments (Array Deployment)
derive instance newtypeDeployments :: Newtype Deployments _
derive instance repGenericDeployments :: Generic Deployments _
instance showDeployments :: Show Deployments where show = genericShow
instance decodeDeployments :: Decode Deployments where decode = genericDecode options
instance encodeDeployments :: Encode Deployments where encode = genericEncode options



newtype DeregisterEcsClusterRequest = DeregisterEcsClusterRequest 
  { "EcsClusterArn" :: (String)
  }
derive instance newtypeDeregisterEcsClusterRequest :: Newtype DeregisterEcsClusterRequest _
derive instance repGenericDeregisterEcsClusterRequest :: Generic DeregisterEcsClusterRequest _
instance showDeregisterEcsClusterRequest :: Show DeregisterEcsClusterRequest where show = genericShow
instance decodeDeregisterEcsClusterRequest :: Decode DeregisterEcsClusterRequest where decode = genericDecode options
instance encodeDeregisterEcsClusterRequest :: Encode DeregisterEcsClusterRequest where encode = genericEncode options

-- | Constructs DeregisterEcsClusterRequest from required parameters
newDeregisterEcsClusterRequest :: String -> DeregisterEcsClusterRequest
newDeregisterEcsClusterRequest _EcsClusterArn = DeregisterEcsClusterRequest { "EcsClusterArn": _EcsClusterArn }

-- | Constructs DeregisterEcsClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterEcsClusterRequest' :: String -> ( { "EcsClusterArn" :: (String) } -> {"EcsClusterArn" :: (String) } ) -> DeregisterEcsClusterRequest
newDeregisterEcsClusterRequest' _EcsClusterArn customize = (DeregisterEcsClusterRequest <<< customize) { "EcsClusterArn": _EcsClusterArn }



newtype DeregisterElasticIpRequest = DeregisterElasticIpRequest 
  { "ElasticIp" :: (String)
  }
derive instance newtypeDeregisterElasticIpRequest :: Newtype DeregisterElasticIpRequest _
derive instance repGenericDeregisterElasticIpRequest :: Generic DeregisterElasticIpRequest _
instance showDeregisterElasticIpRequest :: Show DeregisterElasticIpRequest where show = genericShow
instance decodeDeregisterElasticIpRequest :: Decode DeregisterElasticIpRequest where decode = genericDecode options
instance encodeDeregisterElasticIpRequest :: Encode DeregisterElasticIpRequest where encode = genericEncode options

-- | Constructs DeregisterElasticIpRequest from required parameters
newDeregisterElasticIpRequest :: String -> DeregisterElasticIpRequest
newDeregisterElasticIpRequest _ElasticIp = DeregisterElasticIpRequest { "ElasticIp": _ElasticIp }

-- | Constructs DeregisterElasticIpRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterElasticIpRequest' :: String -> ( { "ElasticIp" :: (String) } -> {"ElasticIp" :: (String) } ) -> DeregisterElasticIpRequest
newDeregisterElasticIpRequest' _ElasticIp customize = (DeregisterElasticIpRequest <<< customize) { "ElasticIp": _ElasticIp }



newtype DeregisterInstanceRequest = DeregisterInstanceRequest 
  { "InstanceId" :: (String)
  }
derive instance newtypeDeregisterInstanceRequest :: Newtype DeregisterInstanceRequest _
derive instance repGenericDeregisterInstanceRequest :: Generic DeregisterInstanceRequest _
instance showDeregisterInstanceRequest :: Show DeregisterInstanceRequest where show = genericShow
instance decodeDeregisterInstanceRequest :: Decode DeregisterInstanceRequest where decode = genericDecode options
instance encodeDeregisterInstanceRequest :: Encode DeregisterInstanceRequest where encode = genericEncode options

-- | Constructs DeregisterInstanceRequest from required parameters
newDeregisterInstanceRequest :: String -> DeregisterInstanceRequest
newDeregisterInstanceRequest _InstanceId = DeregisterInstanceRequest { "InstanceId": _InstanceId }

-- | Constructs DeregisterInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterInstanceRequest' :: String -> ( { "InstanceId" :: (String) } -> {"InstanceId" :: (String) } ) -> DeregisterInstanceRequest
newDeregisterInstanceRequest' _InstanceId customize = (DeregisterInstanceRequest <<< customize) { "InstanceId": _InstanceId }



newtype DeregisterRdsDbInstanceRequest = DeregisterRdsDbInstanceRequest 
  { "RdsDbInstanceArn" :: (String)
  }
derive instance newtypeDeregisterRdsDbInstanceRequest :: Newtype DeregisterRdsDbInstanceRequest _
derive instance repGenericDeregisterRdsDbInstanceRequest :: Generic DeregisterRdsDbInstanceRequest _
instance showDeregisterRdsDbInstanceRequest :: Show DeregisterRdsDbInstanceRequest where show = genericShow
instance decodeDeregisterRdsDbInstanceRequest :: Decode DeregisterRdsDbInstanceRequest where decode = genericDecode options
instance encodeDeregisterRdsDbInstanceRequest :: Encode DeregisterRdsDbInstanceRequest where encode = genericEncode options

-- | Constructs DeregisterRdsDbInstanceRequest from required parameters
newDeregisterRdsDbInstanceRequest :: String -> DeregisterRdsDbInstanceRequest
newDeregisterRdsDbInstanceRequest _RdsDbInstanceArn = DeregisterRdsDbInstanceRequest { "RdsDbInstanceArn": _RdsDbInstanceArn }

-- | Constructs DeregisterRdsDbInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterRdsDbInstanceRequest' :: String -> ( { "RdsDbInstanceArn" :: (String) } -> {"RdsDbInstanceArn" :: (String) } ) -> DeregisterRdsDbInstanceRequest
newDeregisterRdsDbInstanceRequest' _RdsDbInstanceArn customize = (DeregisterRdsDbInstanceRequest <<< customize) { "RdsDbInstanceArn": _RdsDbInstanceArn }



newtype DeregisterVolumeRequest = DeregisterVolumeRequest 
  { "VolumeId" :: (String)
  }
derive instance newtypeDeregisterVolumeRequest :: Newtype DeregisterVolumeRequest _
derive instance repGenericDeregisterVolumeRequest :: Generic DeregisterVolumeRequest _
instance showDeregisterVolumeRequest :: Show DeregisterVolumeRequest where show = genericShow
instance decodeDeregisterVolumeRequest :: Decode DeregisterVolumeRequest where decode = genericDecode options
instance encodeDeregisterVolumeRequest :: Encode DeregisterVolumeRequest where encode = genericEncode options

-- | Constructs DeregisterVolumeRequest from required parameters
newDeregisterVolumeRequest :: String -> DeregisterVolumeRequest
newDeregisterVolumeRequest _VolumeId = DeregisterVolumeRequest { "VolumeId": _VolumeId }

-- | Constructs DeregisterVolumeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterVolumeRequest' :: String -> ( { "VolumeId" :: (String) } -> {"VolumeId" :: (String) } ) -> DeregisterVolumeRequest
newDeregisterVolumeRequest' _VolumeId customize = (DeregisterVolumeRequest <<< customize) { "VolumeId": _VolumeId }



newtype DescribeAgentVersionsRequest = DescribeAgentVersionsRequest 
  { "StackId" :: Maybe (String)
  , "ConfigurationManager" :: Maybe (StackConfigurationManager)
  }
derive instance newtypeDescribeAgentVersionsRequest :: Newtype DescribeAgentVersionsRequest _
derive instance repGenericDescribeAgentVersionsRequest :: Generic DescribeAgentVersionsRequest _
instance showDescribeAgentVersionsRequest :: Show DescribeAgentVersionsRequest where show = genericShow
instance decodeDescribeAgentVersionsRequest :: Decode DescribeAgentVersionsRequest where decode = genericDecode options
instance encodeDescribeAgentVersionsRequest :: Encode DescribeAgentVersionsRequest where encode = genericEncode options

-- | Constructs DescribeAgentVersionsRequest from required parameters
newDescribeAgentVersionsRequest :: DescribeAgentVersionsRequest
newDescribeAgentVersionsRequest  = DescribeAgentVersionsRequest { "ConfigurationManager": Nothing, "StackId": Nothing }

-- | Constructs DescribeAgentVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAgentVersionsRequest' :: ( { "StackId" :: Maybe (String) , "ConfigurationManager" :: Maybe (StackConfigurationManager) } -> {"StackId" :: Maybe (String) , "ConfigurationManager" :: Maybe (StackConfigurationManager) } ) -> DescribeAgentVersionsRequest
newDescribeAgentVersionsRequest'  customize = (DescribeAgentVersionsRequest <<< customize) { "ConfigurationManager": Nothing, "StackId": Nothing }



-- | <p>Contains the response to a <code>DescribeAgentVersions</code> request.</p>
newtype DescribeAgentVersionsResult = DescribeAgentVersionsResult 
  { "AgentVersions" :: Maybe (AgentVersions)
  }
derive instance newtypeDescribeAgentVersionsResult :: Newtype DescribeAgentVersionsResult _
derive instance repGenericDescribeAgentVersionsResult :: Generic DescribeAgentVersionsResult _
instance showDescribeAgentVersionsResult :: Show DescribeAgentVersionsResult where show = genericShow
instance decodeDescribeAgentVersionsResult :: Decode DescribeAgentVersionsResult where decode = genericDecode options
instance encodeDescribeAgentVersionsResult :: Encode DescribeAgentVersionsResult where encode = genericEncode options

-- | Constructs DescribeAgentVersionsResult from required parameters
newDescribeAgentVersionsResult :: DescribeAgentVersionsResult
newDescribeAgentVersionsResult  = DescribeAgentVersionsResult { "AgentVersions": Nothing }

-- | Constructs DescribeAgentVersionsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAgentVersionsResult' :: ( { "AgentVersions" :: Maybe (AgentVersions) } -> {"AgentVersions" :: Maybe (AgentVersions) } ) -> DescribeAgentVersionsResult
newDescribeAgentVersionsResult'  customize = (DescribeAgentVersionsResult <<< customize) { "AgentVersions": Nothing }



newtype DescribeAppsRequest = DescribeAppsRequest 
  { "StackId" :: Maybe (String)
  , "AppIds" :: Maybe (Strings)
  }
derive instance newtypeDescribeAppsRequest :: Newtype DescribeAppsRequest _
derive instance repGenericDescribeAppsRequest :: Generic DescribeAppsRequest _
instance showDescribeAppsRequest :: Show DescribeAppsRequest where show = genericShow
instance decodeDescribeAppsRequest :: Decode DescribeAppsRequest where decode = genericDecode options
instance encodeDescribeAppsRequest :: Encode DescribeAppsRequest where encode = genericEncode options

-- | Constructs DescribeAppsRequest from required parameters
newDescribeAppsRequest :: DescribeAppsRequest
newDescribeAppsRequest  = DescribeAppsRequest { "AppIds": Nothing, "StackId": Nothing }

-- | Constructs DescribeAppsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAppsRequest' :: ( { "StackId" :: Maybe (String) , "AppIds" :: Maybe (Strings) } -> {"StackId" :: Maybe (String) , "AppIds" :: Maybe (Strings) } ) -> DescribeAppsRequest
newDescribeAppsRequest'  customize = (DescribeAppsRequest <<< customize) { "AppIds": Nothing, "StackId": Nothing }



-- | <p>Contains the response to a <code>DescribeApps</code> request.</p>
newtype DescribeAppsResult = DescribeAppsResult 
  { "Apps" :: Maybe (Apps)
  }
derive instance newtypeDescribeAppsResult :: Newtype DescribeAppsResult _
derive instance repGenericDescribeAppsResult :: Generic DescribeAppsResult _
instance showDescribeAppsResult :: Show DescribeAppsResult where show = genericShow
instance decodeDescribeAppsResult :: Decode DescribeAppsResult where decode = genericDecode options
instance encodeDescribeAppsResult :: Encode DescribeAppsResult where encode = genericEncode options

-- | Constructs DescribeAppsResult from required parameters
newDescribeAppsResult :: DescribeAppsResult
newDescribeAppsResult  = DescribeAppsResult { "Apps": Nothing }

-- | Constructs DescribeAppsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAppsResult' :: ( { "Apps" :: Maybe (Apps) } -> {"Apps" :: Maybe (Apps) } ) -> DescribeAppsResult
newDescribeAppsResult'  customize = (DescribeAppsResult <<< customize) { "Apps": Nothing }



newtype DescribeCommandsRequest = DescribeCommandsRequest 
  { "DeploymentId" :: Maybe (String)
  , "InstanceId" :: Maybe (String)
  , "CommandIds" :: Maybe (Strings)
  }
derive instance newtypeDescribeCommandsRequest :: Newtype DescribeCommandsRequest _
derive instance repGenericDescribeCommandsRequest :: Generic DescribeCommandsRequest _
instance showDescribeCommandsRequest :: Show DescribeCommandsRequest where show = genericShow
instance decodeDescribeCommandsRequest :: Decode DescribeCommandsRequest where decode = genericDecode options
instance encodeDescribeCommandsRequest :: Encode DescribeCommandsRequest where encode = genericEncode options

-- | Constructs DescribeCommandsRequest from required parameters
newDescribeCommandsRequest :: DescribeCommandsRequest
newDescribeCommandsRequest  = DescribeCommandsRequest { "CommandIds": Nothing, "DeploymentId": Nothing, "InstanceId": Nothing }

-- | Constructs DescribeCommandsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCommandsRequest' :: ( { "DeploymentId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "CommandIds" :: Maybe (Strings) } -> {"DeploymentId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "CommandIds" :: Maybe (Strings) } ) -> DescribeCommandsRequest
newDescribeCommandsRequest'  customize = (DescribeCommandsRequest <<< customize) { "CommandIds": Nothing, "DeploymentId": Nothing, "InstanceId": Nothing }



-- | <p>Contains the response to a <code>DescribeCommands</code> request.</p>
newtype DescribeCommandsResult = DescribeCommandsResult 
  { "Commands" :: Maybe (Commands)
  }
derive instance newtypeDescribeCommandsResult :: Newtype DescribeCommandsResult _
derive instance repGenericDescribeCommandsResult :: Generic DescribeCommandsResult _
instance showDescribeCommandsResult :: Show DescribeCommandsResult where show = genericShow
instance decodeDescribeCommandsResult :: Decode DescribeCommandsResult where decode = genericDecode options
instance encodeDescribeCommandsResult :: Encode DescribeCommandsResult where encode = genericEncode options

-- | Constructs DescribeCommandsResult from required parameters
newDescribeCommandsResult :: DescribeCommandsResult
newDescribeCommandsResult  = DescribeCommandsResult { "Commands": Nothing }

-- | Constructs DescribeCommandsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCommandsResult' :: ( { "Commands" :: Maybe (Commands) } -> {"Commands" :: Maybe (Commands) } ) -> DescribeCommandsResult
newDescribeCommandsResult'  customize = (DescribeCommandsResult <<< customize) { "Commands": Nothing }



newtype DescribeDeploymentsRequest = DescribeDeploymentsRequest 
  { "StackId" :: Maybe (String)
  , "AppId" :: Maybe (String)
  , "DeploymentIds" :: Maybe (Strings)
  }
derive instance newtypeDescribeDeploymentsRequest :: Newtype DescribeDeploymentsRequest _
derive instance repGenericDescribeDeploymentsRequest :: Generic DescribeDeploymentsRequest _
instance showDescribeDeploymentsRequest :: Show DescribeDeploymentsRequest where show = genericShow
instance decodeDescribeDeploymentsRequest :: Decode DescribeDeploymentsRequest where decode = genericDecode options
instance encodeDescribeDeploymentsRequest :: Encode DescribeDeploymentsRequest where encode = genericEncode options

-- | Constructs DescribeDeploymentsRequest from required parameters
newDescribeDeploymentsRequest :: DescribeDeploymentsRequest
newDescribeDeploymentsRequest  = DescribeDeploymentsRequest { "AppId": Nothing, "DeploymentIds": Nothing, "StackId": Nothing }

-- | Constructs DescribeDeploymentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDeploymentsRequest' :: ( { "StackId" :: Maybe (String) , "AppId" :: Maybe (String) , "DeploymentIds" :: Maybe (Strings) } -> {"StackId" :: Maybe (String) , "AppId" :: Maybe (String) , "DeploymentIds" :: Maybe (Strings) } ) -> DescribeDeploymentsRequest
newDescribeDeploymentsRequest'  customize = (DescribeDeploymentsRequest <<< customize) { "AppId": Nothing, "DeploymentIds": Nothing, "StackId": Nothing }



-- | <p>Contains the response to a <code>DescribeDeployments</code> request.</p>
newtype DescribeDeploymentsResult = DescribeDeploymentsResult 
  { "Deployments" :: Maybe (Deployments)
  }
derive instance newtypeDescribeDeploymentsResult :: Newtype DescribeDeploymentsResult _
derive instance repGenericDescribeDeploymentsResult :: Generic DescribeDeploymentsResult _
instance showDescribeDeploymentsResult :: Show DescribeDeploymentsResult where show = genericShow
instance decodeDescribeDeploymentsResult :: Decode DescribeDeploymentsResult where decode = genericDecode options
instance encodeDescribeDeploymentsResult :: Encode DescribeDeploymentsResult where encode = genericEncode options

-- | Constructs DescribeDeploymentsResult from required parameters
newDescribeDeploymentsResult :: DescribeDeploymentsResult
newDescribeDeploymentsResult  = DescribeDeploymentsResult { "Deployments": Nothing }

-- | Constructs DescribeDeploymentsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDeploymentsResult' :: ( { "Deployments" :: Maybe (Deployments) } -> {"Deployments" :: Maybe (Deployments) } ) -> DescribeDeploymentsResult
newDescribeDeploymentsResult'  customize = (DescribeDeploymentsResult <<< customize) { "Deployments": Nothing }



newtype DescribeEcsClustersRequest = DescribeEcsClustersRequest 
  { "EcsClusterArns" :: Maybe (Strings)
  , "StackId" :: Maybe (String)
  , "NextToken" :: Maybe (String)
  , "MaxResults" :: Maybe (Int)
  }
derive instance newtypeDescribeEcsClustersRequest :: Newtype DescribeEcsClustersRequest _
derive instance repGenericDescribeEcsClustersRequest :: Generic DescribeEcsClustersRequest _
instance showDescribeEcsClustersRequest :: Show DescribeEcsClustersRequest where show = genericShow
instance decodeDescribeEcsClustersRequest :: Decode DescribeEcsClustersRequest where decode = genericDecode options
instance encodeDescribeEcsClustersRequest :: Encode DescribeEcsClustersRequest where encode = genericEncode options

-- | Constructs DescribeEcsClustersRequest from required parameters
newDescribeEcsClustersRequest :: DescribeEcsClustersRequest
newDescribeEcsClustersRequest  = DescribeEcsClustersRequest { "EcsClusterArns": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "StackId": Nothing }

-- | Constructs DescribeEcsClustersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEcsClustersRequest' :: ( { "EcsClusterArns" :: Maybe (Strings) , "StackId" :: Maybe (String) , "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (Int) } -> {"EcsClusterArns" :: Maybe (Strings) , "StackId" :: Maybe (String) , "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (Int) } ) -> DescribeEcsClustersRequest
newDescribeEcsClustersRequest'  customize = (DescribeEcsClustersRequest <<< customize) { "EcsClusterArns": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "StackId": Nothing }



-- | <p>Contains the response to a <code>DescribeEcsClusters</code> request.</p>
newtype DescribeEcsClustersResult = DescribeEcsClustersResult 
  { "EcsClusters" :: Maybe (EcsClusters)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeDescribeEcsClustersResult :: Newtype DescribeEcsClustersResult _
derive instance repGenericDescribeEcsClustersResult :: Generic DescribeEcsClustersResult _
instance showDescribeEcsClustersResult :: Show DescribeEcsClustersResult where show = genericShow
instance decodeDescribeEcsClustersResult :: Decode DescribeEcsClustersResult where decode = genericDecode options
instance encodeDescribeEcsClustersResult :: Encode DescribeEcsClustersResult where encode = genericEncode options

-- | Constructs DescribeEcsClustersResult from required parameters
newDescribeEcsClustersResult :: DescribeEcsClustersResult
newDescribeEcsClustersResult  = DescribeEcsClustersResult { "EcsClusters": Nothing, "NextToken": Nothing }

-- | Constructs DescribeEcsClustersResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEcsClustersResult' :: ( { "EcsClusters" :: Maybe (EcsClusters) , "NextToken" :: Maybe (String) } -> {"EcsClusters" :: Maybe (EcsClusters) , "NextToken" :: Maybe (String) } ) -> DescribeEcsClustersResult
newDescribeEcsClustersResult'  customize = (DescribeEcsClustersResult <<< customize) { "EcsClusters": Nothing, "NextToken": Nothing }



newtype DescribeElasticIpsRequest = DescribeElasticIpsRequest 
  { "InstanceId" :: Maybe (String)
  , "StackId" :: Maybe (String)
  , "Ips" :: Maybe (Strings)
  }
derive instance newtypeDescribeElasticIpsRequest :: Newtype DescribeElasticIpsRequest _
derive instance repGenericDescribeElasticIpsRequest :: Generic DescribeElasticIpsRequest _
instance showDescribeElasticIpsRequest :: Show DescribeElasticIpsRequest where show = genericShow
instance decodeDescribeElasticIpsRequest :: Decode DescribeElasticIpsRequest where decode = genericDecode options
instance encodeDescribeElasticIpsRequest :: Encode DescribeElasticIpsRequest where encode = genericEncode options

-- | Constructs DescribeElasticIpsRequest from required parameters
newDescribeElasticIpsRequest :: DescribeElasticIpsRequest
newDescribeElasticIpsRequest  = DescribeElasticIpsRequest { "InstanceId": Nothing, "Ips": Nothing, "StackId": Nothing }

-- | Constructs DescribeElasticIpsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticIpsRequest' :: ( { "InstanceId" :: Maybe (String) , "StackId" :: Maybe (String) , "Ips" :: Maybe (Strings) } -> {"InstanceId" :: Maybe (String) , "StackId" :: Maybe (String) , "Ips" :: Maybe (Strings) } ) -> DescribeElasticIpsRequest
newDescribeElasticIpsRequest'  customize = (DescribeElasticIpsRequest <<< customize) { "InstanceId": Nothing, "Ips": Nothing, "StackId": Nothing }



-- | <p>Contains the response to a <code>DescribeElasticIps</code> request.</p>
newtype DescribeElasticIpsResult = DescribeElasticIpsResult 
  { "ElasticIps" :: Maybe (ElasticIps)
  }
derive instance newtypeDescribeElasticIpsResult :: Newtype DescribeElasticIpsResult _
derive instance repGenericDescribeElasticIpsResult :: Generic DescribeElasticIpsResult _
instance showDescribeElasticIpsResult :: Show DescribeElasticIpsResult where show = genericShow
instance decodeDescribeElasticIpsResult :: Decode DescribeElasticIpsResult where decode = genericDecode options
instance encodeDescribeElasticIpsResult :: Encode DescribeElasticIpsResult where encode = genericEncode options

-- | Constructs DescribeElasticIpsResult from required parameters
newDescribeElasticIpsResult :: DescribeElasticIpsResult
newDescribeElasticIpsResult  = DescribeElasticIpsResult { "ElasticIps": Nothing }

-- | Constructs DescribeElasticIpsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticIpsResult' :: ( { "ElasticIps" :: Maybe (ElasticIps) } -> {"ElasticIps" :: Maybe (ElasticIps) } ) -> DescribeElasticIpsResult
newDescribeElasticIpsResult'  customize = (DescribeElasticIpsResult <<< customize) { "ElasticIps": Nothing }



newtype DescribeElasticLoadBalancersRequest = DescribeElasticLoadBalancersRequest 
  { "StackId" :: Maybe (String)
  , "LayerIds" :: Maybe (Strings)
  }
derive instance newtypeDescribeElasticLoadBalancersRequest :: Newtype DescribeElasticLoadBalancersRequest _
derive instance repGenericDescribeElasticLoadBalancersRequest :: Generic DescribeElasticLoadBalancersRequest _
instance showDescribeElasticLoadBalancersRequest :: Show DescribeElasticLoadBalancersRequest where show = genericShow
instance decodeDescribeElasticLoadBalancersRequest :: Decode DescribeElasticLoadBalancersRequest where decode = genericDecode options
instance encodeDescribeElasticLoadBalancersRequest :: Encode DescribeElasticLoadBalancersRequest where encode = genericEncode options

-- | Constructs DescribeElasticLoadBalancersRequest from required parameters
newDescribeElasticLoadBalancersRequest :: DescribeElasticLoadBalancersRequest
newDescribeElasticLoadBalancersRequest  = DescribeElasticLoadBalancersRequest { "LayerIds": Nothing, "StackId": Nothing }

-- | Constructs DescribeElasticLoadBalancersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticLoadBalancersRequest' :: ( { "StackId" :: Maybe (String) , "LayerIds" :: Maybe (Strings) } -> {"StackId" :: Maybe (String) , "LayerIds" :: Maybe (Strings) } ) -> DescribeElasticLoadBalancersRequest
newDescribeElasticLoadBalancersRequest'  customize = (DescribeElasticLoadBalancersRequest <<< customize) { "LayerIds": Nothing, "StackId": Nothing }



-- | <p>Contains the response to a <code>DescribeElasticLoadBalancers</code> request.</p>
newtype DescribeElasticLoadBalancersResult = DescribeElasticLoadBalancersResult 
  { "ElasticLoadBalancers" :: Maybe (ElasticLoadBalancers)
  }
derive instance newtypeDescribeElasticLoadBalancersResult :: Newtype DescribeElasticLoadBalancersResult _
derive instance repGenericDescribeElasticLoadBalancersResult :: Generic DescribeElasticLoadBalancersResult _
instance showDescribeElasticLoadBalancersResult :: Show DescribeElasticLoadBalancersResult where show = genericShow
instance decodeDescribeElasticLoadBalancersResult :: Decode DescribeElasticLoadBalancersResult where decode = genericDecode options
instance encodeDescribeElasticLoadBalancersResult :: Encode DescribeElasticLoadBalancersResult where encode = genericEncode options

-- | Constructs DescribeElasticLoadBalancersResult from required parameters
newDescribeElasticLoadBalancersResult :: DescribeElasticLoadBalancersResult
newDescribeElasticLoadBalancersResult  = DescribeElasticLoadBalancersResult { "ElasticLoadBalancers": Nothing }

-- | Constructs DescribeElasticLoadBalancersResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticLoadBalancersResult' :: ( { "ElasticLoadBalancers" :: Maybe (ElasticLoadBalancers) } -> {"ElasticLoadBalancers" :: Maybe (ElasticLoadBalancers) } ) -> DescribeElasticLoadBalancersResult
newDescribeElasticLoadBalancersResult'  customize = (DescribeElasticLoadBalancersResult <<< customize) { "ElasticLoadBalancers": Nothing }



newtype DescribeInstancesRequest = DescribeInstancesRequest 
  { "StackId" :: Maybe (String)
  , "LayerId" :: Maybe (String)
  , "InstanceIds" :: Maybe (Strings)
  }
derive instance newtypeDescribeInstancesRequest :: Newtype DescribeInstancesRequest _
derive instance repGenericDescribeInstancesRequest :: Generic DescribeInstancesRequest _
instance showDescribeInstancesRequest :: Show DescribeInstancesRequest where show = genericShow
instance decodeDescribeInstancesRequest :: Decode DescribeInstancesRequest where decode = genericDecode options
instance encodeDescribeInstancesRequest :: Encode DescribeInstancesRequest where encode = genericEncode options

-- | Constructs DescribeInstancesRequest from required parameters
newDescribeInstancesRequest :: DescribeInstancesRequest
newDescribeInstancesRequest  = DescribeInstancesRequest { "InstanceIds": Nothing, "LayerId": Nothing, "StackId": Nothing }

-- | Constructs DescribeInstancesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeInstancesRequest' :: ( { "StackId" :: Maybe (String) , "LayerId" :: Maybe (String) , "InstanceIds" :: Maybe (Strings) } -> {"StackId" :: Maybe (String) , "LayerId" :: Maybe (String) , "InstanceIds" :: Maybe (Strings) } ) -> DescribeInstancesRequest
newDescribeInstancesRequest'  customize = (DescribeInstancesRequest <<< customize) { "InstanceIds": Nothing, "LayerId": Nothing, "StackId": Nothing }



-- | <p>Contains the response to a <code>DescribeInstances</code> request.</p>
newtype DescribeInstancesResult = DescribeInstancesResult 
  { "Instances" :: Maybe (Instances)
  }
derive instance newtypeDescribeInstancesResult :: Newtype DescribeInstancesResult _
derive instance repGenericDescribeInstancesResult :: Generic DescribeInstancesResult _
instance showDescribeInstancesResult :: Show DescribeInstancesResult where show = genericShow
instance decodeDescribeInstancesResult :: Decode DescribeInstancesResult where decode = genericDecode options
instance encodeDescribeInstancesResult :: Encode DescribeInstancesResult where encode = genericEncode options

-- | Constructs DescribeInstancesResult from required parameters
newDescribeInstancesResult :: DescribeInstancesResult
newDescribeInstancesResult  = DescribeInstancesResult { "Instances": Nothing }

-- | Constructs DescribeInstancesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeInstancesResult' :: ( { "Instances" :: Maybe (Instances) } -> {"Instances" :: Maybe (Instances) } ) -> DescribeInstancesResult
newDescribeInstancesResult'  customize = (DescribeInstancesResult <<< customize) { "Instances": Nothing }



newtype DescribeLayersRequest = DescribeLayersRequest 
  { "StackId" :: Maybe (String)
  , "LayerIds" :: Maybe (Strings)
  }
derive instance newtypeDescribeLayersRequest :: Newtype DescribeLayersRequest _
derive instance repGenericDescribeLayersRequest :: Generic DescribeLayersRequest _
instance showDescribeLayersRequest :: Show DescribeLayersRequest where show = genericShow
instance decodeDescribeLayersRequest :: Decode DescribeLayersRequest where decode = genericDecode options
instance encodeDescribeLayersRequest :: Encode DescribeLayersRequest where encode = genericEncode options

-- | Constructs DescribeLayersRequest from required parameters
newDescribeLayersRequest :: DescribeLayersRequest
newDescribeLayersRequest  = DescribeLayersRequest { "LayerIds": Nothing, "StackId": Nothing }

-- | Constructs DescribeLayersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLayersRequest' :: ( { "StackId" :: Maybe (String) , "LayerIds" :: Maybe (Strings) } -> {"StackId" :: Maybe (String) , "LayerIds" :: Maybe (Strings) } ) -> DescribeLayersRequest
newDescribeLayersRequest'  customize = (DescribeLayersRequest <<< customize) { "LayerIds": Nothing, "StackId": Nothing }



-- | <p>Contains the response to a <code>DescribeLayers</code> request.</p>
newtype DescribeLayersResult = DescribeLayersResult 
  { "Layers" :: Maybe (Layers)
  }
derive instance newtypeDescribeLayersResult :: Newtype DescribeLayersResult _
derive instance repGenericDescribeLayersResult :: Generic DescribeLayersResult _
instance showDescribeLayersResult :: Show DescribeLayersResult where show = genericShow
instance decodeDescribeLayersResult :: Decode DescribeLayersResult where decode = genericDecode options
instance encodeDescribeLayersResult :: Encode DescribeLayersResult where encode = genericEncode options

-- | Constructs DescribeLayersResult from required parameters
newDescribeLayersResult :: DescribeLayersResult
newDescribeLayersResult  = DescribeLayersResult { "Layers": Nothing }

-- | Constructs DescribeLayersResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLayersResult' :: ( { "Layers" :: Maybe (Layers) } -> {"Layers" :: Maybe (Layers) } ) -> DescribeLayersResult
newDescribeLayersResult'  customize = (DescribeLayersResult <<< customize) { "Layers": Nothing }



newtype DescribeLoadBasedAutoScalingRequest = DescribeLoadBasedAutoScalingRequest 
  { "LayerIds" :: (Strings)
  }
derive instance newtypeDescribeLoadBasedAutoScalingRequest :: Newtype DescribeLoadBasedAutoScalingRequest _
derive instance repGenericDescribeLoadBasedAutoScalingRequest :: Generic DescribeLoadBasedAutoScalingRequest _
instance showDescribeLoadBasedAutoScalingRequest :: Show DescribeLoadBasedAutoScalingRequest where show = genericShow
instance decodeDescribeLoadBasedAutoScalingRequest :: Decode DescribeLoadBasedAutoScalingRequest where decode = genericDecode options
instance encodeDescribeLoadBasedAutoScalingRequest :: Encode DescribeLoadBasedAutoScalingRequest where encode = genericEncode options

-- | Constructs DescribeLoadBasedAutoScalingRequest from required parameters
newDescribeLoadBasedAutoScalingRequest :: Strings -> DescribeLoadBasedAutoScalingRequest
newDescribeLoadBasedAutoScalingRequest _LayerIds = DescribeLoadBasedAutoScalingRequest { "LayerIds": _LayerIds }

-- | Constructs DescribeLoadBasedAutoScalingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLoadBasedAutoScalingRequest' :: Strings -> ( { "LayerIds" :: (Strings) } -> {"LayerIds" :: (Strings) } ) -> DescribeLoadBasedAutoScalingRequest
newDescribeLoadBasedAutoScalingRequest' _LayerIds customize = (DescribeLoadBasedAutoScalingRequest <<< customize) { "LayerIds": _LayerIds }



-- | <p>Contains the response to a <code>DescribeLoadBasedAutoScaling</code> request.</p>
newtype DescribeLoadBasedAutoScalingResult = DescribeLoadBasedAutoScalingResult 
  { "LoadBasedAutoScalingConfigurations" :: Maybe (LoadBasedAutoScalingConfigurations)
  }
derive instance newtypeDescribeLoadBasedAutoScalingResult :: Newtype DescribeLoadBasedAutoScalingResult _
derive instance repGenericDescribeLoadBasedAutoScalingResult :: Generic DescribeLoadBasedAutoScalingResult _
instance showDescribeLoadBasedAutoScalingResult :: Show DescribeLoadBasedAutoScalingResult where show = genericShow
instance decodeDescribeLoadBasedAutoScalingResult :: Decode DescribeLoadBasedAutoScalingResult where decode = genericDecode options
instance encodeDescribeLoadBasedAutoScalingResult :: Encode DescribeLoadBasedAutoScalingResult where encode = genericEncode options

-- | Constructs DescribeLoadBasedAutoScalingResult from required parameters
newDescribeLoadBasedAutoScalingResult :: DescribeLoadBasedAutoScalingResult
newDescribeLoadBasedAutoScalingResult  = DescribeLoadBasedAutoScalingResult { "LoadBasedAutoScalingConfigurations": Nothing }

-- | Constructs DescribeLoadBasedAutoScalingResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLoadBasedAutoScalingResult' :: ( { "LoadBasedAutoScalingConfigurations" :: Maybe (LoadBasedAutoScalingConfigurations) } -> {"LoadBasedAutoScalingConfigurations" :: Maybe (LoadBasedAutoScalingConfigurations) } ) -> DescribeLoadBasedAutoScalingResult
newDescribeLoadBasedAutoScalingResult'  customize = (DescribeLoadBasedAutoScalingResult <<< customize) { "LoadBasedAutoScalingConfigurations": Nothing }



-- | <p>Contains the response to a <code>DescribeMyUserProfile</code> request.</p>
newtype DescribeMyUserProfileResult = DescribeMyUserProfileResult 
  { "UserProfile" :: Maybe (SelfUserProfile)
  }
derive instance newtypeDescribeMyUserProfileResult :: Newtype DescribeMyUserProfileResult _
derive instance repGenericDescribeMyUserProfileResult :: Generic DescribeMyUserProfileResult _
instance showDescribeMyUserProfileResult :: Show DescribeMyUserProfileResult where show = genericShow
instance decodeDescribeMyUserProfileResult :: Decode DescribeMyUserProfileResult where decode = genericDecode options
instance encodeDescribeMyUserProfileResult :: Encode DescribeMyUserProfileResult where encode = genericEncode options

-- | Constructs DescribeMyUserProfileResult from required parameters
newDescribeMyUserProfileResult :: DescribeMyUserProfileResult
newDescribeMyUserProfileResult  = DescribeMyUserProfileResult { "UserProfile": Nothing }

-- | Constructs DescribeMyUserProfileResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMyUserProfileResult' :: ( { "UserProfile" :: Maybe (SelfUserProfile) } -> {"UserProfile" :: Maybe (SelfUserProfile) } ) -> DescribeMyUserProfileResult
newDescribeMyUserProfileResult'  customize = (DescribeMyUserProfileResult <<< customize) { "UserProfile": Nothing }



-- | <p>The response to a <code>DescribeOperatingSystems</code> request.</p>
newtype DescribeOperatingSystemsResponse = DescribeOperatingSystemsResponse 
  { "OperatingSystems" :: Maybe (OperatingSystems)
  }
derive instance newtypeDescribeOperatingSystemsResponse :: Newtype DescribeOperatingSystemsResponse _
derive instance repGenericDescribeOperatingSystemsResponse :: Generic DescribeOperatingSystemsResponse _
instance showDescribeOperatingSystemsResponse :: Show DescribeOperatingSystemsResponse where show = genericShow
instance decodeDescribeOperatingSystemsResponse :: Decode DescribeOperatingSystemsResponse where decode = genericDecode options
instance encodeDescribeOperatingSystemsResponse :: Encode DescribeOperatingSystemsResponse where encode = genericEncode options

-- | Constructs DescribeOperatingSystemsResponse from required parameters
newDescribeOperatingSystemsResponse :: DescribeOperatingSystemsResponse
newDescribeOperatingSystemsResponse  = DescribeOperatingSystemsResponse { "OperatingSystems": Nothing }

-- | Constructs DescribeOperatingSystemsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeOperatingSystemsResponse' :: ( { "OperatingSystems" :: Maybe (OperatingSystems) } -> {"OperatingSystems" :: Maybe (OperatingSystems) } ) -> DescribeOperatingSystemsResponse
newDescribeOperatingSystemsResponse'  customize = (DescribeOperatingSystemsResponse <<< customize) { "OperatingSystems": Nothing }



newtype DescribePermissionsRequest = DescribePermissionsRequest 
  { "IamUserArn" :: Maybe (String)
  , "StackId" :: Maybe (String)
  }
derive instance newtypeDescribePermissionsRequest :: Newtype DescribePermissionsRequest _
derive instance repGenericDescribePermissionsRequest :: Generic DescribePermissionsRequest _
instance showDescribePermissionsRequest :: Show DescribePermissionsRequest where show = genericShow
instance decodeDescribePermissionsRequest :: Decode DescribePermissionsRequest where decode = genericDecode options
instance encodeDescribePermissionsRequest :: Encode DescribePermissionsRequest where encode = genericEncode options

-- | Constructs DescribePermissionsRequest from required parameters
newDescribePermissionsRequest :: DescribePermissionsRequest
newDescribePermissionsRequest  = DescribePermissionsRequest { "IamUserArn": Nothing, "StackId": Nothing }

-- | Constructs DescribePermissionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribePermissionsRequest' :: ( { "IamUserArn" :: Maybe (String) , "StackId" :: Maybe (String) } -> {"IamUserArn" :: Maybe (String) , "StackId" :: Maybe (String) } ) -> DescribePermissionsRequest
newDescribePermissionsRequest'  customize = (DescribePermissionsRequest <<< customize) { "IamUserArn": Nothing, "StackId": Nothing }



-- | <p>Contains the response to a <code>DescribePermissions</code> request.</p>
newtype DescribePermissionsResult = DescribePermissionsResult 
  { "Permissions" :: Maybe (Permissions)
  }
derive instance newtypeDescribePermissionsResult :: Newtype DescribePermissionsResult _
derive instance repGenericDescribePermissionsResult :: Generic DescribePermissionsResult _
instance showDescribePermissionsResult :: Show DescribePermissionsResult where show = genericShow
instance decodeDescribePermissionsResult :: Decode DescribePermissionsResult where decode = genericDecode options
instance encodeDescribePermissionsResult :: Encode DescribePermissionsResult where encode = genericEncode options

-- | Constructs DescribePermissionsResult from required parameters
newDescribePermissionsResult :: DescribePermissionsResult
newDescribePermissionsResult  = DescribePermissionsResult { "Permissions": Nothing }

-- | Constructs DescribePermissionsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribePermissionsResult' :: ( { "Permissions" :: Maybe (Permissions) } -> {"Permissions" :: Maybe (Permissions) } ) -> DescribePermissionsResult
newDescribePermissionsResult'  customize = (DescribePermissionsResult <<< customize) { "Permissions": Nothing }



newtype DescribeRaidArraysRequest = DescribeRaidArraysRequest 
  { "InstanceId" :: Maybe (String)
  , "StackId" :: Maybe (String)
  , "RaidArrayIds" :: Maybe (Strings)
  }
derive instance newtypeDescribeRaidArraysRequest :: Newtype DescribeRaidArraysRequest _
derive instance repGenericDescribeRaidArraysRequest :: Generic DescribeRaidArraysRequest _
instance showDescribeRaidArraysRequest :: Show DescribeRaidArraysRequest where show = genericShow
instance decodeDescribeRaidArraysRequest :: Decode DescribeRaidArraysRequest where decode = genericDecode options
instance encodeDescribeRaidArraysRequest :: Encode DescribeRaidArraysRequest where encode = genericEncode options

-- | Constructs DescribeRaidArraysRequest from required parameters
newDescribeRaidArraysRequest :: DescribeRaidArraysRequest
newDescribeRaidArraysRequest  = DescribeRaidArraysRequest { "InstanceId": Nothing, "RaidArrayIds": Nothing, "StackId": Nothing }

-- | Constructs DescribeRaidArraysRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRaidArraysRequest' :: ( { "InstanceId" :: Maybe (String) , "StackId" :: Maybe (String) , "RaidArrayIds" :: Maybe (Strings) } -> {"InstanceId" :: Maybe (String) , "StackId" :: Maybe (String) , "RaidArrayIds" :: Maybe (Strings) } ) -> DescribeRaidArraysRequest
newDescribeRaidArraysRequest'  customize = (DescribeRaidArraysRequest <<< customize) { "InstanceId": Nothing, "RaidArrayIds": Nothing, "StackId": Nothing }



-- | <p>Contains the response to a <code>DescribeRaidArrays</code> request.</p>
newtype DescribeRaidArraysResult = DescribeRaidArraysResult 
  { "RaidArrays" :: Maybe (RaidArrays)
  }
derive instance newtypeDescribeRaidArraysResult :: Newtype DescribeRaidArraysResult _
derive instance repGenericDescribeRaidArraysResult :: Generic DescribeRaidArraysResult _
instance showDescribeRaidArraysResult :: Show DescribeRaidArraysResult where show = genericShow
instance decodeDescribeRaidArraysResult :: Decode DescribeRaidArraysResult where decode = genericDecode options
instance encodeDescribeRaidArraysResult :: Encode DescribeRaidArraysResult where encode = genericEncode options

-- | Constructs DescribeRaidArraysResult from required parameters
newDescribeRaidArraysResult :: DescribeRaidArraysResult
newDescribeRaidArraysResult  = DescribeRaidArraysResult { "RaidArrays": Nothing }

-- | Constructs DescribeRaidArraysResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRaidArraysResult' :: ( { "RaidArrays" :: Maybe (RaidArrays) } -> {"RaidArrays" :: Maybe (RaidArrays) } ) -> DescribeRaidArraysResult
newDescribeRaidArraysResult'  customize = (DescribeRaidArraysResult <<< customize) { "RaidArrays": Nothing }



newtype DescribeRdsDbInstancesRequest = DescribeRdsDbInstancesRequest 
  { "StackId" :: (String)
  , "RdsDbInstanceArns" :: Maybe (Strings)
  }
derive instance newtypeDescribeRdsDbInstancesRequest :: Newtype DescribeRdsDbInstancesRequest _
derive instance repGenericDescribeRdsDbInstancesRequest :: Generic DescribeRdsDbInstancesRequest _
instance showDescribeRdsDbInstancesRequest :: Show DescribeRdsDbInstancesRequest where show = genericShow
instance decodeDescribeRdsDbInstancesRequest :: Decode DescribeRdsDbInstancesRequest where decode = genericDecode options
instance encodeDescribeRdsDbInstancesRequest :: Encode DescribeRdsDbInstancesRequest where encode = genericEncode options

-- | Constructs DescribeRdsDbInstancesRequest from required parameters
newDescribeRdsDbInstancesRequest :: String -> DescribeRdsDbInstancesRequest
newDescribeRdsDbInstancesRequest _StackId = DescribeRdsDbInstancesRequest { "StackId": _StackId, "RdsDbInstanceArns": Nothing }

-- | Constructs DescribeRdsDbInstancesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRdsDbInstancesRequest' :: String -> ( { "StackId" :: (String) , "RdsDbInstanceArns" :: Maybe (Strings) } -> {"StackId" :: (String) , "RdsDbInstanceArns" :: Maybe (Strings) } ) -> DescribeRdsDbInstancesRequest
newDescribeRdsDbInstancesRequest' _StackId customize = (DescribeRdsDbInstancesRequest <<< customize) { "StackId": _StackId, "RdsDbInstanceArns": Nothing }



-- | <p>Contains the response to a <code>DescribeRdsDbInstances</code> request.</p>
newtype DescribeRdsDbInstancesResult = DescribeRdsDbInstancesResult 
  { "RdsDbInstances" :: Maybe (RdsDbInstances)
  }
derive instance newtypeDescribeRdsDbInstancesResult :: Newtype DescribeRdsDbInstancesResult _
derive instance repGenericDescribeRdsDbInstancesResult :: Generic DescribeRdsDbInstancesResult _
instance showDescribeRdsDbInstancesResult :: Show DescribeRdsDbInstancesResult where show = genericShow
instance decodeDescribeRdsDbInstancesResult :: Decode DescribeRdsDbInstancesResult where decode = genericDecode options
instance encodeDescribeRdsDbInstancesResult :: Encode DescribeRdsDbInstancesResult where encode = genericEncode options

-- | Constructs DescribeRdsDbInstancesResult from required parameters
newDescribeRdsDbInstancesResult :: DescribeRdsDbInstancesResult
newDescribeRdsDbInstancesResult  = DescribeRdsDbInstancesResult { "RdsDbInstances": Nothing }

-- | Constructs DescribeRdsDbInstancesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRdsDbInstancesResult' :: ( { "RdsDbInstances" :: Maybe (RdsDbInstances) } -> {"RdsDbInstances" :: Maybe (RdsDbInstances) } ) -> DescribeRdsDbInstancesResult
newDescribeRdsDbInstancesResult'  customize = (DescribeRdsDbInstancesResult <<< customize) { "RdsDbInstances": Nothing }



newtype DescribeServiceErrorsRequest = DescribeServiceErrorsRequest 
  { "StackId" :: Maybe (String)
  , "InstanceId" :: Maybe (String)
  , "ServiceErrorIds" :: Maybe (Strings)
  }
derive instance newtypeDescribeServiceErrorsRequest :: Newtype DescribeServiceErrorsRequest _
derive instance repGenericDescribeServiceErrorsRequest :: Generic DescribeServiceErrorsRequest _
instance showDescribeServiceErrorsRequest :: Show DescribeServiceErrorsRequest where show = genericShow
instance decodeDescribeServiceErrorsRequest :: Decode DescribeServiceErrorsRequest where decode = genericDecode options
instance encodeDescribeServiceErrorsRequest :: Encode DescribeServiceErrorsRequest where encode = genericEncode options

-- | Constructs DescribeServiceErrorsRequest from required parameters
newDescribeServiceErrorsRequest :: DescribeServiceErrorsRequest
newDescribeServiceErrorsRequest  = DescribeServiceErrorsRequest { "InstanceId": Nothing, "ServiceErrorIds": Nothing, "StackId": Nothing }

-- | Constructs DescribeServiceErrorsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServiceErrorsRequest' :: ( { "StackId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "ServiceErrorIds" :: Maybe (Strings) } -> {"StackId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "ServiceErrorIds" :: Maybe (Strings) } ) -> DescribeServiceErrorsRequest
newDescribeServiceErrorsRequest'  customize = (DescribeServiceErrorsRequest <<< customize) { "InstanceId": Nothing, "ServiceErrorIds": Nothing, "StackId": Nothing }



-- | <p>Contains the response to a <code>DescribeServiceErrors</code> request.</p>
newtype DescribeServiceErrorsResult = DescribeServiceErrorsResult 
  { "ServiceErrors" :: Maybe (ServiceErrors)
  }
derive instance newtypeDescribeServiceErrorsResult :: Newtype DescribeServiceErrorsResult _
derive instance repGenericDescribeServiceErrorsResult :: Generic DescribeServiceErrorsResult _
instance showDescribeServiceErrorsResult :: Show DescribeServiceErrorsResult where show = genericShow
instance decodeDescribeServiceErrorsResult :: Decode DescribeServiceErrorsResult where decode = genericDecode options
instance encodeDescribeServiceErrorsResult :: Encode DescribeServiceErrorsResult where encode = genericEncode options

-- | Constructs DescribeServiceErrorsResult from required parameters
newDescribeServiceErrorsResult :: DescribeServiceErrorsResult
newDescribeServiceErrorsResult  = DescribeServiceErrorsResult { "ServiceErrors": Nothing }

-- | Constructs DescribeServiceErrorsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServiceErrorsResult' :: ( { "ServiceErrors" :: Maybe (ServiceErrors) } -> {"ServiceErrors" :: Maybe (ServiceErrors) } ) -> DescribeServiceErrorsResult
newDescribeServiceErrorsResult'  customize = (DescribeServiceErrorsResult <<< customize) { "ServiceErrors": Nothing }



newtype DescribeStackProvisioningParametersRequest = DescribeStackProvisioningParametersRequest 
  { "StackId" :: (String)
  }
derive instance newtypeDescribeStackProvisioningParametersRequest :: Newtype DescribeStackProvisioningParametersRequest _
derive instance repGenericDescribeStackProvisioningParametersRequest :: Generic DescribeStackProvisioningParametersRequest _
instance showDescribeStackProvisioningParametersRequest :: Show DescribeStackProvisioningParametersRequest where show = genericShow
instance decodeDescribeStackProvisioningParametersRequest :: Decode DescribeStackProvisioningParametersRequest where decode = genericDecode options
instance encodeDescribeStackProvisioningParametersRequest :: Encode DescribeStackProvisioningParametersRequest where encode = genericEncode options

-- | Constructs DescribeStackProvisioningParametersRequest from required parameters
newDescribeStackProvisioningParametersRequest :: String -> DescribeStackProvisioningParametersRequest
newDescribeStackProvisioningParametersRequest _StackId = DescribeStackProvisioningParametersRequest { "StackId": _StackId }

-- | Constructs DescribeStackProvisioningParametersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStackProvisioningParametersRequest' :: String -> ( { "StackId" :: (String) } -> {"StackId" :: (String) } ) -> DescribeStackProvisioningParametersRequest
newDescribeStackProvisioningParametersRequest' _StackId customize = (DescribeStackProvisioningParametersRequest <<< customize) { "StackId": _StackId }



-- | <p>Contains the response to a <code>DescribeStackProvisioningParameters</code> request.</p>
newtype DescribeStackProvisioningParametersResult = DescribeStackProvisioningParametersResult 
  { "AgentInstallerUrl" :: Maybe (String)
  , "Parameters" :: Maybe (Parameters)
  }
derive instance newtypeDescribeStackProvisioningParametersResult :: Newtype DescribeStackProvisioningParametersResult _
derive instance repGenericDescribeStackProvisioningParametersResult :: Generic DescribeStackProvisioningParametersResult _
instance showDescribeStackProvisioningParametersResult :: Show DescribeStackProvisioningParametersResult where show = genericShow
instance decodeDescribeStackProvisioningParametersResult :: Decode DescribeStackProvisioningParametersResult where decode = genericDecode options
instance encodeDescribeStackProvisioningParametersResult :: Encode DescribeStackProvisioningParametersResult where encode = genericEncode options

-- | Constructs DescribeStackProvisioningParametersResult from required parameters
newDescribeStackProvisioningParametersResult :: DescribeStackProvisioningParametersResult
newDescribeStackProvisioningParametersResult  = DescribeStackProvisioningParametersResult { "AgentInstallerUrl": Nothing, "Parameters": Nothing }

-- | Constructs DescribeStackProvisioningParametersResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStackProvisioningParametersResult' :: ( { "AgentInstallerUrl" :: Maybe (String) , "Parameters" :: Maybe (Parameters) } -> {"AgentInstallerUrl" :: Maybe (String) , "Parameters" :: Maybe (Parameters) } ) -> DescribeStackProvisioningParametersResult
newDescribeStackProvisioningParametersResult'  customize = (DescribeStackProvisioningParametersResult <<< customize) { "AgentInstallerUrl": Nothing, "Parameters": Nothing }



newtype DescribeStackSummaryRequest = DescribeStackSummaryRequest 
  { "StackId" :: (String)
  }
derive instance newtypeDescribeStackSummaryRequest :: Newtype DescribeStackSummaryRequest _
derive instance repGenericDescribeStackSummaryRequest :: Generic DescribeStackSummaryRequest _
instance showDescribeStackSummaryRequest :: Show DescribeStackSummaryRequest where show = genericShow
instance decodeDescribeStackSummaryRequest :: Decode DescribeStackSummaryRequest where decode = genericDecode options
instance encodeDescribeStackSummaryRequest :: Encode DescribeStackSummaryRequest where encode = genericEncode options

-- | Constructs DescribeStackSummaryRequest from required parameters
newDescribeStackSummaryRequest :: String -> DescribeStackSummaryRequest
newDescribeStackSummaryRequest _StackId = DescribeStackSummaryRequest { "StackId": _StackId }

-- | Constructs DescribeStackSummaryRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStackSummaryRequest' :: String -> ( { "StackId" :: (String) } -> {"StackId" :: (String) } ) -> DescribeStackSummaryRequest
newDescribeStackSummaryRequest' _StackId customize = (DescribeStackSummaryRequest <<< customize) { "StackId": _StackId }



-- | <p>Contains the response to a <code>DescribeStackSummary</code> request.</p>
newtype DescribeStackSummaryResult = DescribeStackSummaryResult 
  { "StackSummary" :: Maybe (StackSummary)
  }
derive instance newtypeDescribeStackSummaryResult :: Newtype DescribeStackSummaryResult _
derive instance repGenericDescribeStackSummaryResult :: Generic DescribeStackSummaryResult _
instance showDescribeStackSummaryResult :: Show DescribeStackSummaryResult where show = genericShow
instance decodeDescribeStackSummaryResult :: Decode DescribeStackSummaryResult where decode = genericDecode options
instance encodeDescribeStackSummaryResult :: Encode DescribeStackSummaryResult where encode = genericEncode options

-- | Constructs DescribeStackSummaryResult from required parameters
newDescribeStackSummaryResult :: DescribeStackSummaryResult
newDescribeStackSummaryResult  = DescribeStackSummaryResult { "StackSummary": Nothing }

-- | Constructs DescribeStackSummaryResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStackSummaryResult' :: ( { "StackSummary" :: Maybe (StackSummary) } -> {"StackSummary" :: Maybe (StackSummary) } ) -> DescribeStackSummaryResult
newDescribeStackSummaryResult'  customize = (DescribeStackSummaryResult <<< customize) { "StackSummary": Nothing }



newtype DescribeStacksRequest = DescribeStacksRequest 
  { "StackIds" :: Maybe (Strings)
  }
derive instance newtypeDescribeStacksRequest :: Newtype DescribeStacksRequest _
derive instance repGenericDescribeStacksRequest :: Generic DescribeStacksRequest _
instance showDescribeStacksRequest :: Show DescribeStacksRequest where show = genericShow
instance decodeDescribeStacksRequest :: Decode DescribeStacksRequest where decode = genericDecode options
instance encodeDescribeStacksRequest :: Encode DescribeStacksRequest where encode = genericEncode options

-- | Constructs DescribeStacksRequest from required parameters
newDescribeStacksRequest :: DescribeStacksRequest
newDescribeStacksRequest  = DescribeStacksRequest { "StackIds": Nothing }

-- | Constructs DescribeStacksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStacksRequest' :: ( { "StackIds" :: Maybe (Strings) } -> {"StackIds" :: Maybe (Strings) } ) -> DescribeStacksRequest
newDescribeStacksRequest'  customize = (DescribeStacksRequest <<< customize) { "StackIds": Nothing }



-- | <p>Contains the response to a <code>DescribeStacks</code> request.</p>
newtype DescribeStacksResult = DescribeStacksResult 
  { "Stacks" :: Maybe (Stacks)
  }
derive instance newtypeDescribeStacksResult :: Newtype DescribeStacksResult _
derive instance repGenericDescribeStacksResult :: Generic DescribeStacksResult _
instance showDescribeStacksResult :: Show DescribeStacksResult where show = genericShow
instance decodeDescribeStacksResult :: Decode DescribeStacksResult where decode = genericDecode options
instance encodeDescribeStacksResult :: Encode DescribeStacksResult where encode = genericEncode options

-- | Constructs DescribeStacksResult from required parameters
newDescribeStacksResult :: DescribeStacksResult
newDescribeStacksResult  = DescribeStacksResult { "Stacks": Nothing }

-- | Constructs DescribeStacksResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStacksResult' :: ( { "Stacks" :: Maybe (Stacks) } -> {"Stacks" :: Maybe (Stacks) } ) -> DescribeStacksResult
newDescribeStacksResult'  customize = (DescribeStacksResult <<< customize) { "Stacks": Nothing }



newtype DescribeTimeBasedAutoScalingRequest = DescribeTimeBasedAutoScalingRequest 
  { "InstanceIds" :: (Strings)
  }
derive instance newtypeDescribeTimeBasedAutoScalingRequest :: Newtype DescribeTimeBasedAutoScalingRequest _
derive instance repGenericDescribeTimeBasedAutoScalingRequest :: Generic DescribeTimeBasedAutoScalingRequest _
instance showDescribeTimeBasedAutoScalingRequest :: Show DescribeTimeBasedAutoScalingRequest where show = genericShow
instance decodeDescribeTimeBasedAutoScalingRequest :: Decode DescribeTimeBasedAutoScalingRequest where decode = genericDecode options
instance encodeDescribeTimeBasedAutoScalingRequest :: Encode DescribeTimeBasedAutoScalingRequest where encode = genericEncode options

-- | Constructs DescribeTimeBasedAutoScalingRequest from required parameters
newDescribeTimeBasedAutoScalingRequest :: Strings -> DescribeTimeBasedAutoScalingRequest
newDescribeTimeBasedAutoScalingRequest _InstanceIds = DescribeTimeBasedAutoScalingRequest { "InstanceIds": _InstanceIds }

-- | Constructs DescribeTimeBasedAutoScalingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTimeBasedAutoScalingRequest' :: Strings -> ( { "InstanceIds" :: (Strings) } -> {"InstanceIds" :: (Strings) } ) -> DescribeTimeBasedAutoScalingRequest
newDescribeTimeBasedAutoScalingRequest' _InstanceIds customize = (DescribeTimeBasedAutoScalingRequest <<< customize) { "InstanceIds": _InstanceIds }



-- | <p>Contains the response to a <code>DescribeTimeBasedAutoScaling</code> request.</p>
newtype DescribeTimeBasedAutoScalingResult = DescribeTimeBasedAutoScalingResult 
  { "TimeBasedAutoScalingConfigurations" :: Maybe (TimeBasedAutoScalingConfigurations)
  }
derive instance newtypeDescribeTimeBasedAutoScalingResult :: Newtype DescribeTimeBasedAutoScalingResult _
derive instance repGenericDescribeTimeBasedAutoScalingResult :: Generic DescribeTimeBasedAutoScalingResult _
instance showDescribeTimeBasedAutoScalingResult :: Show DescribeTimeBasedAutoScalingResult where show = genericShow
instance decodeDescribeTimeBasedAutoScalingResult :: Decode DescribeTimeBasedAutoScalingResult where decode = genericDecode options
instance encodeDescribeTimeBasedAutoScalingResult :: Encode DescribeTimeBasedAutoScalingResult where encode = genericEncode options

-- | Constructs DescribeTimeBasedAutoScalingResult from required parameters
newDescribeTimeBasedAutoScalingResult :: DescribeTimeBasedAutoScalingResult
newDescribeTimeBasedAutoScalingResult  = DescribeTimeBasedAutoScalingResult { "TimeBasedAutoScalingConfigurations": Nothing }

-- | Constructs DescribeTimeBasedAutoScalingResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTimeBasedAutoScalingResult' :: ( { "TimeBasedAutoScalingConfigurations" :: Maybe (TimeBasedAutoScalingConfigurations) } -> {"TimeBasedAutoScalingConfigurations" :: Maybe (TimeBasedAutoScalingConfigurations) } ) -> DescribeTimeBasedAutoScalingResult
newDescribeTimeBasedAutoScalingResult'  customize = (DescribeTimeBasedAutoScalingResult <<< customize) { "TimeBasedAutoScalingConfigurations": Nothing }



newtype DescribeUserProfilesRequest = DescribeUserProfilesRequest 
  { "IamUserArns" :: Maybe (Strings)
  }
derive instance newtypeDescribeUserProfilesRequest :: Newtype DescribeUserProfilesRequest _
derive instance repGenericDescribeUserProfilesRequest :: Generic DescribeUserProfilesRequest _
instance showDescribeUserProfilesRequest :: Show DescribeUserProfilesRequest where show = genericShow
instance decodeDescribeUserProfilesRequest :: Decode DescribeUserProfilesRequest where decode = genericDecode options
instance encodeDescribeUserProfilesRequest :: Encode DescribeUserProfilesRequest where encode = genericEncode options

-- | Constructs DescribeUserProfilesRequest from required parameters
newDescribeUserProfilesRequest :: DescribeUserProfilesRequest
newDescribeUserProfilesRequest  = DescribeUserProfilesRequest { "IamUserArns": Nothing }

-- | Constructs DescribeUserProfilesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUserProfilesRequest' :: ( { "IamUserArns" :: Maybe (Strings) } -> {"IamUserArns" :: Maybe (Strings) } ) -> DescribeUserProfilesRequest
newDescribeUserProfilesRequest'  customize = (DescribeUserProfilesRequest <<< customize) { "IamUserArns": Nothing }



-- | <p>Contains the response to a <code>DescribeUserProfiles</code> request.</p>
newtype DescribeUserProfilesResult = DescribeUserProfilesResult 
  { "UserProfiles" :: Maybe (UserProfiles)
  }
derive instance newtypeDescribeUserProfilesResult :: Newtype DescribeUserProfilesResult _
derive instance repGenericDescribeUserProfilesResult :: Generic DescribeUserProfilesResult _
instance showDescribeUserProfilesResult :: Show DescribeUserProfilesResult where show = genericShow
instance decodeDescribeUserProfilesResult :: Decode DescribeUserProfilesResult where decode = genericDecode options
instance encodeDescribeUserProfilesResult :: Encode DescribeUserProfilesResult where encode = genericEncode options

-- | Constructs DescribeUserProfilesResult from required parameters
newDescribeUserProfilesResult :: DescribeUserProfilesResult
newDescribeUserProfilesResult  = DescribeUserProfilesResult { "UserProfiles": Nothing }

-- | Constructs DescribeUserProfilesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUserProfilesResult' :: ( { "UserProfiles" :: Maybe (UserProfiles) } -> {"UserProfiles" :: Maybe (UserProfiles) } ) -> DescribeUserProfilesResult
newDescribeUserProfilesResult'  customize = (DescribeUserProfilesResult <<< customize) { "UserProfiles": Nothing }



newtype DescribeVolumesRequest = DescribeVolumesRequest 
  { "InstanceId" :: Maybe (String)
  , "StackId" :: Maybe (String)
  , "RaidArrayId" :: Maybe (String)
  , "VolumeIds" :: Maybe (Strings)
  }
derive instance newtypeDescribeVolumesRequest :: Newtype DescribeVolumesRequest _
derive instance repGenericDescribeVolumesRequest :: Generic DescribeVolumesRequest _
instance showDescribeVolumesRequest :: Show DescribeVolumesRequest where show = genericShow
instance decodeDescribeVolumesRequest :: Decode DescribeVolumesRequest where decode = genericDecode options
instance encodeDescribeVolumesRequest :: Encode DescribeVolumesRequest where encode = genericEncode options

-- | Constructs DescribeVolumesRequest from required parameters
newDescribeVolumesRequest :: DescribeVolumesRequest
newDescribeVolumesRequest  = DescribeVolumesRequest { "InstanceId": Nothing, "RaidArrayId": Nothing, "StackId": Nothing, "VolumeIds": Nothing }

-- | Constructs DescribeVolumesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeVolumesRequest' :: ( { "InstanceId" :: Maybe (String) , "StackId" :: Maybe (String) , "RaidArrayId" :: Maybe (String) , "VolumeIds" :: Maybe (Strings) } -> {"InstanceId" :: Maybe (String) , "StackId" :: Maybe (String) , "RaidArrayId" :: Maybe (String) , "VolumeIds" :: Maybe (Strings) } ) -> DescribeVolumesRequest
newDescribeVolumesRequest'  customize = (DescribeVolumesRequest <<< customize) { "InstanceId": Nothing, "RaidArrayId": Nothing, "StackId": Nothing, "VolumeIds": Nothing }



-- | <p>Contains the response to a <code>DescribeVolumes</code> request.</p>
newtype DescribeVolumesResult = DescribeVolumesResult 
  { "Volumes" :: Maybe (Volumes)
  }
derive instance newtypeDescribeVolumesResult :: Newtype DescribeVolumesResult _
derive instance repGenericDescribeVolumesResult :: Generic DescribeVolumesResult _
instance showDescribeVolumesResult :: Show DescribeVolumesResult where show = genericShow
instance decodeDescribeVolumesResult :: Decode DescribeVolumesResult where decode = genericDecode options
instance encodeDescribeVolumesResult :: Encode DescribeVolumesResult where encode = genericEncode options

-- | Constructs DescribeVolumesResult from required parameters
newDescribeVolumesResult :: DescribeVolumesResult
newDescribeVolumesResult  = DescribeVolumesResult { "Volumes": Nothing }

-- | Constructs DescribeVolumesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeVolumesResult' :: ( { "Volumes" :: Maybe (Volumes) } -> {"Volumes" :: Maybe (Volumes) } ) -> DescribeVolumesResult
newDescribeVolumesResult'  customize = (DescribeVolumesResult <<< customize) { "Volumes": Nothing }



newtype DetachElasticLoadBalancerRequest = DetachElasticLoadBalancerRequest 
  { "ElasticLoadBalancerName" :: (String)
  , "LayerId" :: (String)
  }
derive instance newtypeDetachElasticLoadBalancerRequest :: Newtype DetachElasticLoadBalancerRequest _
derive instance repGenericDetachElasticLoadBalancerRequest :: Generic DetachElasticLoadBalancerRequest _
instance showDetachElasticLoadBalancerRequest :: Show DetachElasticLoadBalancerRequest where show = genericShow
instance decodeDetachElasticLoadBalancerRequest :: Decode DetachElasticLoadBalancerRequest where decode = genericDecode options
instance encodeDetachElasticLoadBalancerRequest :: Encode DetachElasticLoadBalancerRequest where encode = genericEncode options

-- | Constructs DetachElasticLoadBalancerRequest from required parameters
newDetachElasticLoadBalancerRequest :: String -> String -> DetachElasticLoadBalancerRequest
newDetachElasticLoadBalancerRequest _ElasticLoadBalancerName _LayerId = DetachElasticLoadBalancerRequest { "ElasticLoadBalancerName": _ElasticLoadBalancerName, "LayerId": _LayerId }

-- | Constructs DetachElasticLoadBalancerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetachElasticLoadBalancerRequest' :: String -> String -> ( { "ElasticLoadBalancerName" :: (String) , "LayerId" :: (String) } -> {"ElasticLoadBalancerName" :: (String) , "LayerId" :: (String) } ) -> DetachElasticLoadBalancerRequest
newDetachElasticLoadBalancerRequest' _ElasticLoadBalancerName _LayerId customize = (DetachElasticLoadBalancerRequest <<< customize) { "ElasticLoadBalancerName": _ElasticLoadBalancerName, "LayerId": _LayerId }



newtype DisassociateElasticIpRequest = DisassociateElasticIpRequest 
  { "ElasticIp" :: (String)
  }
derive instance newtypeDisassociateElasticIpRequest :: Newtype DisassociateElasticIpRequest _
derive instance repGenericDisassociateElasticIpRequest :: Generic DisassociateElasticIpRequest _
instance showDisassociateElasticIpRequest :: Show DisassociateElasticIpRequest where show = genericShow
instance decodeDisassociateElasticIpRequest :: Decode DisassociateElasticIpRequest where decode = genericDecode options
instance encodeDisassociateElasticIpRequest :: Encode DisassociateElasticIpRequest where encode = genericEncode options

-- | Constructs DisassociateElasticIpRequest from required parameters
newDisassociateElasticIpRequest :: String -> DisassociateElasticIpRequest
newDisassociateElasticIpRequest _ElasticIp = DisassociateElasticIpRequest { "ElasticIp": _ElasticIp }

-- | Constructs DisassociateElasticIpRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateElasticIpRequest' :: String -> ( { "ElasticIp" :: (String) } -> {"ElasticIp" :: (String) } ) -> DisassociateElasticIpRequest
newDisassociateElasticIpRequest' _ElasticIp customize = (DisassociateElasticIpRequest <<< customize) { "ElasticIp": _ElasticIp }



-- | <p>Describes an Amazon EBS volume. This data type maps directly to the Amazon EC2 <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a> data type.</p>
newtype EbsBlockDevice = EbsBlockDevice 
  { "SnapshotId" :: Maybe (String)
  , "Iops" :: Maybe (Int)
  , "VolumeSize" :: Maybe (Int)
  , "VolumeType" :: Maybe (VolumeType)
  , "DeleteOnTermination" :: Maybe (Boolean)
  }
derive instance newtypeEbsBlockDevice :: Newtype EbsBlockDevice _
derive instance repGenericEbsBlockDevice :: Generic EbsBlockDevice _
instance showEbsBlockDevice :: Show EbsBlockDevice where show = genericShow
instance decodeEbsBlockDevice :: Decode EbsBlockDevice where decode = genericDecode options
instance encodeEbsBlockDevice :: Encode EbsBlockDevice where encode = genericEncode options

-- | Constructs EbsBlockDevice from required parameters
newEbsBlockDevice :: EbsBlockDevice
newEbsBlockDevice  = EbsBlockDevice { "DeleteOnTermination": Nothing, "Iops": Nothing, "SnapshotId": Nothing, "VolumeSize": Nothing, "VolumeType": Nothing }

-- | Constructs EbsBlockDevice's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEbsBlockDevice' :: ( { "SnapshotId" :: Maybe (String) , "Iops" :: Maybe (Int) , "VolumeSize" :: Maybe (Int) , "VolumeType" :: Maybe (VolumeType) , "DeleteOnTermination" :: Maybe (Boolean) } -> {"SnapshotId" :: Maybe (String) , "Iops" :: Maybe (Int) , "VolumeSize" :: Maybe (Int) , "VolumeType" :: Maybe (VolumeType) , "DeleteOnTermination" :: Maybe (Boolean) } ) -> EbsBlockDevice
newEbsBlockDevice'  customize = (EbsBlockDevice <<< customize) { "DeleteOnTermination": Nothing, "Iops": Nothing, "SnapshotId": Nothing, "VolumeSize": Nothing, "VolumeType": Nothing }



-- | <p>Describes a registered Amazon ECS cluster.</p>
newtype EcsCluster = EcsCluster 
  { "EcsClusterArn" :: Maybe (String)
  , "EcsClusterName" :: Maybe (String)
  , "StackId" :: Maybe (String)
  , "RegisteredAt" :: Maybe (DateTime)
  }
derive instance newtypeEcsCluster :: Newtype EcsCluster _
derive instance repGenericEcsCluster :: Generic EcsCluster _
instance showEcsCluster :: Show EcsCluster where show = genericShow
instance decodeEcsCluster :: Decode EcsCluster where decode = genericDecode options
instance encodeEcsCluster :: Encode EcsCluster where encode = genericEncode options

-- | Constructs EcsCluster from required parameters
newEcsCluster :: EcsCluster
newEcsCluster  = EcsCluster { "EcsClusterArn": Nothing, "EcsClusterName": Nothing, "RegisteredAt": Nothing, "StackId": Nothing }

-- | Constructs EcsCluster's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEcsCluster' :: ( { "EcsClusterArn" :: Maybe (String) , "EcsClusterName" :: Maybe (String) , "StackId" :: Maybe (String) , "RegisteredAt" :: Maybe (DateTime) } -> {"EcsClusterArn" :: Maybe (String) , "EcsClusterName" :: Maybe (String) , "StackId" :: Maybe (String) , "RegisteredAt" :: Maybe (DateTime) } ) -> EcsCluster
newEcsCluster'  customize = (EcsCluster <<< customize) { "EcsClusterArn": Nothing, "EcsClusterName": Nothing, "RegisteredAt": Nothing, "StackId": Nothing }



newtype EcsClusters = EcsClusters (Array EcsCluster)
derive instance newtypeEcsClusters :: Newtype EcsClusters _
derive instance repGenericEcsClusters :: Generic EcsClusters _
instance showEcsClusters :: Show EcsClusters where show = genericShow
instance decodeEcsClusters :: Decode EcsClusters where decode = genericDecode options
instance encodeEcsClusters :: Encode EcsClusters where encode = genericEncode options



-- | <p>Describes an Elastic IP address.</p>
newtype ElasticIp = ElasticIp 
  { "Ip" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "Domain" :: Maybe (String)
  , "Region" :: Maybe (String)
  , "InstanceId" :: Maybe (String)
  }
derive instance newtypeElasticIp :: Newtype ElasticIp _
derive instance repGenericElasticIp :: Generic ElasticIp _
instance showElasticIp :: Show ElasticIp where show = genericShow
instance decodeElasticIp :: Decode ElasticIp where decode = genericDecode options
instance encodeElasticIp :: Encode ElasticIp where encode = genericEncode options

-- | Constructs ElasticIp from required parameters
newElasticIp :: ElasticIp
newElasticIp  = ElasticIp { "Domain": Nothing, "InstanceId": Nothing, "Ip": Nothing, "Name": Nothing, "Region": Nothing }

-- | Constructs ElasticIp's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newElasticIp' :: ( { "Ip" :: Maybe (String) , "Name" :: Maybe (String) , "Domain" :: Maybe (String) , "Region" :: Maybe (String) , "InstanceId" :: Maybe (String) } -> {"Ip" :: Maybe (String) , "Name" :: Maybe (String) , "Domain" :: Maybe (String) , "Region" :: Maybe (String) , "InstanceId" :: Maybe (String) } ) -> ElasticIp
newElasticIp'  customize = (ElasticIp <<< customize) { "Domain": Nothing, "InstanceId": Nothing, "Ip": Nothing, "Name": Nothing, "Region": Nothing }



newtype ElasticIps = ElasticIps (Array ElasticIp)
derive instance newtypeElasticIps :: Newtype ElasticIps _
derive instance repGenericElasticIps :: Generic ElasticIps _
instance showElasticIps :: Show ElasticIps where show = genericShow
instance decodeElasticIps :: Decode ElasticIps where decode = genericDecode options
instance encodeElasticIps :: Encode ElasticIps where encode = genericEncode options



-- | <p>Describes an Elastic Load Balancing instance.</p>
newtype ElasticLoadBalancer = ElasticLoadBalancer 
  { "ElasticLoadBalancerName" :: Maybe (String)
  , "Region" :: Maybe (String)
  , "DnsName" :: Maybe (String)
  , "StackId" :: Maybe (String)
  , "LayerId" :: Maybe (String)
  , "VpcId" :: Maybe (String)
  , "AvailabilityZones" :: Maybe (Strings)
  , "SubnetIds" :: Maybe (Strings)
  , "Ec2InstanceIds" :: Maybe (Strings)
  }
derive instance newtypeElasticLoadBalancer :: Newtype ElasticLoadBalancer _
derive instance repGenericElasticLoadBalancer :: Generic ElasticLoadBalancer _
instance showElasticLoadBalancer :: Show ElasticLoadBalancer where show = genericShow
instance decodeElasticLoadBalancer :: Decode ElasticLoadBalancer where decode = genericDecode options
instance encodeElasticLoadBalancer :: Encode ElasticLoadBalancer where encode = genericEncode options

-- | Constructs ElasticLoadBalancer from required parameters
newElasticLoadBalancer :: ElasticLoadBalancer
newElasticLoadBalancer  = ElasticLoadBalancer { "AvailabilityZones": Nothing, "DnsName": Nothing, "Ec2InstanceIds": Nothing, "ElasticLoadBalancerName": Nothing, "LayerId": Nothing, "Region": Nothing, "StackId": Nothing, "SubnetIds": Nothing, "VpcId": Nothing }

-- | Constructs ElasticLoadBalancer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newElasticLoadBalancer' :: ( { "ElasticLoadBalancerName" :: Maybe (String) , "Region" :: Maybe (String) , "DnsName" :: Maybe (String) , "StackId" :: Maybe (String) , "LayerId" :: Maybe (String) , "VpcId" :: Maybe (String) , "AvailabilityZones" :: Maybe (Strings) , "SubnetIds" :: Maybe (Strings) , "Ec2InstanceIds" :: Maybe (Strings) } -> {"ElasticLoadBalancerName" :: Maybe (String) , "Region" :: Maybe (String) , "DnsName" :: Maybe (String) , "StackId" :: Maybe (String) , "LayerId" :: Maybe (String) , "VpcId" :: Maybe (String) , "AvailabilityZones" :: Maybe (Strings) , "SubnetIds" :: Maybe (Strings) , "Ec2InstanceIds" :: Maybe (Strings) } ) -> ElasticLoadBalancer
newElasticLoadBalancer'  customize = (ElasticLoadBalancer <<< customize) { "AvailabilityZones": Nothing, "DnsName": Nothing, "Ec2InstanceIds": Nothing, "ElasticLoadBalancerName": Nothing, "LayerId": Nothing, "Region": Nothing, "StackId": Nothing, "SubnetIds": Nothing, "VpcId": Nothing }



newtype ElasticLoadBalancers = ElasticLoadBalancers (Array ElasticLoadBalancer)
derive instance newtypeElasticLoadBalancers :: Newtype ElasticLoadBalancers _
derive instance repGenericElasticLoadBalancers :: Generic ElasticLoadBalancers _
instance showElasticLoadBalancers :: Show ElasticLoadBalancers where show = genericShow
instance decodeElasticLoadBalancers :: Decode ElasticLoadBalancers where decode = genericDecode options
instance encodeElasticLoadBalancers :: Encode ElasticLoadBalancers where encode = genericEncode options



-- | <p>Represents an app's environment variable.</p>
newtype EnvironmentVariable = EnvironmentVariable 
  { "Key" :: (String)
  , "Value" :: (String)
  , "Secure" :: Maybe (Boolean)
  }
derive instance newtypeEnvironmentVariable :: Newtype EnvironmentVariable _
derive instance repGenericEnvironmentVariable :: Generic EnvironmentVariable _
instance showEnvironmentVariable :: Show EnvironmentVariable where show = genericShow
instance decodeEnvironmentVariable :: Decode EnvironmentVariable where decode = genericDecode options
instance encodeEnvironmentVariable :: Encode EnvironmentVariable where encode = genericEncode options

-- | Constructs EnvironmentVariable from required parameters
newEnvironmentVariable :: String -> String -> EnvironmentVariable
newEnvironmentVariable _Key _Value = EnvironmentVariable { "Key": _Key, "Value": _Value, "Secure": Nothing }

-- | Constructs EnvironmentVariable's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironmentVariable' :: String -> String -> ( { "Key" :: (String) , "Value" :: (String) , "Secure" :: Maybe (Boolean) } -> {"Key" :: (String) , "Value" :: (String) , "Secure" :: Maybe (Boolean) } ) -> EnvironmentVariable
newEnvironmentVariable' _Key _Value customize = (EnvironmentVariable <<< customize) { "Key": _Key, "Value": _Value, "Secure": Nothing }



newtype EnvironmentVariables = EnvironmentVariables (Array EnvironmentVariable)
derive instance newtypeEnvironmentVariables :: Newtype EnvironmentVariables _
derive instance repGenericEnvironmentVariables :: Generic EnvironmentVariables _
instance showEnvironmentVariables :: Show EnvironmentVariables where show = genericShow
instance decodeEnvironmentVariables :: Decode EnvironmentVariables where decode = genericDecode options
instance encodeEnvironmentVariables :: Encode EnvironmentVariables where encode = genericEncode options



newtype GetHostnameSuggestionRequest = GetHostnameSuggestionRequest 
  { "LayerId" :: (String)
  }
derive instance newtypeGetHostnameSuggestionRequest :: Newtype GetHostnameSuggestionRequest _
derive instance repGenericGetHostnameSuggestionRequest :: Generic GetHostnameSuggestionRequest _
instance showGetHostnameSuggestionRequest :: Show GetHostnameSuggestionRequest where show = genericShow
instance decodeGetHostnameSuggestionRequest :: Decode GetHostnameSuggestionRequest where decode = genericDecode options
instance encodeGetHostnameSuggestionRequest :: Encode GetHostnameSuggestionRequest where encode = genericEncode options

-- | Constructs GetHostnameSuggestionRequest from required parameters
newGetHostnameSuggestionRequest :: String -> GetHostnameSuggestionRequest
newGetHostnameSuggestionRequest _LayerId = GetHostnameSuggestionRequest { "LayerId": _LayerId }

-- | Constructs GetHostnameSuggestionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHostnameSuggestionRequest' :: String -> ( { "LayerId" :: (String) } -> {"LayerId" :: (String) } ) -> GetHostnameSuggestionRequest
newGetHostnameSuggestionRequest' _LayerId customize = (GetHostnameSuggestionRequest <<< customize) { "LayerId": _LayerId }



-- | <p>Contains the response to a <code>GetHostnameSuggestion</code> request.</p>
newtype GetHostnameSuggestionResult = GetHostnameSuggestionResult 
  { "LayerId" :: Maybe (String)
  , "Hostname" :: Maybe (String)
  }
derive instance newtypeGetHostnameSuggestionResult :: Newtype GetHostnameSuggestionResult _
derive instance repGenericGetHostnameSuggestionResult :: Generic GetHostnameSuggestionResult _
instance showGetHostnameSuggestionResult :: Show GetHostnameSuggestionResult where show = genericShow
instance decodeGetHostnameSuggestionResult :: Decode GetHostnameSuggestionResult where decode = genericDecode options
instance encodeGetHostnameSuggestionResult :: Encode GetHostnameSuggestionResult where encode = genericEncode options

-- | Constructs GetHostnameSuggestionResult from required parameters
newGetHostnameSuggestionResult :: GetHostnameSuggestionResult
newGetHostnameSuggestionResult  = GetHostnameSuggestionResult { "Hostname": Nothing, "LayerId": Nothing }

-- | Constructs GetHostnameSuggestionResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHostnameSuggestionResult' :: ( { "LayerId" :: Maybe (String) , "Hostname" :: Maybe (String) } -> {"LayerId" :: Maybe (String) , "Hostname" :: Maybe (String) } ) -> GetHostnameSuggestionResult
newGetHostnameSuggestionResult'  customize = (GetHostnameSuggestionResult <<< customize) { "Hostname": Nothing, "LayerId": Nothing }



newtype GrantAccessRequest = GrantAccessRequest 
  { "InstanceId" :: (String)
  , "ValidForInMinutes" :: Maybe (ValidForInMinutes)
  }
derive instance newtypeGrantAccessRequest :: Newtype GrantAccessRequest _
derive instance repGenericGrantAccessRequest :: Generic GrantAccessRequest _
instance showGrantAccessRequest :: Show GrantAccessRequest where show = genericShow
instance decodeGrantAccessRequest :: Decode GrantAccessRequest where decode = genericDecode options
instance encodeGrantAccessRequest :: Encode GrantAccessRequest where encode = genericEncode options

-- | Constructs GrantAccessRequest from required parameters
newGrantAccessRequest :: String -> GrantAccessRequest
newGrantAccessRequest _InstanceId = GrantAccessRequest { "InstanceId": _InstanceId, "ValidForInMinutes": Nothing }

-- | Constructs GrantAccessRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGrantAccessRequest' :: String -> ( { "InstanceId" :: (String) , "ValidForInMinutes" :: Maybe (ValidForInMinutes) } -> {"InstanceId" :: (String) , "ValidForInMinutes" :: Maybe (ValidForInMinutes) } ) -> GrantAccessRequest
newGrantAccessRequest' _InstanceId customize = (GrantAccessRequest <<< customize) { "InstanceId": _InstanceId, "ValidForInMinutes": Nothing }



-- | <p>Contains the response to a <code>GrantAccess</code> request.</p>
newtype GrantAccessResult = GrantAccessResult 
  { "TemporaryCredential" :: Maybe (TemporaryCredential)
  }
derive instance newtypeGrantAccessResult :: Newtype GrantAccessResult _
derive instance repGenericGrantAccessResult :: Generic GrantAccessResult _
instance showGrantAccessResult :: Show GrantAccessResult where show = genericShow
instance decodeGrantAccessResult :: Decode GrantAccessResult where decode = genericDecode options
instance encodeGrantAccessResult :: Encode GrantAccessResult where encode = genericEncode options

-- | Constructs GrantAccessResult from required parameters
newGrantAccessResult :: GrantAccessResult
newGrantAccessResult  = GrantAccessResult { "TemporaryCredential": Nothing }

-- | Constructs GrantAccessResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGrantAccessResult' :: ( { "TemporaryCredential" :: Maybe (TemporaryCredential) } -> {"TemporaryCredential" :: Maybe (TemporaryCredential) } ) -> GrantAccessResult
newGrantAccessResult'  customize = (GrantAccessResult <<< customize) { "TemporaryCredential": Nothing }



newtype Hour = Hour String
derive instance newtypeHour :: Newtype Hour _
derive instance repGenericHour :: Generic Hour _
instance showHour :: Show Hour where show = genericShow
instance decodeHour :: Decode Hour where decode = genericDecode options
instance encodeHour :: Encode Hour where encode = genericEncode options



-- | <p>Describes an instance.</p>
newtype Instance = Instance 
  { "AgentVersion" :: Maybe (String)
  , "AmiId" :: Maybe (String)
  , "Architecture" :: Maybe (Architecture)
  , "Arn" :: Maybe (String)
  , "AutoScalingType" :: Maybe (AutoScalingType)
  , "AvailabilityZone" :: Maybe (String)
  , "BlockDeviceMappings" :: Maybe (BlockDeviceMappings)
  , "CreatedAt" :: Maybe (DateTime)
  , "EbsOptimized" :: Maybe (Boolean)
  , "Ec2InstanceId" :: Maybe (String)
  , "EcsClusterArn" :: Maybe (String)
  , "EcsContainerInstanceArn" :: Maybe (String)
  , "ElasticIp" :: Maybe (String)
  , "Hostname" :: Maybe (String)
  , "InfrastructureClass" :: Maybe (String)
  , "InstallUpdatesOnBoot" :: Maybe (Boolean)
  , "InstanceId" :: Maybe (String)
  , "InstanceProfileArn" :: Maybe (String)
  , "InstanceType" :: Maybe (String)
  , "LastServiceErrorId" :: Maybe (String)
  , "LayerIds" :: Maybe (Strings)
  , "Os" :: Maybe (String)
  , "Platform" :: Maybe (String)
  , "PrivateDns" :: Maybe (String)
  , "PrivateIp" :: Maybe (String)
  , "PublicDns" :: Maybe (String)
  , "PublicIp" :: Maybe (String)
  , "RegisteredBy" :: Maybe (String)
  , "ReportedAgentVersion" :: Maybe (String)
  , "ReportedOs" :: Maybe (ReportedOs)
  , "RootDeviceType" :: Maybe (RootDeviceType)
  , "RootDeviceVolumeId" :: Maybe (String)
  , "SecurityGroupIds" :: Maybe (Strings)
  , "SshHostDsaKeyFingerprint" :: Maybe (String)
  , "SshHostRsaKeyFingerprint" :: Maybe (String)
  , "SshKeyName" :: Maybe (String)
  , "StackId" :: Maybe (String)
  , "Status" :: Maybe (String)
  , "SubnetId" :: Maybe (String)
  , "Tenancy" :: Maybe (String)
  , "VirtualizationType" :: Maybe (VirtualizationType)
  }
derive instance newtypeInstance :: Newtype Instance _
derive instance repGenericInstance :: Generic Instance _
instance showInstance :: Show Instance where show = genericShow
instance decodeInstance :: Decode Instance where decode = genericDecode options
instance encodeInstance :: Encode Instance where encode = genericEncode options

-- | Constructs Instance from required parameters
newInstance :: Instance
newInstance  = Instance { "AgentVersion": Nothing, "AmiId": Nothing, "Architecture": Nothing, "Arn": Nothing, "AutoScalingType": Nothing, "AvailabilityZone": Nothing, "BlockDeviceMappings": Nothing, "CreatedAt": Nothing, "EbsOptimized": Nothing, "Ec2InstanceId": Nothing, "EcsClusterArn": Nothing, "EcsContainerInstanceArn": Nothing, "ElasticIp": Nothing, "Hostname": Nothing, "InfrastructureClass": Nothing, "InstallUpdatesOnBoot": Nothing, "InstanceId": Nothing, "InstanceProfileArn": Nothing, "InstanceType": Nothing, "LastServiceErrorId": Nothing, "LayerIds": Nothing, "Os": Nothing, "Platform": Nothing, "PrivateDns": Nothing, "PrivateIp": Nothing, "PublicDns": Nothing, "PublicIp": Nothing, "RegisteredBy": Nothing, "ReportedAgentVersion": Nothing, "ReportedOs": Nothing, "RootDeviceType": Nothing, "RootDeviceVolumeId": Nothing, "SecurityGroupIds": Nothing, "SshHostDsaKeyFingerprint": Nothing, "SshHostRsaKeyFingerprint": Nothing, "SshKeyName": Nothing, "StackId": Nothing, "Status": Nothing, "SubnetId": Nothing, "Tenancy": Nothing, "VirtualizationType": Nothing }

-- | Constructs Instance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstance' :: ( { "AgentVersion" :: Maybe (String) , "AmiId" :: Maybe (String) , "Architecture" :: Maybe (Architecture) , "Arn" :: Maybe (String) , "AutoScalingType" :: Maybe (AutoScalingType) , "AvailabilityZone" :: Maybe (String) , "BlockDeviceMappings" :: Maybe (BlockDeviceMappings) , "CreatedAt" :: Maybe (DateTime) , "EbsOptimized" :: Maybe (Boolean) , "Ec2InstanceId" :: Maybe (String) , "EcsClusterArn" :: Maybe (String) , "EcsContainerInstanceArn" :: Maybe (String) , "ElasticIp" :: Maybe (String) , "Hostname" :: Maybe (String) , "InfrastructureClass" :: Maybe (String) , "InstallUpdatesOnBoot" :: Maybe (Boolean) , "InstanceId" :: Maybe (String) , "InstanceProfileArn" :: Maybe (String) , "InstanceType" :: Maybe (String) , "LastServiceErrorId" :: Maybe (String) , "LayerIds" :: Maybe (Strings) , "Os" :: Maybe (String) , "Platform" :: Maybe (String) , "PrivateDns" :: Maybe (String) , "PrivateIp" :: Maybe (String) , "PublicDns" :: Maybe (String) , "PublicIp" :: Maybe (String) , "RegisteredBy" :: Maybe (String) , "ReportedAgentVersion" :: Maybe (String) , "ReportedOs" :: Maybe (ReportedOs) , "RootDeviceType" :: Maybe (RootDeviceType) , "RootDeviceVolumeId" :: Maybe (String) , "SecurityGroupIds" :: Maybe (Strings) , "SshHostDsaKeyFingerprint" :: Maybe (String) , "SshHostRsaKeyFingerprint" :: Maybe (String) , "SshKeyName" :: Maybe (String) , "StackId" :: Maybe (String) , "Status" :: Maybe (String) , "SubnetId" :: Maybe (String) , "Tenancy" :: Maybe (String) , "VirtualizationType" :: Maybe (VirtualizationType) } -> {"AgentVersion" :: Maybe (String) , "AmiId" :: Maybe (String) , "Architecture" :: Maybe (Architecture) , "Arn" :: Maybe (String) , "AutoScalingType" :: Maybe (AutoScalingType) , "AvailabilityZone" :: Maybe (String) , "BlockDeviceMappings" :: Maybe (BlockDeviceMappings) , "CreatedAt" :: Maybe (DateTime) , "EbsOptimized" :: Maybe (Boolean) , "Ec2InstanceId" :: Maybe (String) , "EcsClusterArn" :: Maybe (String) , "EcsContainerInstanceArn" :: Maybe (String) , "ElasticIp" :: Maybe (String) , "Hostname" :: Maybe (String) , "InfrastructureClass" :: Maybe (String) , "InstallUpdatesOnBoot" :: Maybe (Boolean) , "InstanceId" :: Maybe (String) , "InstanceProfileArn" :: Maybe (String) , "InstanceType" :: Maybe (String) , "LastServiceErrorId" :: Maybe (String) , "LayerIds" :: Maybe (Strings) , "Os" :: Maybe (String) , "Platform" :: Maybe (String) , "PrivateDns" :: Maybe (String) , "PrivateIp" :: Maybe (String) , "PublicDns" :: Maybe (String) , "PublicIp" :: Maybe (String) , "RegisteredBy" :: Maybe (String) , "ReportedAgentVersion" :: Maybe (String) , "ReportedOs" :: Maybe (ReportedOs) , "RootDeviceType" :: Maybe (RootDeviceType) , "RootDeviceVolumeId" :: Maybe (String) , "SecurityGroupIds" :: Maybe (Strings) , "SshHostDsaKeyFingerprint" :: Maybe (String) , "SshHostRsaKeyFingerprint" :: Maybe (String) , "SshKeyName" :: Maybe (String) , "StackId" :: Maybe (String) , "Status" :: Maybe (String) , "SubnetId" :: Maybe (String) , "Tenancy" :: Maybe (String) , "VirtualizationType" :: Maybe (VirtualizationType) } ) -> Instance
newInstance'  customize = (Instance <<< customize) { "AgentVersion": Nothing, "AmiId": Nothing, "Architecture": Nothing, "Arn": Nothing, "AutoScalingType": Nothing, "AvailabilityZone": Nothing, "BlockDeviceMappings": Nothing, "CreatedAt": Nothing, "EbsOptimized": Nothing, "Ec2InstanceId": Nothing, "EcsClusterArn": Nothing, "EcsContainerInstanceArn": Nothing, "ElasticIp": Nothing, "Hostname": Nothing, "InfrastructureClass": Nothing, "InstallUpdatesOnBoot": Nothing, "InstanceId": Nothing, "InstanceProfileArn": Nothing, "InstanceType": Nothing, "LastServiceErrorId": Nothing, "LayerIds": Nothing, "Os": Nothing, "Platform": Nothing, "PrivateDns": Nothing, "PrivateIp": Nothing, "PublicDns": Nothing, "PublicIp": Nothing, "RegisteredBy": Nothing, "ReportedAgentVersion": Nothing, "ReportedOs": Nothing, "RootDeviceType": Nothing, "RootDeviceVolumeId": Nothing, "SecurityGroupIds": Nothing, "SshHostDsaKeyFingerprint": Nothing, "SshHostRsaKeyFingerprint": Nothing, "SshKeyName": Nothing, "StackId": Nothing, "Status": Nothing, "SubnetId": Nothing, "Tenancy": Nothing, "VirtualizationType": Nothing }



-- | <p>Contains a description of an Amazon EC2 instance from the Amazon EC2 metadata service. For more information, see <a href="http://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html">Instance Metadata and User Data</a>.</p>
newtype InstanceIdentity = InstanceIdentity 
  { "Document" :: Maybe (String)
  , "Signature" :: Maybe (String)
  }
derive instance newtypeInstanceIdentity :: Newtype InstanceIdentity _
derive instance repGenericInstanceIdentity :: Generic InstanceIdentity _
instance showInstanceIdentity :: Show InstanceIdentity where show = genericShow
instance decodeInstanceIdentity :: Decode InstanceIdentity where decode = genericDecode options
instance encodeInstanceIdentity :: Encode InstanceIdentity where encode = genericEncode options

-- | Constructs InstanceIdentity from required parameters
newInstanceIdentity :: InstanceIdentity
newInstanceIdentity  = InstanceIdentity { "Document": Nothing, "Signature": Nothing }

-- | Constructs InstanceIdentity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceIdentity' :: ( { "Document" :: Maybe (String) , "Signature" :: Maybe (String) } -> {"Document" :: Maybe (String) , "Signature" :: Maybe (String) } ) -> InstanceIdentity
newInstanceIdentity'  customize = (InstanceIdentity <<< customize) { "Document": Nothing, "Signature": Nothing }



newtype Instances = Instances (Array Instance)
derive instance newtypeInstances :: Newtype Instances _
derive instance repGenericInstances :: Generic Instances _
instance showInstances :: Show Instances where show = genericShow
instance decodeInstances :: Decode Instances where decode = genericDecode options
instance encodeInstances :: Encode Instances where encode = genericEncode options



-- | <p>Describes how many instances a stack has for each status.</p>
newtype InstancesCount = InstancesCount 
  { "Assigning" :: Maybe (Int)
  , "Booting" :: Maybe (Int)
  , "ConnectionLost" :: Maybe (Int)
  , "Deregistering" :: Maybe (Int)
  , "Online" :: Maybe (Int)
  , "Pending" :: Maybe (Int)
  , "Rebooting" :: Maybe (Int)
  , "Registered" :: Maybe (Int)
  , "Registering" :: Maybe (Int)
  , "Requested" :: Maybe (Int)
  , "RunningSetup" :: Maybe (Int)
  , "SetupFailed" :: Maybe (Int)
  , "ShuttingDown" :: Maybe (Int)
  , "StartFailed" :: Maybe (Int)
  , "StopFailed" :: Maybe (Int)
  , "Stopped" :: Maybe (Int)
  , "Stopping" :: Maybe (Int)
  , "Terminated" :: Maybe (Int)
  , "Terminating" :: Maybe (Int)
  , "Unassigning" :: Maybe (Int)
  }
derive instance newtypeInstancesCount :: Newtype InstancesCount _
derive instance repGenericInstancesCount :: Generic InstancesCount _
instance showInstancesCount :: Show InstancesCount where show = genericShow
instance decodeInstancesCount :: Decode InstancesCount where decode = genericDecode options
instance encodeInstancesCount :: Encode InstancesCount where encode = genericEncode options

-- | Constructs InstancesCount from required parameters
newInstancesCount :: InstancesCount
newInstancesCount  = InstancesCount { "Assigning": Nothing, "Booting": Nothing, "ConnectionLost": Nothing, "Deregistering": Nothing, "Online": Nothing, "Pending": Nothing, "Rebooting": Nothing, "Registered": Nothing, "Registering": Nothing, "Requested": Nothing, "RunningSetup": Nothing, "SetupFailed": Nothing, "ShuttingDown": Nothing, "StartFailed": Nothing, "StopFailed": Nothing, "Stopped": Nothing, "Stopping": Nothing, "Terminated": Nothing, "Terminating": Nothing, "Unassigning": Nothing }

-- | Constructs InstancesCount's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstancesCount' :: ( { "Assigning" :: Maybe (Int) , "Booting" :: Maybe (Int) , "ConnectionLost" :: Maybe (Int) , "Deregistering" :: Maybe (Int) , "Online" :: Maybe (Int) , "Pending" :: Maybe (Int) , "Rebooting" :: Maybe (Int) , "Registered" :: Maybe (Int) , "Registering" :: Maybe (Int) , "Requested" :: Maybe (Int) , "RunningSetup" :: Maybe (Int) , "SetupFailed" :: Maybe (Int) , "ShuttingDown" :: Maybe (Int) , "StartFailed" :: Maybe (Int) , "StopFailed" :: Maybe (Int) , "Stopped" :: Maybe (Int) , "Stopping" :: Maybe (Int) , "Terminated" :: Maybe (Int) , "Terminating" :: Maybe (Int) , "Unassigning" :: Maybe (Int) } -> {"Assigning" :: Maybe (Int) , "Booting" :: Maybe (Int) , "ConnectionLost" :: Maybe (Int) , "Deregistering" :: Maybe (Int) , "Online" :: Maybe (Int) , "Pending" :: Maybe (Int) , "Rebooting" :: Maybe (Int) , "Registered" :: Maybe (Int) , "Registering" :: Maybe (Int) , "Requested" :: Maybe (Int) , "RunningSetup" :: Maybe (Int) , "SetupFailed" :: Maybe (Int) , "ShuttingDown" :: Maybe (Int) , "StartFailed" :: Maybe (Int) , "StopFailed" :: Maybe (Int) , "Stopped" :: Maybe (Int) , "Stopping" :: Maybe (Int) , "Terminated" :: Maybe (Int) , "Terminating" :: Maybe (Int) , "Unassigning" :: Maybe (Int) } ) -> InstancesCount
newInstancesCount'  customize = (InstancesCount <<< customize) { "Assigning": Nothing, "Booting": Nothing, "ConnectionLost": Nothing, "Deregistering": Nothing, "Online": Nothing, "Pending": Nothing, "Rebooting": Nothing, "Registered": Nothing, "Registering": Nothing, "Requested": Nothing, "RunningSetup": Nothing, "SetupFailed": Nothing, "ShuttingDown": Nothing, "StartFailed": Nothing, "StopFailed": Nothing, "Stopped": Nothing, "Stopping": Nothing, "Terminated": Nothing, "Terminating": Nothing, "Unassigning": Nothing }



-- | <p>Describes a layer.</p>
newtype Layer = Layer 
  { "Arn" :: Maybe (String)
  , "StackId" :: Maybe (String)
  , "LayerId" :: Maybe (String)
  , "Type" :: Maybe (LayerType)
  , "Name" :: Maybe (String)
  , "Shortname" :: Maybe (String)
  , "Attributes" :: Maybe (LayerAttributes)
  , "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration)
  , "CustomInstanceProfileArn" :: Maybe (String)
  , "CustomJson" :: Maybe (String)
  , "CustomSecurityGroupIds" :: Maybe (Strings)
  , "DefaultSecurityGroupNames" :: Maybe (Strings)
  , "Packages" :: Maybe (Strings)
  , "VolumeConfigurations" :: Maybe (VolumeConfigurations)
  , "EnableAutoHealing" :: Maybe (Boolean)
  , "AutoAssignElasticIps" :: Maybe (Boolean)
  , "AutoAssignPublicIps" :: Maybe (Boolean)
  , "DefaultRecipes" :: Maybe (Recipes)
  , "CustomRecipes" :: Maybe (Recipes)
  , "CreatedAt" :: Maybe (DateTime)
  , "InstallUpdatesOnBoot" :: Maybe (Boolean)
  , "UseEbsOptimizedInstances" :: Maybe (Boolean)
  , "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration)
  }
derive instance newtypeLayer :: Newtype Layer _
derive instance repGenericLayer :: Generic Layer _
instance showLayer :: Show Layer where show = genericShow
instance decodeLayer :: Decode Layer where decode = genericDecode options
instance encodeLayer :: Encode Layer where encode = genericEncode options

-- | Constructs Layer from required parameters
newLayer :: Layer
newLayer  = Layer { "Arn": Nothing, "Attributes": Nothing, "AutoAssignElasticIps": Nothing, "AutoAssignPublicIps": Nothing, "CloudWatchLogsConfiguration": Nothing, "CreatedAt": Nothing, "CustomInstanceProfileArn": Nothing, "CustomJson": Nothing, "CustomRecipes": Nothing, "CustomSecurityGroupIds": Nothing, "DefaultRecipes": Nothing, "DefaultSecurityGroupNames": Nothing, "EnableAutoHealing": Nothing, "InstallUpdatesOnBoot": Nothing, "LayerId": Nothing, "LifecycleEventConfiguration": Nothing, "Name": Nothing, "Packages": Nothing, "Shortname": Nothing, "StackId": Nothing, "Type": Nothing, "UseEbsOptimizedInstances": Nothing, "VolumeConfigurations": Nothing }

-- | Constructs Layer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayer' :: ( { "Arn" :: Maybe (String) , "StackId" :: Maybe (String) , "LayerId" :: Maybe (String) , "Type" :: Maybe (LayerType) , "Name" :: Maybe (String) , "Shortname" :: Maybe (String) , "Attributes" :: Maybe (LayerAttributes) , "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration) , "CustomInstanceProfileArn" :: Maybe (String) , "CustomJson" :: Maybe (String) , "CustomSecurityGroupIds" :: Maybe (Strings) , "DefaultSecurityGroupNames" :: Maybe (Strings) , "Packages" :: Maybe (Strings) , "VolumeConfigurations" :: Maybe (VolumeConfigurations) , "EnableAutoHealing" :: Maybe (Boolean) , "AutoAssignElasticIps" :: Maybe (Boolean) , "AutoAssignPublicIps" :: Maybe (Boolean) , "DefaultRecipes" :: Maybe (Recipes) , "CustomRecipes" :: Maybe (Recipes) , "CreatedAt" :: Maybe (DateTime) , "InstallUpdatesOnBoot" :: Maybe (Boolean) , "UseEbsOptimizedInstances" :: Maybe (Boolean) , "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) } -> {"Arn" :: Maybe (String) , "StackId" :: Maybe (String) , "LayerId" :: Maybe (String) , "Type" :: Maybe (LayerType) , "Name" :: Maybe (String) , "Shortname" :: Maybe (String) , "Attributes" :: Maybe (LayerAttributes) , "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration) , "CustomInstanceProfileArn" :: Maybe (String) , "CustomJson" :: Maybe (String) , "CustomSecurityGroupIds" :: Maybe (Strings) , "DefaultSecurityGroupNames" :: Maybe (Strings) , "Packages" :: Maybe (Strings) , "VolumeConfigurations" :: Maybe (VolumeConfigurations) , "EnableAutoHealing" :: Maybe (Boolean) , "AutoAssignElasticIps" :: Maybe (Boolean) , "AutoAssignPublicIps" :: Maybe (Boolean) , "DefaultRecipes" :: Maybe (Recipes) , "CustomRecipes" :: Maybe (Recipes) , "CreatedAt" :: Maybe (DateTime) , "InstallUpdatesOnBoot" :: Maybe (Boolean) , "UseEbsOptimizedInstances" :: Maybe (Boolean) , "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) } ) -> Layer
newLayer'  customize = (Layer <<< customize) { "Arn": Nothing, "Attributes": Nothing, "AutoAssignElasticIps": Nothing, "AutoAssignPublicIps": Nothing, "CloudWatchLogsConfiguration": Nothing, "CreatedAt": Nothing, "CustomInstanceProfileArn": Nothing, "CustomJson": Nothing, "CustomRecipes": Nothing, "CustomSecurityGroupIds": Nothing, "DefaultRecipes": Nothing, "DefaultSecurityGroupNames": Nothing, "EnableAutoHealing": Nothing, "InstallUpdatesOnBoot": Nothing, "LayerId": Nothing, "LifecycleEventConfiguration": Nothing, "Name": Nothing, "Packages": Nothing, "Shortname": Nothing, "StackId": Nothing, "Type": Nothing, "UseEbsOptimizedInstances": Nothing, "VolumeConfigurations": Nothing }



newtype LayerAttributes = LayerAttributes (StrMap.StrMap String)
derive instance newtypeLayerAttributes :: Newtype LayerAttributes _
derive instance repGenericLayerAttributes :: Generic LayerAttributes _
instance showLayerAttributes :: Show LayerAttributes where show = genericShow
instance decodeLayerAttributes :: Decode LayerAttributes where decode = genericDecode options
instance encodeLayerAttributes :: Encode LayerAttributes where encode = genericEncode options



newtype LayerAttributesKeys = LayerAttributesKeys String
derive instance newtypeLayerAttributesKeys :: Newtype LayerAttributesKeys _
derive instance repGenericLayerAttributesKeys :: Generic LayerAttributesKeys _
instance showLayerAttributesKeys :: Show LayerAttributesKeys where show = genericShow
instance decodeLayerAttributesKeys :: Decode LayerAttributesKeys where decode = genericDecode options
instance encodeLayerAttributesKeys :: Encode LayerAttributesKeys where encode = genericEncode options



newtype LayerType = LayerType String
derive instance newtypeLayerType :: Newtype LayerType _
derive instance repGenericLayerType :: Generic LayerType _
instance showLayerType :: Show LayerType where show = genericShow
instance decodeLayerType :: Decode LayerType where decode = genericDecode options
instance encodeLayerType :: Encode LayerType where encode = genericEncode options



newtype Layers = Layers (Array Layer)
derive instance newtypeLayers :: Newtype Layers _
derive instance repGenericLayers :: Generic Layers _
instance showLayers :: Show Layers where show = genericShow
instance decodeLayers :: Decode Layers where decode = genericDecode options
instance encodeLayers :: Encode Layers where encode = genericEncode options



-- | <p>Specifies the lifecycle event configuration</p>
newtype LifecycleEventConfiguration = LifecycleEventConfiguration 
  { "Shutdown" :: Maybe (ShutdownEventConfiguration)
  }
derive instance newtypeLifecycleEventConfiguration :: Newtype LifecycleEventConfiguration _
derive instance repGenericLifecycleEventConfiguration :: Generic LifecycleEventConfiguration _
instance showLifecycleEventConfiguration :: Show LifecycleEventConfiguration where show = genericShow
instance decodeLifecycleEventConfiguration :: Decode LifecycleEventConfiguration where decode = genericDecode options
instance encodeLifecycleEventConfiguration :: Encode LifecycleEventConfiguration where encode = genericEncode options

-- | Constructs LifecycleEventConfiguration from required parameters
newLifecycleEventConfiguration :: LifecycleEventConfiguration
newLifecycleEventConfiguration  = LifecycleEventConfiguration { "Shutdown": Nothing }

-- | Constructs LifecycleEventConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecycleEventConfiguration' :: ( { "Shutdown" :: Maybe (ShutdownEventConfiguration) } -> {"Shutdown" :: Maybe (ShutdownEventConfiguration) } ) -> LifecycleEventConfiguration
newLifecycleEventConfiguration'  customize = (LifecycleEventConfiguration <<< customize) { "Shutdown": Nothing }



newtype ListTagsRequest = ListTagsRequest 
  { "ResourceArn" :: (ResourceArn)
  , "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListTagsRequest :: Newtype ListTagsRequest _
derive instance repGenericListTagsRequest :: Generic ListTagsRequest _
instance showListTagsRequest :: Show ListTagsRequest where show = genericShow
instance decodeListTagsRequest :: Decode ListTagsRequest where decode = genericDecode options
instance encodeListTagsRequest :: Encode ListTagsRequest where encode = genericEncode options

-- | Constructs ListTagsRequest from required parameters
newListTagsRequest :: ResourceArn -> ListTagsRequest
newListTagsRequest _ResourceArn = ListTagsRequest { "ResourceArn": _ResourceArn, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsRequest' :: ResourceArn -> ( { "ResourceArn" :: (ResourceArn) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } -> {"ResourceArn" :: (ResourceArn) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } ) -> ListTagsRequest
newListTagsRequest' _ResourceArn customize = (ListTagsRequest <<< customize) { "ResourceArn": _ResourceArn, "MaxResults": Nothing, "NextToken": Nothing }



-- | <p>Contains the response to a <code>ListTags</code> request.</p>
newtype ListTagsResult = ListTagsResult 
  { "Tags" :: Maybe (Tags)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListTagsResult :: Newtype ListTagsResult _
derive instance repGenericListTagsResult :: Generic ListTagsResult _
instance showListTagsResult :: Show ListTagsResult where show = genericShow
instance decodeListTagsResult :: Decode ListTagsResult where decode = genericDecode options
instance encodeListTagsResult :: Encode ListTagsResult where encode = genericEncode options

-- | Constructs ListTagsResult from required parameters
newListTagsResult :: ListTagsResult
newListTagsResult  = ListTagsResult { "NextToken": Nothing, "Tags": Nothing }

-- | Constructs ListTagsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsResult' :: ( { "Tags" :: Maybe (Tags) , "NextToken" :: Maybe (NextToken) } -> {"Tags" :: Maybe (Tags) , "NextToken" :: Maybe (NextToken) } ) -> ListTagsResult
newListTagsResult'  customize = (ListTagsResult <<< customize) { "NextToken": Nothing, "Tags": Nothing }



-- | <p>Describes a layer's load-based auto scaling configuration.</p>
newtype LoadBasedAutoScalingConfiguration = LoadBasedAutoScalingConfiguration 
  { "LayerId" :: Maybe (String)
  , "Enable" :: Maybe (Boolean)
  , "UpScaling" :: Maybe (AutoScalingThresholds)
  , "DownScaling" :: Maybe (AutoScalingThresholds)
  }
derive instance newtypeLoadBasedAutoScalingConfiguration :: Newtype LoadBasedAutoScalingConfiguration _
derive instance repGenericLoadBasedAutoScalingConfiguration :: Generic LoadBasedAutoScalingConfiguration _
instance showLoadBasedAutoScalingConfiguration :: Show LoadBasedAutoScalingConfiguration where show = genericShow
instance decodeLoadBasedAutoScalingConfiguration :: Decode LoadBasedAutoScalingConfiguration where decode = genericDecode options
instance encodeLoadBasedAutoScalingConfiguration :: Encode LoadBasedAutoScalingConfiguration where encode = genericEncode options

-- | Constructs LoadBasedAutoScalingConfiguration from required parameters
newLoadBasedAutoScalingConfiguration :: LoadBasedAutoScalingConfiguration
newLoadBasedAutoScalingConfiguration  = LoadBasedAutoScalingConfiguration { "DownScaling": Nothing, "Enable": Nothing, "LayerId": Nothing, "UpScaling": Nothing }

-- | Constructs LoadBasedAutoScalingConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoadBasedAutoScalingConfiguration' :: ( { "LayerId" :: Maybe (String) , "Enable" :: Maybe (Boolean) , "UpScaling" :: Maybe (AutoScalingThresholds) , "DownScaling" :: Maybe (AutoScalingThresholds) } -> {"LayerId" :: Maybe (String) , "Enable" :: Maybe (Boolean) , "UpScaling" :: Maybe (AutoScalingThresholds) , "DownScaling" :: Maybe (AutoScalingThresholds) } ) -> LoadBasedAutoScalingConfiguration
newLoadBasedAutoScalingConfiguration'  customize = (LoadBasedAutoScalingConfiguration <<< customize) { "DownScaling": Nothing, "Enable": Nothing, "LayerId": Nothing, "UpScaling": Nothing }



newtype LoadBasedAutoScalingConfigurations = LoadBasedAutoScalingConfigurations (Array LoadBasedAutoScalingConfiguration)
derive instance newtypeLoadBasedAutoScalingConfigurations :: Newtype LoadBasedAutoScalingConfigurations _
derive instance repGenericLoadBasedAutoScalingConfigurations :: Generic LoadBasedAutoScalingConfigurations _
instance showLoadBasedAutoScalingConfigurations :: Show LoadBasedAutoScalingConfigurations where show = genericShow
instance decodeLoadBasedAutoScalingConfigurations :: Decode LoadBasedAutoScalingConfigurations where decode = genericDecode options
instance encodeLoadBasedAutoScalingConfigurations :: Encode LoadBasedAutoScalingConfigurations where encode = genericEncode options



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



newtype Minute = Minute Int
derive instance newtypeMinute :: Newtype Minute _
derive instance repGenericMinute :: Generic Minute _
instance showMinute :: Show Minute where show = genericShow
instance decodeMinute :: Decode Minute where decode = genericDecode options
instance encodeMinute :: Encode Minute where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>Describes supported operating systems in AWS OpsWorks Stacks.</p>
newtype OperatingSystem = OperatingSystem 
  { "Name" :: Maybe (String)
  , "Id" :: Maybe (String)
  , "Type" :: Maybe (String)
  , "ConfigurationManagers" :: Maybe (OperatingSystemConfigurationManagers)
  , "ReportedName" :: Maybe (String)
  , "ReportedVersion" :: Maybe (String)
  , "Supported" :: Maybe (Boolean)
  }
derive instance newtypeOperatingSystem :: Newtype OperatingSystem _
derive instance repGenericOperatingSystem :: Generic OperatingSystem _
instance showOperatingSystem :: Show OperatingSystem where show = genericShow
instance decodeOperatingSystem :: Decode OperatingSystem where decode = genericDecode options
instance encodeOperatingSystem :: Encode OperatingSystem where encode = genericEncode options

-- | Constructs OperatingSystem from required parameters
newOperatingSystem :: OperatingSystem
newOperatingSystem  = OperatingSystem { "ConfigurationManagers": Nothing, "Id": Nothing, "Name": Nothing, "ReportedName": Nothing, "ReportedVersion": Nothing, "Supported": Nothing, "Type": Nothing }

-- | Constructs OperatingSystem's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperatingSystem' :: ( { "Name" :: Maybe (String) , "Id" :: Maybe (String) , "Type" :: Maybe (String) , "ConfigurationManagers" :: Maybe (OperatingSystemConfigurationManagers) , "ReportedName" :: Maybe (String) , "ReportedVersion" :: Maybe (String) , "Supported" :: Maybe (Boolean) } -> {"Name" :: Maybe (String) , "Id" :: Maybe (String) , "Type" :: Maybe (String) , "ConfigurationManagers" :: Maybe (OperatingSystemConfigurationManagers) , "ReportedName" :: Maybe (String) , "ReportedVersion" :: Maybe (String) , "Supported" :: Maybe (Boolean) } ) -> OperatingSystem
newOperatingSystem'  customize = (OperatingSystem <<< customize) { "ConfigurationManagers": Nothing, "Id": Nothing, "Name": Nothing, "ReportedName": Nothing, "ReportedVersion": Nothing, "Supported": Nothing, "Type": Nothing }



-- | <p>A block that contains information about the configuration manager (Chef) and the versions of the configuration manager that are supported for an operating system.</p>
newtype OperatingSystemConfigurationManager = OperatingSystemConfigurationManager 
  { "Name" :: Maybe (String)
  , "Version" :: Maybe (String)
  }
derive instance newtypeOperatingSystemConfigurationManager :: Newtype OperatingSystemConfigurationManager _
derive instance repGenericOperatingSystemConfigurationManager :: Generic OperatingSystemConfigurationManager _
instance showOperatingSystemConfigurationManager :: Show OperatingSystemConfigurationManager where show = genericShow
instance decodeOperatingSystemConfigurationManager :: Decode OperatingSystemConfigurationManager where decode = genericDecode options
instance encodeOperatingSystemConfigurationManager :: Encode OperatingSystemConfigurationManager where encode = genericEncode options

-- | Constructs OperatingSystemConfigurationManager from required parameters
newOperatingSystemConfigurationManager :: OperatingSystemConfigurationManager
newOperatingSystemConfigurationManager  = OperatingSystemConfigurationManager { "Name": Nothing, "Version": Nothing }

-- | Constructs OperatingSystemConfigurationManager's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperatingSystemConfigurationManager' :: ( { "Name" :: Maybe (String) , "Version" :: Maybe (String) } -> {"Name" :: Maybe (String) , "Version" :: Maybe (String) } ) -> OperatingSystemConfigurationManager
newOperatingSystemConfigurationManager'  customize = (OperatingSystemConfigurationManager <<< customize) { "Name": Nothing, "Version": Nothing }



newtype OperatingSystemConfigurationManagers = OperatingSystemConfigurationManagers (Array OperatingSystemConfigurationManager)
derive instance newtypeOperatingSystemConfigurationManagers :: Newtype OperatingSystemConfigurationManagers _
derive instance repGenericOperatingSystemConfigurationManagers :: Generic OperatingSystemConfigurationManagers _
instance showOperatingSystemConfigurationManagers :: Show OperatingSystemConfigurationManagers where show = genericShow
instance decodeOperatingSystemConfigurationManagers :: Decode OperatingSystemConfigurationManagers where decode = genericDecode options
instance encodeOperatingSystemConfigurationManagers :: Encode OperatingSystemConfigurationManagers where encode = genericEncode options



newtype OperatingSystems = OperatingSystems (Array OperatingSystem)
derive instance newtypeOperatingSystems :: Newtype OperatingSystems _
derive instance repGenericOperatingSystems :: Generic OperatingSystems _
instance showOperatingSystems :: Show OperatingSystems where show = genericShow
instance decodeOperatingSystems :: Decode OperatingSystems where decode = genericDecode options
instance encodeOperatingSystems :: Encode OperatingSystems where encode = genericEncode options



newtype Parameters = Parameters (StrMap.StrMap String)
derive instance newtypeParameters :: Newtype Parameters _
derive instance repGenericParameters :: Generic Parameters _
instance showParameters :: Show Parameters where show = genericShow
instance decodeParameters :: Decode Parameters where decode = genericDecode options
instance encodeParameters :: Encode Parameters where encode = genericEncode options



-- | <p>Describes stack or user permissions.</p>
newtype Permission = Permission 
  { "StackId" :: Maybe (String)
  , "IamUserArn" :: Maybe (String)
  , "AllowSsh" :: Maybe (Boolean)
  , "AllowSudo" :: Maybe (Boolean)
  , "Level" :: Maybe (String)
  }
derive instance newtypePermission :: Newtype Permission _
derive instance repGenericPermission :: Generic Permission _
instance showPermission :: Show Permission where show = genericShow
instance decodePermission :: Decode Permission where decode = genericDecode options
instance encodePermission :: Encode Permission where encode = genericEncode options

-- | Constructs Permission from required parameters
newPermission :: Permission
newPermission  = Permission { "AllowSsh": Nothing, "AllowSudo": Nothing, "IamUserArn": Nothing, "Level": Nothing, "StackId": Nothing }

-- | Constructs Permission's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPermission' :: ( { "StackId" :: Maybe (String) , "IamUserArn" :: Maybe (String) , "AllowSsh" :: Maybe (Boolean) , "AllowSudo" :: Maybe (Boolean) , "Level" :: Maybe (String) } -> {"StackId" :: Maybe (String) , "IamUserArn" :: Maybe (String) , "AllowSsh" :: Maybe (Boolean) , "AllowSudo" :: Maybe (Boolean) , "Level" :: Maybe (String) } ) -> Permission
newPermission'  customize = (Permission <<< customize) { "AllowSsh": Nothing, "AllowSudo": Nothing, "IamUserArn": Nothing, "Level": Nothing, "StackId": Nothing }



newtype Permissions = Permissions (Array Permission)
derive instance newtypePermissions :: Newtype Permissions _
derive instance repGenericPermissions :: Generic Permissions _
instance showPermissions :: Show Permissions where show = genericShow
instance decodePermissions :: Decode Permissions where decode = genericDecode options
instance encodePermissions :: Encode Permissions where encode = genericEncode options



-- | <p>Describes an instance's RAID array.</p>
newtype RaidArray = RaidArray 
  { "RaidArrayId" :: Maybe (String)
  , "InstanceId" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "RaidLevel" :: Maybe (Int)
  , "NumberOfDisks" :: Maybe (Int)
  , "Size" :: Maybe (Int)
  , "Device" :: Maybe (String)
  , "MountPoint" :: Maybe (String)
  , "AvailabilityZone" :: Maybe (String)
  , "CreatedAt" :: Maybe (DateTime)
  , "StackId" :: Maybe (String)
  , "VolumeType" :: Maybe (String)
  , "Iops" :: Maybe (Int)
  }
derive instance newtypeRaidArray :: Newtype RaidArray _
derive instance repGenericRaidArray :: Generic RaidArray _
instance showRaidArray :: Show RaidArray where show = genericShow
instance decodeRaidArray :: Decode RaidArray where decode = genericDecode options
instance encodeRaidArray :: Encode RaidArray where encode = genericEncode options

-- | Constructs RaidArray from required parameters
newRaidArray :: RaidArray
newRaidArray  = RaidArray { "AvailabilityZone": Nothing, "CreatedAt": Nothing, "Device": Nothing, "InstanceId": Nothing, "Iops": Nothing, "MountPoint": Nothing, "Name": Nothing, "NumberOfDisks": Nothing, "RaidArrayId": Nothing, "RaidLevel": Nothing, "Size": Nothing, "StackId": Nothing, "VolumeType": Nothing }

-- | Constructs RaidArray's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRaidArray' :: ( { "RaidArrayId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "Name" :: Maybe (String) , "RaidLevel" :: Maybe (Int) , "NumberOfDisks" :: Maybe (Int) , "Size" :: Maybe (Int) , "Device" :: Maybe (String) , "MountPoint" :: Maybe (String) , "AvailabilityZone" :: Maybe (String) , "CreatedAt" :: Maybe (DateTime) , "StackId" :: Maybe (String) , "VolumeType" :: Maybe (String) , "Iops" :: Maybe (Int) } -> {"RaidArrayId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "Name" :: Maybe (String) , "RaidLevel" :: Maybe (Int) , "NumberOfDisks" :: Maybe (Int) , "Size" :: Maybe (Int) , "Device" :: Maybe (String) , "MountPoint" :: Maybe (String) , "AvailabilityZone" :: Maybe (String) , "CreatedAt" :: Maybe (DateTime) , "StackId" :: Maybe (String) , "VolumeType" :: Maybe (String) , "Iops" :: Maybe (Int) } ) -> RaidArray
newRaidArray'  customize = (RaidArray <<< customize) { "AvailabilityZone": Nothing, "CreatedAt": Nothing, "Device": Nothing, "InstanceId": Nothing, "Iops": Nothing, "MountPoint": Nothing, "Name": Nothing, "NumberOfDisks": Nothing, "RaidArrayId": Nothing, "RaidLevel": Nothing, "Size": Nothing, "StackId": Nothing, "VolumeType": Nothing }



newtype RaidArrays = RaidArrays (Array RaidArray)
derive instance newtypeRaidArrays :: Newtype RaidArrays _
derive instance repGenericRaidArrays :: Generic RaidArrays _
instance showRaidArrays :: Show RaidArrays where show = genericShow
instance decodeRaidArrays :: Decode RaidArrays where decode = genericDecode options
instance encodeRaidArrays :: Encode RaidArrays where encode = genericEncode options



-- | <p>Describes an Amazon RDS instance.</p>
newtype RdsDbInstance = RdsDbInstance 
  { "RdsDbInstanceArn" :: Maybe (String)
  , "DbInstanceIdentifier" :: Maybe (String)
  , "DbUser" :: Maybe (String)
  , "DbPassword" :: Maybe (String)
  , "Region" :: Maybe (String)
  , "Address" :: Maybe (String)
  , "Engine" :: Maybe (String)
  , "StackId" :: Maybe (String)
  , "MissingOnRds" :: Maybe (Boolean)
  }
derive instance newtypeRdsDbInstance :: Newtype RdsDbInstance _
derive instance repGenericRdsDbInstance :: Generic RdsDbInstance _
instance showRdsDbInstance :: Show RdsDbInstance where show = genericShow
instance decodeRdsDbInstance :: Decode RdsDbInstance where decode = genericDecode options
instance encodeRdsDbInstance :: Encode RdsDbInstance where encode = genericEncode options

-- | Constructs RdsDbInstance from required parameters
newRdsDbInstance :: RdsDbInstance
newRdsDbInstance  = RdsDbInstance { "Address": Nothing, "DbInstanceIdentifier": Nothing, "DbPassword": Nothing, "DbUser": Nothing, "Engine": Nothing, "MissingOnRds": Nothing, "RdsDbInstanceArn": Nothing, "Region": Nothing, "StackId": Nothing }

-- | Constructs RdsDbInstance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRdsDbInstance' :: ( { "RdsDbInstanceArn" :: Maybe (String) , "DbInstanceIdentifier" :: Maybe (String) , "DbUser" :: Maybe (String) , "DbPassword" :: Maybe (String) , "Region" :: Maybe (String) , "Address" :: Maybe (String) , "Engine" :: Maybe (String) , "StackId" :: Maybe (String) , "MissingOnRds" :: Maybe (Boolean) } -> {"RdsDbInstanceArn" :: Maybe (String) , "DbInstanceIdentifier" :: Maybe (String) , "DbUser" :: Maybe (String) , "DbPassword" :: Maybe (String) , "Region" :: Maybe (String) , "Address" :: Maybe (String) , "Engine" :: Maybe (String) , "StackId" :: Maybe (String) , "MissingOnRds" :: Maybe (Boolean) } ) -> RdsDbInstance
newRdsDbInstance'  customize = (RdsDbInstance <<< customize) { "Address": Nothing, "DbInstanceIdentifier": Nothing, "DbPassword": Nothing, "DbUser": Nothing, "Engine": Nothing, "MissingOnRds": Nothing, "RdsDbInstanceArn": Nothing, "Region": Nothing, "StackId": Nothing }



newtype RdsDbInstances = RdsDbInstances (Array RdsDbInstance)
derive instance newtypeRdsDbInstances :: Newtype RdsDbInstances _
derive instance repGenericRdsDbInstances :: Generic RdsDbInstances _
instance showRdsDbInstances :: Show RdsDbInstances where show = genericShow
instance decodeRdsDbInstances :: Decode RdsDbInstances where decode = genericDecode options
instance encodeRdsDbInstances :: Encode RdsDbInstances where encode = genericEncode options



newtype RebootInstanceRequest = RebootInstanceRequest 
  { "InstanceId" :: (String)
  }
derive instance newtypeRebootInstanceRequest :: Newtype RebootInstanceRequest _
derive instance repGenericRebootInstanceRequest :: Generic RebootInstanceRequest _
instance showRebootInstanceRequest :: Show RebootInstanceRequest where show = genericShow
instance decodeRebootInstanceRequest :: Decode RebootInstanceRequest where decode = genericDecode options
instance encodeRebootInstanceRequest :: Encode RebootInstanceRequest where encode = genericEncode options

-- | Constructs RebootInstanceRequest from required parameters
newRebootInstanceRequest :: String -> RebootInstanceRequest
newRebootInstanceRequest _InstanceId = RebootInstanceRequest { "InstanceId": _InstanceId }

-- | Constructs RebootInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRebootInstanceRequest' :: String -> ( { "InstanceId" :: (String) } -> {"InstanceId" :: (String) } ) -> RebootInstanceRequest
newRebootInstanceRequest' _InstanceId customize = (RebootInstanceRequest <<< customize) { "InstanceId": _InstanceId }



-- | <p>AWS OpsWorks Stacks supports five lifecycle events: <b>setup</b>, <b>configuration</b>, <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>. For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. In addition, you can provide custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the standard recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a particular layer to be run in response to each of the five events. </p> <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the .rb extension. For example: phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's phpapp2 folder.</p>
newtype Recipes = Recipes 
  { "Setup" :: Maybe (Strings)
  , "Configure" :: Maybe (Strings)
  , "Deploy" :: Maybe (Strings)
  , "Undeploy" :: Maybe (Strings)
  , "Shutdown" :: Maybe (Strings)
  }
derive instance newtypeRecipes :: Newtype Recipes _
derive instance repGenericRecipes :: Generic Recipes _
instance showRecipes :: Show Recipes where show = genericShow
instance decodeRecipes :: Decode Recipes where decode = genericDecode options
instance encodeRecipes :: Encode Recipes where encode = genericEncode options

-- | Constructs Recipes from required parameters
newRecipes :: Recipes
newRecipes  = Recipes { "Configure": Nothing, "Deploy": Nothing, "Setup": Nothing, "Shutdown": Nothing, "Undeploy": Nothing }

-- | Constructs Recipes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecipes' :: ( { "Setup" :: Maybe (Strings) , "Configure" :: Maybe (Strings) , "Deploy" :: Maybe (Strings) , "Undeploy" :: Maybe (Strings) , "Shutdown" :: Maybe (Strings) } -> {"Setup" :: Maybe (Strings) , "Configure" :: Maybe (Strings) , "Deploy" :: Maybe (Strings) , "Undeploy" :: Maybe (Strings) , "Shutdown" :: Maybe (Strings) } ) -> Recipes
newRecipes'  customize = (Recipes <<< customize) { "Configure": Nothing, "Deploy": Nothing, "Setup": Nothing, "Shutdown": Nothing, "Undeploy": Nothing }



newtype RegisterEcsClusterRequest = RegisterEcsClusterRequest 
  { "EcsClusterArn" :: (String)
  , "StackId" :: (String)
  }
derive instance newtypeRegisterEcsClusterRequest :: Newtype RegisterEcsClusterRequest _
derive instance repGenericRegisterEcsClusterRequest :: Generic RegisterEcsClusterRequest _
instance showRegisterEcsClusterRequest :: Show RegisterEcsClusterRequest where show = genericShow
instance decodeRegisterEcsClusterRequest :: Decode RegisterEcsClusterRequest where decode = genericDecode options
instance encodeRegisterEcsClusterRequest :: Encode RegisterEcsClusterRequest where encode = genericEncode options

-- | Constructs RegisterEcsClusterRequest from required parameters
newRegisterEcsClusterRequest :: String -> String -> RegisterEcsClusterRequest
newRegisterEcsClusterRequest _EcsClusterArn _StackId = RegisterEcsClusterRequest { "EcsClusterArn": _EcsClusterArn, "StackId": _StackId }

-- | Constructs RegisterEcsClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterEcsClusterRequest' :: String -> String -> ( { "EcsClusterArn" :: (String) , "StackId" :: (String) } -> {"EcsClusterArn" :: (String) , "StackId" :: (String) } ) -> RegisterEcsClusterRequest
newRegisterEcsClusterRequest' _EcsClusterArn _StackId customize = (RegisterEcsClusterRequest <<< customize) { "EcsClusterArn": _EcsClusterArn, "StackId": _StackId }



-- | <p>Contains the response to a <code>RegisterEcsCluster</code> request.</p>
newtype RegisterEcsClusterResult = RegisterEcsClusterResult 
  { "EcsClusterArn" :: Maybe (String)
  }
derive instance newtypeRegisterEcsClusterResult :: Newtype RegisterEcsClusterResult _
derive instance repGenericRegisterEcsClusterResult :: Generic RegisterEcsClusterResult _
instance showRegisterEcsClusterResult :: Show RegisterEcsClusterResult where show = genericShow
instance decodeRegisterEcsClusterResult :: Decode RegisterEcsClusterResult where decode = genericDecode options
instance encodeRegisterEcsClusterResult :: Encode RegisterEcsClusterResult where encode = genericEncode options

-- | Constructs RegisterEcsClusterResult from required parameters
newRegisterEcsClusterResult :: RegisterEcsClusterResult
newRegisterEcsClusterResult  = RegisterEcsClusterResult { "EcsClusterArn": Nothing }

-- | Constructs RegisterEcsClusterResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterEcsClusterResult' :: ( { "EcsClusterArn" :: Maybe (String) } -> {"EcsClusterArn" :: Maybe (String) } ) -> RegisterEcsClusterResult
newRegisterEcsClusterResult'  customize = (RegisterEcsClusterResult <<< customize) { "EcsClusterArn": Nothing }



newtype RegisterElasticIpRequest = RegisterElasticIpRequest 
  { "ElasticIp" :: (String)
  , "StackId" :: (String)
  }
derive instance newtypeRegisterElasticIpRequest :: Newtype RegisterElasticIpRequest _
derive instance repGenericRegisterElasticIpRequest :: Generic RegisterElasticIpRequest _
instance showRegisterElasticIpRequest :: Show RegisterElasticIpRequest where show = genericShow
instance decodeRegisterElasticIpRequest :: Decode RegisterElasticIpRequest where decode = genericDecode options
instance encodeRegisterElasticIpRequest :: Encode RegisterElasticIpRequest where encode = genericEncode options

-- | Constructs RegisterElasticIpRequest from required parameters
newRegisterElasticIpRequest :: String -> String -> RegisterElasticIpRequest
newRegisterElasticIpRequest _ElasticIp _StackId = RegisterElasticIpRequest { "ElasticIp": _ElasticIp, "StackId": _StackId }

-- | Constructs RegisterElasticIpRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterElasticIpRequest' :: String -> String -> ( { "ElasticIp" :: (String) , "StackId" :: (String) } -> {"ElasticIp" :: (String) , "StackId" :: (String) } ) -> RegisterElasticIpRequest
newRegisterElasticIpRequest' _ElasticIp _StackId customize = (RegisterElasticIpRequest <<< customize) { "ElasticIp": _ElasticIp, "StackId": _StackId }



-- | <p>Contains the response to a <code>RegisterElasticIp</code> request.</p>
newtype RegisterElasticIpResult = RegisterElasticIpResult 
  { "ElasticIp" :: Maybe (String)
  }
derive instance newtypeRegisterElasticIpResult :: Newtype RegisterElasticIpResult _
derive instance repGenericRegisterElasticIpResult :: Generic RegisterElasticIpResult _
instance showRegisterElasticIpResult :: Show RegisterElasticIpResult where show = genericShow
instance decodeRegisterElasticIpResult :: Decode RegisterElasticIpResult where decode = genericDecode options
instance encodeRegisterElasticIpResult :: Encode RegisterElasticIpResult where encode = genericEncode options

-- | Constructs RegisterElasticIpResult from required parameters
newRegisterElasticIpResult :: RegisterElasticIpResult
newRegisterElasticIpResult  = RegisterElasticIpResult { "ElasticIp": Nothing }

-- | Constructs RegisterElasticIpResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterElasticIpResult' :: ( { "ElasticIp" :: Maybe (String) } -> {"ElasticIp" :: Maybe (String) } ) -> RegisterElasticIpResult
newRegisterElasticIpResult'  customize = (RegisterElasticIpResult <<< customize) { "ElasticIp": Nothing }



newtype RegisterInstanceRequest = RegisterInstanceRequest 
  { "StackId" :: (String)
  , "Hostname" :: Maybe (String)
  , "PublicIp" :: Maybe (String)
  , "PrivateIp" :: Maybe (String)
  , "RsaPublicKey" :: Maybe (String)
  , "RsaPublicKeyFingerprint" :: Maybe (String)
  , "InstanceIdentity" :: Maybe (InstanceIdentity)
  }
derive instance newtypeRegisterInstanceRequest :: Newtype RegisterInstanceRequest _
derive instance repGenericRegisterInstanceRequest :: Generic RegisterInstanceRequest _
instance showRegisterInstanceRequest :: Show RegisterInstanceRequest where show = genericShow
instance decodeRegisterInstanceRequest :: Decode RegisterInstanceRequest where decode = genericDecode options
instance encodeRegisterInstanceRequest :: Encode RegisterInstanceRequest where encode = genericEncode options

-- | Constructs RegisterInstanceRequest from required parameters
newRegisterInstanceRequest :: String -> RegisterInstanceRequest
newRegisterInstanceRequest _StackId = RegisterInstanceRequest { "StackId": _StackId, "Hostname": Nothing, "InstanceIdentity": Nothing, "PrivateIp": Nothing, "PublicIp": Nothing, "RsaPublicKey": Nothing, "RsaPublicKeyFingerprint": Nothing }

-- | Constructs RegisterInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterInstanceRequest' :: String -> ( { "StackId" :: (String) , "Hostname" :: Maybe (String) , "PublicIp" :: Maybe (String) , "PrivateIp" :: Maybe (String) , "RsaPublicKey" :: Maybe (String) , "RsaPublicKeyFingerprint" :: Maybe (String) , "InstanceIdentity" :: Maybe (InstanceIdentity) } -> {"StackId" :: (String) , "Hostname" :: Maybe (String) , "PublicIp" :: Maybe (String) , "PrivateIp" :: Maybe (String) , "RsaPublicKey" :: Maybe (String) , "RsaPublicKeyFingerprint" :: Maybe (String) , "InstanceIdentity" :: Maybe (InstanceIdentity) } ) -> RegisterInstanceRequest
newRegisterInstanceRequest' _StackId customize = (RegisterInstanceRequest <<< customize) { "StackId": _StackId, "Hostname": Nothing, "InstanceIdentity": Nothing, "PrivateIp": Nothing, "PublicIp": Nothing, "RsaPublicKey": Nothing, "RsaPublicKeyFingerprint": Nothing }



-- | <p>Contains the response to a <code>RegisterInstanceResult</code> request.</p>
newtype RegisterInstanceResult = RegisterInstanceResult 
  { "InstanceId" :: Maybe (String)
  }
derive instance newtypeRegisterInstanceResult :: Newtype RegisterInstanceResult _
derive instance repGenericRegisterInstanceResult :: Generic RegisterInstanceResult _
instance showRegisterInstanceResult :: Show RegisterInstanceResult where show = genericShow
instance decodeRegisterInstanceResult :: Decode RegisterInstanceResult where decode = genericDecode options
instance encodeRegisterInstanceResult :: Encode RegisterInstanceResult where encode = genericEncode options

-- | Constructs RegisterInstanceResult from required parameters
newRegisterInstanceResult :: RegisterInstanceResult
newRegisterInstanceResult  = RegisterInstanceResult { "InstanceId": Nothing }

-- | Constructs RegisterInstanceResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterInstanceResult' :: ( { "InstanceId" :: Maybe (String) } -> {"InstanceId" :: Maybe (String) } ) -> RegisterInstanceResult
newRegisterInstanceResult'  customize = (RegisterInstanceResult <<< customize) { "InstanceId": Nothing }



newtype RegisterRdsDbInstanceRequest = RegisterRdsDbInstanceRequest 
  { "StackId" :: (String)
  , "RdsDbInstanceArn" :: (String)
  , "DbUser" :: (String)
  , "DbPassword" :: (String)
  }
derive instance newtypeRegisterRdsDbInstanceRequest :: Newtype RegisterRdsDbInstanceRequest _
derive instance repGenericRegisterRdsDbInstanceRequest :: Generic RegisterRdsDbInstanceRequest _
instance showRegisterRdsDbInstanceRequest :: Show RegisterRdsDbInstanceRequest where show = genericShow
instance decodeRegisterRdsDbInstanceRequest :: Decode RegisterRdsDbInstanceRequest where decode = genericDecode options
instance encodeRegisterRdsDbInstanceRequest :: Encode RegisterRdsDbInstanceRequest where encode = genericEncode options

-- | Constructs RegisterRdsDbInstanceRequest from required parameters
newRegisterRdsDbInstanceRequest :: String -> String -> String -> String -> RegisterRdsDbInstanceRequest
newRegisterRdsDbInstanceRequest _DbPassword _DbUser _RdsDbInstanceArn _StackId = RegisterRdsDbInstanceRequest { "DbPassword": _DbPassword, "DbUser": _DbUser, "RdsDbInstanceArn": _RdsDbInstanceArn, "StackId": _StackId }

-- | Constructs RegisterRdsDbInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterRdsDbInstanceRequest' :: String -> String -> String -> String -> ( { "StackId" :: (String) , "RdsDbInstanceArn" :: (String) , "DbUser" :: (String) , "DbPassword" :: (String) } -> {"StackId" :: (String) , "RdsDbInstanceArn" :: (String) , "DbUser" :: (String) , "DbPassword" :: (String) } ) -> RegisterRdsDbInstanceRequest
newRegisterRdsDbInstanceRequest' _DbPassword _DbUser _RdsDbInstanceArn _StackId customize = (RegisterRdsDbInstanceRequest <<< customize) { "DbPassword": _DbPassword, "DbUser": _DbUser, "RdsDbInstanceArn": _RdsDbInstanceArn, "StackId": _StackId }



newtype RegisterVolumeRequest = RegisterVolumeRequest 
  { "Ec2VolumeId" :: Maybe (String)
  , "StackId" :: (String)
  }
derive instance newtypeRegisterVolumeRequest :: Newtype RegisterVolumeRequest _
derive instance repGenericRegisterVolumeRequest :: Generic RegisterVolumeRequest _
instance showRegisterVolumeRequest :: Show RegisterVolumeRequest where show = genericShow
instance decodeRegisterVolumeRequest :: Decode RegisterVolumeRequest where decode = genericDecode options
instance encodeRegisterVolumeRequest :: Encode RegisterVolumeRequest where encode = genericEncode options

-- | Constructs RegisterVolumeRequest from required parameters
newRegisterVolumeRequest :: String -> RegisterVolumeRequest
newRegisterVolumeRequest _StackId = RegisterVolumeRequest { "StackId": _StackId, "Ec2VolumeId": Nothing }

-- | Constructs RegisterVolumeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterVolumeRequest' :: String -> ( { "Ec2VolumeId" :: Maybe (String) , "StackId" :: (String) } -> {"Ec2VolumeId" :: Maybe (String) , "StackId" :: (String) } ) -> RegisterVolumeRequest
newRegisterVolumeRequest' _StackId customize = (RegisterVolumeRequest <<< customize) { "StackId": _StackId, "Ec2VolumeId": Nothing }



-- | <p>Contains the response to a <code>RegisterVolume</code> request.</p>
newtype RegisterVolumeResult = RegisterVolumeResult 
  { "VolumeId" :: Maybe (String)
  }
derive instance newtypeRegisterVolumeResult :: Newtype RegisterVolumeResult _
derive instance repGenericRegisterVolumeResult :: Generic RegisterVolumeResult _
instance showRegisterVolumeResult :: Show RegisterVolumeResult where show = genericShow
instance decodeRegisterVolumeResult :: Decode RegisterVolumeResult where decode = genericDecode options
instance encodeRegisterVolumeResult :: Encode RegisterVolumeResult where encode = genericEncode options

-- | Constructs RegisterVolumeResult from required parameters
newRegisterVolumeResult :: RegisterVolumeResult
newRegisterVolumeResult  = RegisterVolumeResult { "VolumeId": Nothing }

-- | Constructs RegisterVolumeResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterVolumeResult' :: ( { "VolumeId" :: Maybe (String) } -> {"VolumeId" :: Maybe (String) } ) -> RegisterVolumeResult
newRegisterVolumeResult'  customize = (RegisterVolumeResult <<< customize) { "VolumeId": Nothing }



-- | <p>A registered instance's reported operating system.</p>
newtype ReportedOs = ReportedOs 
  { "Family" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "Version" :: Maybe (String)
  }
derive instance newtypeReportedOs :: Newtype ReportedOs _
derive instance repGenericReportedOs :: Generic ReportedOs _
instance showReportedOs :: Show ReportedOs where show = genericShow
instance decodeReportedOs :: Decode ReportedOs where decode = genericDecode options
instance encodeReportedOs :: Encode ReportedOs where encode = genericEncode options

-- | Constructs ReportedOs from required parameters
newReportedOs :: ReportedOs
newReportedOs  = ReportedOs { "Family": Nothing, "Name": Nothing, "Version": Nothing }

-- | Constructs ReportedOs's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReportedOs' :: ( { "Family" :: Maybe (String) , "Name" :: Maybe (String) , "Version" :: Maybe (String) } -> {"Family" :: Maybe (String) , "Name" :: Maybe (String) , "Version" :: Maybe (String) } ) -> ReportedOs
newReportedOs'  customize = (ReportedOs <<< customize) { "Family": Nothing, "Name": Nothing, "Version": Nothing }



newtype ResourceArn = ResourceArn String
derive instance newtypeResourceArn :: Newtype ResourceArn _
derive instance repGenericResourceArn :: Generic ResourceArn _
instance showResourceArn :: Show ResourceArn where show = genericShow
instance decodeResourceArn :: Decode ResourceArn where decode = genericDecode options
instance encodeResourceArn :: Encode ResourceArn where encode = genericEncode options



-- | <p>Indicates that a resource was not found.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: Maybe (String)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": Nothing }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": Nothing }



newtype RootDeviceType = RootDeviceType String
derive instance newtypeRootDeviceType :: Newtype RootDeviceType _
derive instance repGenericRootDeviceType :: Generic RootDeviceType _
instance showRootDeviceType :: Show RootDeviceType where show = genericShow
instance decodeRootDeviceType :: Decode RootDeviceType where decode = genericDecode options
instance encodeRootDeviceType :: Encode RootDeviceType where encode = genericEncode options



-- | <p>Describes a user's SSH information.</p>
newtype SelfUserProfile = SelfUserProfile 
  { "IamUserArn" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "SshUsername" :: Maybe (String)
  , "SshPublicKey" :: Maybe (String)
  }
derive instance newtypeSelfUserProfile :: Newtype SelfUserProfile _
derive instance repGenericSelfUserProfile :: Generic SelfUserProfile _
instance showSelfUserProfile :: Show SelfUserProfile where show = genericShow
instance decodeSelfUserProfile :: Decode SelfUserProfile where decode = genericDecode options
instance encodeSelfUserProfile :: Encode SelfUserProfile where encode = genericEncode options

-- | Constructs SelfUserProfile from required parameters
newSelfUserProfile :: SelfUserProfile
newSelfUserProfile  = SelfUserProfile { "IamUserArn": Nothing, "Name": Nothing, "SshPublicKey": Nothing, "SshUsername": Nothing }

-- | Constructs SelfUserProfile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSelfUserProfile' :: ( { "IamUserArn" :: Maybe (String) , "Name" :: Maybe (String) , "SshUsername" :: Maybe (String) , "SshPublicKey" :: Maybe (String) } -> {"IamUserArn" :: Maybe (String) , "Name" :: Maybe (String) , "SshUsername" :: Maybe (String) , "SshPublicKey" :: Maybe (String) } ) -> SelfUserProfile
newSelfUserProfile'  customize = (SelfUserProfile <<< customize) { "IamUserArn": Nothing, "Name": Nothing, "SshPublicKey": Nothing, "SshUsername": Nothing }



-- | <p>Describes an AWS OpsWorks Stacks service error.</p>
newtype ServiceError = ServiceError 
  { "ServiceErrorId" :: Maybe (String)
  , "StackId" :: Maybe (String)
  , "InstanceId" :: Maybe (String)
  , "Type" :: Maybe (String)
  , "Message" :: Maybe (String)
  , "CreatedAt" :: Maybe (DateTime)
  }
derive instance newtypeServiceError :: Newtype ServiceError _
derive instance repGenericServiceError :: Generic ServiceError _
instance showServiceError :: Show ServiceError where show = genericShow
instance decodeServiceError :: Decode ServiceError where decode = genericDecode options
instance encodeServiceError :: Encode ServiceError where encode = genericEncode options

-- | Constructs ServiceError from required parameters
newServiceError :: ServiceError
newServiceError  = ServiceError { "CreatedAt": Nothing, "InstanceId": Nothing, "Message": Nothing, "ServiceErrorId": Nothing, "StackId": Nothing, "Type": Nothing }

-- | Constructs ServiceError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceError' :: ( { "ServiceErrorId" :: Maybe (String) , "StackId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "Type" :: Maybe (String) , "Message" :: Maybe (String) , "CreatedAt" :: Maybe (DateTime) } -> {"ServiceErrorId" :: Maybe (String) , "StackId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "Type" :: Maybe (String) , "Message" :: Maybe (String) , "CreatedAt" :: Maybe (DateTime) } ) -> ServiceError
newServiceError'  customize = (ServiceError <<< customize) { "CreatedAt": Nothing, "InstanceId": Nothing, "Message": Nothing, "ServiceErrorId": Nothing, "StackId": Nothing, "Type": Nothing }



newtype ServiceErrors = ServiceErrors (Array ServiceError)
derive instance newtypeServiceErrors :: Newtype ServiceErrors _
derive instance repGenericServiceErrors :: Generic ServiceErrors _
instance showServiceErrors :: Show ServiceErrors where show = genericShow
instance decodeServiceErrors :: Decode ServiceErrors where decode = genericDecode options
instance encodeServiceErrors :: Encode ServiceErrors where encode = genericEncode options



newtype SetLoadBasedAutoScalingRequest = SetLoadBasedAutoScalingRequest 
  { "LayerId" :: (String)
  , "Enable" :: Maybe (Boolean)
  , "UpScaling" :: Maybe (AutoScalingThresholds)
  , "DownScaling" :: Maybe (AutoScalingThresholds)
  }
derive instance newtypeSetLoadBasedAutoScalingRequest :: Newtype SetLoadBasedAutoScalingRequest _
derive instance repGenericSetLoadBasedAutoScalingRequest :: Generic SetLoadBasedAutoScalingRequest _
instance showSetLoadBasedAutoScalingRequest :: Show SetLoadBasedAutoScalingRequest where show = genericShow
instance decodeSetLoadBasedAutoScalingRequest :: Decode SetLoadBasedAutoScalingRequest where decode = genericDecode options
instance encodeSetLoadBasedAutoScalingRequest :: Encode SetLoadBasedAutoScalingRequest where encode = genericEncode options

-- | Constructs SetLoadBasedAutoScalingRequest from required parameters
newSetLoadBasedAutoScalingRequest :: String -> SetLoadBasedAutoScalingRequest
newSetLoadBasedAutoScalingRequest _LayerId = SetLoadBasedAutoScalingRequest { "LayerId": _LayerId, "DownScaling": Nothing, "Enable": Nothing, "UpScaling": Nothing }

-- | Constructs SetLoadBasedAutoScalingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetLoadBasedAutoScalingRequest' :: String -> ( { "LayerId" :: (String) , "Enable" :: Maybe (Boolean) , "UpScaling" :: Maybe (AutoScalingThresholds) , "DownScaling" :: Maybe (AutoScalingThresholds) } -> {"LayerId" :: (String) , "Enable" :: Maybe (Boolean) , "UpScaling" :: Maybe (AutoScalingThresholds) , "DownScaling" :: Maybe (AutoScalingThresholds) } ) -> SetLoadBasedAutoScalingRequest
newSetLoadBasedAutoScalingRequest' _LayerId customize = (SetLoadBasedAutoScalingRequest <<< customize) { "LayerId": _LayerId, "DownScaling": Nothing, "Enable": Nothing, "UpScaling": Nothing }



newtype SetPermissionRequest = SetPermissionRequest 
  { "StackId" :: (String)
  , "IamUserArn" :: (String)
  , "AllowSsh" :: Maybe (Boolean)
  , "AllowSudo" :: Maybe (Boolean)
  , "Level" :: Maybe (String)
  }
derive instance newtypeSetPermissionRequest :: Newtype SetPermissionRequest _
derive instance repGenericSetPermissionRequest :: Generic SetPermissionRequest _
instance showSetPermissionRequest :: Show SetPermissionRequest where show = genericShow
instance decodeSetPermissionRequest :: Decode SetPermissionRequest where decode = genericDecode options
instance encodeSetPermissionRequest :: Encode SetPermissionRequest where encode = genericEncode options

-- | Constructs SetPermissionRequest from required parameters
newSetPermissionRequest :: String -> String -> SetPermissionRequest
newSetPermissionRequest _IamUserArn _StackId = SetPermissionRequest { "IamUserArn": _IamUserArn, "StackId": _StackId, "AllowSsh": Nothing, "AllowSudo": Nothing, "Level": Nothing }

-- | Constructs SetPermissionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetPermissionRequest' :: String -> String -> ( { "StackId" :: (String) , "IamUserArn" :: (String) , "AllowSsh" :: Maybe (Boolean) , "AllowSudo" :: Maybe (Boolean) , "Level" :: Maybe (String) } -> {"StackId" :: (String) , "IamUserArn" :: (String) , "AllowSsh" :: Maybe (Boolean) , "AllowSudo" :: Maybe (Boolean) , "Level" :: Maybe (String) } ) -> SetPermissionRequest
newSetPermissionRequest' _IamUserArn _StackId customize = (SetPermissionRequest <<< customize) { "IamUserArn": _IamUserArn, "StackId": _StackId, "AllowSsh": Nothing, "AllowSudo": Nothing, "Level": Nothing }



newtype SetTimeBasedAutoScalingRequest = SetTimeBasedAutoScalingRequest 
  { "InstanceId" :: (String)
  , "AutoScalingSchedule" :: Maybe (WeeklyAutoScalingSchedule)
  }
derive instance newtypeSetTimeBasedAutoScalingRequest :: Newtype SetTimeBasedAutoScalingRequest _
derive instance repGenericSetTimeBasedAutoScalingRequest :: Generic SetTimeBasedAutoScalingRequest _
instance showSetTimeBasedAutoScalingRequest :: Show SetTimeBasedAutoScalingRequest where show = genericShow
instance decodeSetTimeBasedAutoScalingRequest :: Decode SetTimeBasedAutoScalingRequest where decode = genericDecode options
instance encodeSetTimeBasedAutoScalingRequest :: Encode SetTimeBasedAutoScalingRequest where encode = genericEncode options

-- | Constructs SetTimeBasedAutoScalingRequest from required parameters
newSetTimeBasedAutoScalingRequest :: String -> SetTimeBasedAutoScalingRequest
newSetTimeBasedAutoScalingRequest _InstanceId = SetTimeBasedAutoScalingRequest { "InstanceId": _InstanceId, "AutoScalingSchedule": Nothing }

-- | Constructs SetTimeBasedAutoScalingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetTimeBasedAutoScalingRequest' :: String -> ( { "InstanceId" :: (String) , "AutoScalingSchedule" :: Maybe (WeeklyAutoScalingSchedule) } -> {"InstanceId" :: (String) , "AutoScalingSchedule" :: Maybe (WeeklyAutoScalingSchedule) } ) -> SetTimeBasedAutoScalingRequest
newSetTimeBasedAutoScalingRequest' _InstanceId customize = (SetTimeBasedAutoScalingRequest <<< customize) { "InstanceId": _InstanceId, "AutoScalingSchedule": Nothing }



-- | <p>The Shutdown event configuration.</p>
newtype ShutdownEventConfiguration = ShutdownEventConfiguration 
  { "ExecutionTimeout" :: Maybe (Int)
  , "DelayUntilElbConnectionsDrained" :: Maybe (Boolean)
  }
derive instance newtypeShutdownEventConfiguration :: Newtype ShutdownEventConfiguration _
derive instance repGenericShutdownEventConfiguration :: Generic ShutdownEventConfiguration _
instance showShutdownEventConfiguration :: Show ShutdownEventConfiguration where show = genericShow
instance decodeShutdownEventConfiguration :: Decode ShutdownEventConfiguration where decode = genericDecode options
instance encodeShutdownEventConfiguration :: Encode ShutdownEventConfiguration where encode = genericEncode options

-- | Constructs ShutdownEventConfiguration from required parameters
newShutdownEventConfiguration :: ShutdownEventConfiguration
newShutdownEventConfiguration  = ShutdownEventConfiguration { "DelayUntilElbConnectionsDrained": Nothing, "ExecutionTimeout": Nothing }

-- | Constructs ShutdownEventConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newShutdownEventConfiguration' :: ( { "ExecutionTimeout" :: Maybe (Int) , "DelayUntilElbConnectionsDrained" :: Maybe (Boolean) } -> {"ExecutionTimeout" :: Maybe (Int) , "DelayUntilElbConnectionsDrained" :: Maybe (Boolean) } ) -> ShutdownEventConfiguration
newShutdownEventConfiguration'  customize = (ShutdownEventConfiguration <<< customize) { "DelayUntilElbConnectionsDrained": Nothing, "ExecutionTimeout": Nothing }



-- | <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a> or <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Custom Recipes and Cookbooks</a>.</p>
newtype Source = Source 
  { "Type" :: Maybe (SourceType)
  , "Url" :: Maybe (String)
  , "Username" :: Maybe (String)
  , "Password" :: Maybe (String)
  , "SshKey" :: Maybe (String)
  , "Revision" :: Maybe (String)
  }
derive instance newtypeSource :: Newtype Source _
derive instance repGenericSource :: Generic Source _
instance showSource :: Show Source where show = genericShow
instance decodeSource :: Decode Source where decode = genericDecode options
instance encodeSource :: Encode Source where encode = genericEncode options

-- | Constructs Source from required parameters
newSource :: Source
newSource  = Source { "Password": Nothing, "Revision": Nothing, "SshKey": Nothing, "Type": Nothing, "Url": Nothing, "Username": Nothing }

-- | Constructs Source's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSource' :: ( { "Type" :: Maybe (SourceType) , "Url" :: Maybe (String) , "Username" :: Maybe (String) , "Password" :: Maybe (String) , "SshKey" :: Maybe (String) , "Revision" :: Maybe (String) } -> {"Type" :: Maybe (SourceType) , "Url" :: Maybe (String) , "Username" :: Maybe (String) , "Password" :: Maybe (String) , "SshKey" :: Maybe (String) , "Revision" :: Maybe (String) } ) -> Source
newSource'  customize = (Source <<< customize) { "Password": Nothing, "Revision": Nothing, "SshKey": Nothing, "Type": Nothing, "Url": Nothing, "Username": Nothing }



newtype SourceType = SourceType String
derive instance newtypeSourceType :: Newtype SourceType _
derive instance repGenericSourceType :: Generic SourceType _
instance showSourceType :: Show SourceType where show = genericShow
instance decodeSourceType :: Decode SourceType where decode = genericDecode options
instance encodeSourceType :: Encode SourceType where encode = genericEncode options



-- | <p>Describes an app's SSL configuration.</p>
newtype SslConfiguration = SslConfiguration 
  { "Certificate" :: (String)
  , "PrivateKey" :: (String)
  , "Chain" :: Maybe (String)
  }
derive instance newtypeSslConfiguration :: Newtype SslConfiguration _
derive instance repGenericSslConfiguration :: Generic SslConfiguration _
instance showSslConfiguration :: Show SslConfiguration where show = genericShow
instance decodeSslConfiguration :: Decode SslConfiguration where decode = genericDecode options
instance encodeSslConfiguration :: Encode SslConfiguration where encode = genericEncode options

-- | Constructs SslConfiguration from required parameters
newSslConfiguration :: String -> String -> SslConfiguration
newSslConfiguration _Certificate _PrivateKey = SslConfiguration { "Certificate": _Certificate, "PrivateKey": _PrivateKey, "Chain": Nothing }

-- | Constructs SslConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSslConfiguration' :: String -> String -> ( { "Certificate" :: (String) , "PrivateKey" :: (String) , "Chain" :: Maybe (String) } -> {"Certificate" :: (String) , "PrivateKey" :: (String) , "Chain" :: Maybe (String) } ) -> SslConfiguration
newSslConfiguration' _Certificate _PrivateKey customize = (SslConfiguration <<< customize) { "Certificate": _Certificate, "PrivateKey": _PrivateKey, "Chain": Nothing }



-- | <p>Describes a stack.</p>
newtype Stack = Stack 
  { "StackId" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "Arn" :: Maybe (String)
  , "Region" :: Maybe (String)
  , "VpcId" :: Maybe (String)
  , "Attributes" :: Maybe (StackAttributes)
  , "ServiceRoleArn" :: Maybe (String)
  , "DefaultInstanceProfileArn" :: Maybe (String)
  , "DefaultOs" :: Maybe (String)
  , "HostnameTheme" :: Maybe (String)
  , "DefaultAvailabilityZone" :: Maybe (String)
  , "DefaultSubnetId" :: Maybe (String)
  , "CustomJson" :: Maybe (String)
  , "ConfigurationManager" :: Maybe (StackConfigurationManager)
  , "ChefConfiguration" :: Maybe (ChefConfiguration)
  , "UseCustomCookbooks" :: Maybe (Boolean)
  , "UseOpsworksSecurityGroups" :: Maybe (Boolean)
  , "CustomCookbooksSource" :: Maybe (Source)
  , "DefaultSshKeyName" :: Maybe (String)
  , "CreatedAt" :: Maybe (DateTime)
  , "DefaultRootDeviceType" :: Maybe (RootDeviceType)
  , "AgentVersion" :: Maybe (String)
  }
derive instance newtypeStack :: Newtype Stack _
derive instance repGenericStack :: Generic Stack _
instance showStack :: Show Stack where show = genericShow
instance decodeStack :: Decode Stack where decode = genericDecode options
instance encodeStack :: Encode Stack where encode = genericEncode options

-- | Constructs Stack from required parameters
newStack :: Stack
newStack  = Stack { "AgentVersion": Nothing, "Arn": Nothing, "Attributes": Nothing, "ChefConfiguration": Nothing, "ConfigurationManager": Nothing, "CreatedAt": Nothing, "CustomCookbooksSource": Nothing, "CustomJson": Nothing, "DefaultAvailabilityZone": Nothing, "DefaultInstanceProfileArn": Nothing, "DefaultOs": Nothing, "DefaultRootDeviceType": Nothing, "DefaultSshKeyName": Nothing, "DefaultSubnetId": Nothing, "HostnameTheme": Nothing, "Name": Nothing, "Region": Nothing, "ServiceRoleArn": Nothing, "StackId": Nothing, "UseCustomCookbooks": Nothing, "UseOpsworksSecurityGroups": Nothing, "VpcId": Nothing }

-- | Constructs Stack's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStack' :: ( { "StackId" :: Maybe (String) , "Name" :: Maybe (String) , "Arn" :: Maybe (String) , "Region" :: Maybe (String) , "VpcId" :: Maybe (String) , "Attributes" :: Maybe (StackAttributes) , "ServiceRoleArn" :: Maybe (String) , "DefaultInstanceProfileArn" :: Maybe (String) , "DefaultOs" :: Maybe (String) , "HostnameTheme" :: Maybe (String) , "DefaultAvailabilityZone" :: Maybe (String) , "DefaultSubnetId" :: Maybe (String) , "CustomJson" :: Maybe (String) , "ConfigurationManager" :: Maybe (StackConfigurationManager) , "ChefConfiguration" :: Maybe (ChefConfiguration) , "UseCustomCookbooks" :: Maybe (Boolean) , "UseOpsworksSecurityGroups" :: Maybe (Boolean) , "CustomCookbooksSource" :: Maybe (Source) , "DefaultSshKeyName" :: Maybe (String) , "CreatedAt" :: Maybe (DateTime) , "DefaultRootDeviceType" :: Maybe (RootDeviceType) , "AgentVersion" :: Maybe (String) } -> {"StackId" :: Maybe (String) , "Name" :: Maybe (String) , "Arn" :: Maybe (String) , "Region" :: Maybe (String) , "VpcId" :: Maybe (String) , "Attributes" :: Maybe (StackAttributes) , "ServiceRoleArn" :: Maybe (String) , "DefaultInstanceProfileArn" :: Maybe (String) , "DefaultOs" :: Maybe (String) , "HostnameTheme" :: Maybe (String) , "DefaultAvailabilityZone" :: Maybe (String) , "DefaultSubnetId" :: Maybe (String) , "CustomJson" :: Maybe (String) , "ConfigurationManager" :: Maybe (StackConfigurationManager) , "ChefConfiguration" :: Maybe (ChefConfiguration) , "UseCustomCookbooks" :: Maybe (Boolean) , "UseOpsworksSecurityGroups" :: Maybe (Boolean) , "CustomCookbooksSource" :: Maybe (Source) , "DefaultSshKeyName" :: Maybe (String) , "CreatedAt" :: Maybe (DateTime) , "DefaultRootDeviceType" :: Maybe (RootDeviceType) , "AgentVersion" :: Maybe (String) } ) -> Stack
newStack'  customize = (Stack <<< customize) { "AgentVersion": Nothing, "Arn": Nothing, "Attributes": Nothing, "ChefConfiguration": Nothing, "ConfigurationManager": Nothing, "CreatedAt": Nothing, "CustomCookbooksSource": Nothing, "CustomJson": Nothing, "DefaultAvailabilityZone": Nothing, "DefaultInstanceProfileArn": Nothing, "DefaultOs": Nothing, "DefaultRootDeviceType": Nothing, "DefaultSshKeyName": Nothing, "DefaultSubnetId": Nothing, "HostnameTheme": Nothing, "Name": Nothing, "Region": Nothing, "ServiceRoleArn": Nothing, "StackId": Nothing, "UseCustomCookbooks": Nothing, "UseOpsworksSecurityGroups": Nothing, "VpcId": Nothing }



newtype StackAttributes = StackAttributes (StrMap.StrMap String)
derive instance newtypeStackAttributes :: Newtype StackAttributes _
derive instance repGenericStackAttributes :: Generic StackAttributes _
instance showStackAttributes :: Show StackAttributes where show = genericShow
instance decodeStackAttributes :: Decode StackAttributes where decode = genericDecode options
instance encodeStackAttributes :: Encode StackAttributes where encode = genericEncode options



newtype StackAttributesKeys = StackAttributesKeys String
derive instance newtypeStackAttributesKeys :: Newtype StackAttributesKeys _
derive instance repGenericStackAttributesKeys :: Generic StackAttributesKeys _
instance showStackAttributesKeys :: Show StackAttributesKeys where show = genericShow
instance decodeStackAttributesKeys :: Decode StackAttributesKeys where decode = genericDecode options
instance encodeStackAttributesKeys :: Encode StackAttributesKeys where encode = genericEncode options



-- | <p>Describes the configuration manager.</p>
newtype StackConfigurationManager = StackConfigurationManager 
  { "Name" :: Maybe (String)
  , "Version" :: Maybe (String)
  }
derive instance newtypeStackConfigurationManager :: Newtype StackConfigurationManager _
derive instance repGenericStackConfigurationManager :: Generic StackConfigurationManager _
instance showStackConfigurationManager :: Show StackConfigurationManager where show = genericShow
instance decodeStackConfigurationManager :: Decode StackConfigurationManager where decode = genericDecode options
instance encodeStackConfigurationManager :: Encode StackConfigurationManager where encode = genericEncode options

-- | Constructs StackConfigurationManager from required parameters
newStackConfigurationManager :: StackConfigurationManager
newStackConfigurationManager  = StackConfigurationManager { "Name": Nothing, "Version": Nothing }

-- | Constructs StackConfigurationManager's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStackConfigurationManager' :: ( { "Name" :: Maybe (String) , "Version" :: Maybe (String) } -> {"Name" :: Maybe (String) , "Version" :: Maybe (String) } ) -> StackConfigurationManager
newStackConfigurationManager'  customize = (StackConfigurationManager <<< customize) { "Name": Nothing, "Version": Nothing }



-- | <p>Summarizes the number of layers, instances, and apps in a stack.</p>
newtype StackSummary = StackSummary 
  { "StackId" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "Arn" :: Maybe (String)
  , "LayersCount" :: Maybe (Int)
  , "AppsCount" :: Maybe (Int)
  , "InstancesCount" :: Maybe (InstancesCount)
  }
derive instance newtypeStackSummary :: Newtype StackSummary _
derive instance repGenericStackSummary :: Generic StackSummary _
instance showStackSummary :: Show StackSummary where show = genericShow
instance decodeStackSummary :: Decode StackSummary where decode = genericDecode options
instance encodeStackSummary :: Encode StackSummary where encode = genericEncode options

-- | Constructs StackSummary from required parameters
newStackSummary :: StackSummary
newStackSummary  = StackSummary { "AppsCount": Nothing, "Arn": Nothing, "InstancesCount": Nothing, "LayersCount": Nothing, "Name": Nothing, "StackId": Nothing }

-- | Constructs StackSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStackSummary' :: ( { "StackId" :: Maybe (String) , "Name" :: Maybe (String) , "Arn" :: Maybe (String) , "LayersCount" :: Maybe (Int) , "AppsCount" :: Maybe (Int) , "InstancesCount" :: Maybe (InstancesCount) } -> {"StackId" :: Maybe (String) , "Name" :: Maybe (String) , "Arn" :: Maybe (String) , "LayersCount" :: Maybe (Int) , "AppsCount" :: Maybe (Int) , "InstancesCount" :: Maybe (InstancesCount) } ) -> StackSummary
newStackSummary'  customize = (StackSummary <<< customize) { "AppsCount": Nothing, "Arn": Nothing, "InstancesCount": Nothing, "LayersCount": Nothing, "Name": Nothing, "StackId": Nothing }



newtype Stacks = Stacks (Array Stack)
derive instance newtypeStacks :: Newtype Stacks _
derive instance repGenericStacks :: Generic Stacks _
instance showStacks :: Show Stacks where show = genericShow
instance decodeStacks :: Decode Stacks where decode = genericDecode options
instance encodeStacks :: Encode Stacks where encode = genericEncode options



newtype StartInstanceRequest = StartInstanceRequest 
  { "InstanceId" :: (String)
  }
derive instance newtypeStartInstanceRequest :: Newtype StartInstanceRequest _
derive instance repGenericStartInstanceRequest :: Generic StartInstanceRequest _
instance showStartInstanceRequest :: Show StartInstanceRequest where show = genericShow
instance decodeStartInstanceRequest :: Decode StartInstanceRequest where decode = genericDecode options
instance encodeStartInstanceRequest :: Encode StartInstanceRequest where encode = genericEncode options

-- | Constructs StartInstanceRequest from required parameters
newStartInstanceRequest :: String -> StartInstanceRequest
newStartInstanceRequest _InstanceId = StartInstanceRequest { "InstanceId": _InstanceId }

-- | Constructs StartInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartInstanceRequest' :: String -> ( { "InstanceId" :: (String) } -> {"InstanceId" :: (String) } ) -> StartInstanceRequest
newStartInstanceRequest' _InstanceId customize = (StartInstanceRequest <<< customize) { "InstanceId": _InstanceId }



newtype StartStackRequest = StartStackRequest 
  { "StackId" :: (String)
  }
derive instance newtypeStartStackRequest :: Newtype StartStackRequest _
derive instance repGenericStartStackRequest :: Generic StartStackRequest _
instance showStartStackRequest :: Show StartStackRequest where show = genericShow
instance decodeStartStackRequest :: Decode StartStackRequest where decode = genericDecode options
instance encodeStartStackRequest :: Encode StartStackRequest where encode = genericEncode options

-- | Constructs StartStackRequest from required parameters
newStartStackRequest :: String -> StartStackRequest
newStartStackRequest _StackId = StartStackRequest { "StackId": _StackId }

-- | Constructs StartStackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartStackRequest' :: String -> ( { "StackId" :: (String) } -> {"StackId" :: (String) } ) -> StartStackRequest
newStartStackRequest' _StackId customize = (StartStackRequest <<< customize) { "StackId": _StackId }



newtype StopInstanceRequest = StopInstanceRequest 
  { "InstanceId" :: (String)
  , "Force" :: Maybe (Boolean)
  }
derive instance newtypeStopInstanceRequest :: Newtype StopInstanceRequest _
derive instance repGenericStopInstanceRequest :: Generic StopInstanceRequest _
instance showStopInstanceRequest :: Show StopInstanceRequest where show = genericShow
instance decodeStopInstanceRequest :: Decode StopInstanceRequest where decode = genericDecode options
instance encodeStopInstanceRequest :: Encode StopInstanceRequest where encode = genericEncode options

-- | Constructs StopInstanceRequest from required parameters
newStopInstanceRequest :: String -> StopInstanceRequest
newStopInstanceRequest _InstanceId = StopInstanceRequest { "InstanceId": _InstanceId, "Force": Nothing }

-- | Constructs StopInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopInstanceRequest' :: String -> ( { "InstanceId" :: (String) , "Force" :: Maybe (Boolean) } -> {"InstanceId" :: (String) , "Force" :: Maybe (Boolean) } ) -> StopInstanceRequest
newStopInstanceRequest' _InstanceId customize = (StopInstanceRequest <<< customize) { "InstanceId": _InstanceId, "Force": Nothing }



newtype StopStackRequest = StopStackRequest 
  { "StackId" :: (String)
  }
derive instance newtypeStopStackRequest :: Newtype StopStackRequest _
derive instance repGenericStopStackRequest :: Generic StopStackRequest _
instance showStopStackRequest :: Show StopStackRequest where show = genericShow
instance decodeStopStackRequest :: Decode StopStackRequest where decode = genericDecode options
instance encodeStopStackRequest :: Encode StopStackRequest where encode = genericEncode options

-- | Constructs StopStackRequest from required parameters
newStopStackRequest :: String -> StopStackRequest
newStopStackRequest _StackId = StopStackRequest { "StackId": _StackId }

-- | Constructs StopStackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopStackRequest' :: String -> ( { "StackId" :: (String) } -> {"StackId" :: (String) } ) -> StopStackRequest
newStopStackRequest' _StackId customize = (StopStackRequest <<< customize) { "StackId": _StackId }



newtype Strings = Strings (Array String)
derive instance newtypeStrings :: Newtype Strings _
derive instance repGenericStrings :: Generic Strings _
instance showStrings :: Show Strings where show = genericShow
instance decodeStrings :: Decode Strings where decode = genericDecode options
instance encodeStrings :: Encode Strings where encode = genericEncode options



newtype Switch = Switch String
derive instance newtypeSwitch :: Newtype Switch _
derive instance repGenericSwitch :: Generic Switch _
instance showSwitch :: Show Switch where show = genericShow
instance decodeSwitch :: Decode Switch where decode = genericDecode options
instance encodeSwitch :: Encode Switch where encode = genericEncode options



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeys = TagKeys (Array TagKey)
derive instance newtypeTagKeys :: Newtype TagKeys _
derive instance repGenericTagKeys :: Generic TagKeys _
instance showTagKeys :: Show TagKeys where show = genericShow
instance decodeTagKeys :: Decode TagKeys where decode = genericDecode options
instance encodeTagKeys :: Encode TagKeys where encode = genericEncode options



newtype TagResourceRequest = TagResourceRequest 
  { "ResourceArn" :: (ResourceArn)
  , "Tags" :: (Tags)
  }
derive instance newtypeTagResourceRequest :: Newtype TagResourceRequest _
derive instance repGenericTagResourceRequest :: Generic TagResourceRequest _
instance showTagResourceRequest :: Show TagResourceRequest where show = genericShow
instance decodeTagResourceRequest :: Decode TagResourceRequest where decode = genericDecode options
instance encodeTagResourceRequest :: Encode TagResourceRequest where encode = genericEncode options

-- | Constructs TagResourceRequest from required parameters
newTagResourceRequest :: ResourceArn -> Tags -> TagResourceRequest
newTagResourceRequest _ResourceArn _Tags = TagResourceRequest { "ResourceArn": _ResourceArn, "Tags": _Tags }

-- | Constructs TagResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagResourceRequest' :: ResourceArn -> Tags -> ( { "ResourceArn" :: (ResourceArn) , "Tags" :: (Tags) } -> {"ResourceArn" :: (ResourceArn) , "Tags" :: (Tags) } ) -> TagResourceRequest
newTagResourceRequest' _ResourceArn _Tags customize = (TagResourceRequest <<< customize) { "ResourceArn": _ResourceArn, "Tags": _Tags }



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



newtype Tags = Tags (StrMap.StrMap TagValue)
derive instance newtypeTags :: Newtype Tags _
derive instance repGenericTags :: Generic Tags _
instance showTags :: Show Tags where show = genericShow
instance decodeTags :: Decode Tags where decode = genericDecode options
instance encodeTags :: Encode Tags where encode = genericEncode options



-- | <p>Contains the data needed by RDP clients such as the Microsoft Remote Desktop Connection to log in to the instance.</p>
newtype TemporaryCredential = TemporaryCredential 
  { "Username" :: Maybe (String)
  , "Password" :: Maybe (String)
  , "ValidForInMinutes" :: Maybe (Int)
  , "InstanceId" :: Maybe (String)
  }
derive instance newtypeTemporaryCredential :: Newtype TemporaryCredential _
derive instance repGenericTemporaryCredential :: Generic TemporaryCredential _
instance showTemporaryCredential :: Show TemporaryCredential where show = genericShow
instance decodeTemporaryCredential :: Decode TemporaryCredential where decode = genericDecode options
instance encodeTemporaryCredential :: Encode TemporaryCredential where encode = genericEncode options

-- | Constructs TemporaryCredential from required parameters
newTemporaryCredential :: TemporaryCredential
newTemporaryCredential  = TemporaryCredential { "InstanceId": Nothing, "Password": Nothing, "Username": Nothing, "ValidForInMinutes": Nothing }

-- | Constructs TemporaryCredential's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTemporaryCredential' :: ( { "Username" :: Maybe (String) , "Password" :: Maybe (String) , "ValidForInMinutes" :: Maybe (Int) , "InstanceId" :: Maybe (String) } -> {"Username" :: Maybe (String) , "Password" :: Maybe (String) , "ValidForInMinutes" :: Maybe (Int) , "InstanceId" :: Maybe (String) } ) -> TemporaryCredential
newTemporaryCredential'  customize = (TemporaryCredential <<< customize) { "InstanceId": Nothing, "Password": Nothing, "Username": Nothing, "ValidForInMinutes": Nothing }



-- | <p>Describes an instance's time-based auto scaling configuration.</p>
newtype TimeBasedAutoScalingConfiguration = TimeBasedAutoScalingConfiguration 
  { "InstanceId" :: Maybe (String)
  , "AutoScalingSchedule" :: Maybe (WeeklyAutoScalingSchedule)
  }
derive instance newtypeTimeBasedAutoScalingConfiguration :: Newtype TimeBasedAutoScalingConfiguration _
derive instance repGenericTimeBasedAutoScalingConfiguration :: Generic TimeBasedAutoScalingConfiguration _
instance showTimeBasedAutoScalingConfiguration :: Show TimeBasedAutoScalingConfiguration where show = genericShow
instance decodeTimeBasedAutoScalingConfiguration :: Decode TimeBasedAutoScalingConfiguration where decode = genericDecode options
instance encodeTimeBasedAutoScalingConfiguration :: Encode TimeBasedAutoScalingConfiguration where encode = genericEncode options

-- | Constructs TimeBasedAutoScalingConfiguration from required parameters
newTimeBasedAutoScalingConfiguration :: TimeBasedAutoScalingConfiguration
newTimeBasedAutoScalingConfiguration  = TimeBasedAutoScalingConfiguration { "AutoScalingSchedule": Nothing, "InstanceId": Nothing }

-- | Constructs TimeBasedAutoScalingConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimeBasedAutoScalingConfiguration' :: ( { "InstanceId" :: Maybe (String) , "AutoScalingSchedule" :: Maybe (WeeklyAutoScalingSchedule) } -> {"InstanceId" :: Maybe (String) , "AutoScalingSchedule" :: Maybe (WeeklyAutoScalingSchedule) } ) -> TimeBasedAutoScalingConfiguration
newTimeBasedAutoScalingConfiguration'  customize = (TimeBasedAutoScalingConfiguration <<< customize) { "AutoScalingSchedule": Nothing, "InstanceId": Nothing }



newtype TimeBasedAutoScalingConfigurations = TimeBasedAutoScalingConfigurations (Array TimeBasedAutoScalingConfiguration)
derive instance newtypeTimeBasedAutoScalingConfigurations :: Newtype TimeBasedAutoScalingConfigurations _
derive instance repGenericTimeBasedAutoScalingConfigurations :: Generic TimeBasedAutoScalingConfigurations _
instance showTimeBasedAutoScalingConfigurations :: Show TimeBasedAutoScalingConfigurations where show = genericShow
instance decodeTimeBasedAutoScalingConfigurations :: Decode TimeBasedAutoScalingConfigurations where decode = genericDecode options
instance encodeTimeBasedAutoScalingConfigurations :: Encode TimeBasedAutoScalingConfigurations where encode = genericEncode options



newtype UnassignInstanceRequest = UnassignInstanceRequest 
  { "InstanceId" :: (String)
  }
derive instance newtypeUnassignInstanceRequest :: Newtype UnassignInstanceRequest _
derive instance repGenericUnassignInstanceRequest :: Generic UnassignInstanceRequest _
instance showUnassignInstanceRequest :: Show UnassignInstanceRequest where show = genericShow
instance decodeUnassignInstanceRequest :: Decode UnassignInstanceRequest where decode = genericDecode options
instance encodeUnassignInstanceRequest :: Encode UnassignInstanceRequest where encode = genericEncode options

-- | Constructs UnassignInstanceRequest from required parameters
newUnassignInstanceRequest :: String -> UnassignInstanceRequest
newUnassignInstanceRequest _InstanceId = UnassignInstanceRequest { "InstanceId": _InstanceId }

-- | Constructs UnassignInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnassignInstanceRequest' :: String -> ( { "InstanceId" :: (String) } -> {"InstanceId" :: (String) } ) -> UnassignInstanceRequest
newUnassignInstanceRequest' _InstanceId customize = (UnassignInstanceRequest <<< customize) { "InstanceId": _InstanceId }



newtype UnassignVolumeRequest = UnassignVolumeRequest 
  { "VolumeId" :: (String)
  }
derive instance newtypeUnassignVolumeRequest :: Newtype UnassignVolumeRequest _
derive instance repGenericUnassignVolumeRequest :: Generic UnassignVolumeRequest _
instance showUnassignVolumeRequest :: Show UnassignVolumeRequest where show = genericShow
instance decodeUnassignVolumeRequest :: Decode UnassignVolumeRequest where decode = genericDecode options
instance encodeUnassignVolumeRequest :: Encode UnassignVolumeRequest where encode = genericEncode options

-- | Constructs UnassignVolumeRequest from required parameters
newUnassignVolumeRequest :: String -> UnassignVolumeRequest
newUnassignVolumeRequest _VolumeId = UnassignVolumeRequest { "VolumeId": _VolumeId }

-- | Constructs UnassignVolumeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnassignVolumeRequest' :: String -> ( { "VolumeId" :: (String) } -> {"VolumeId" :: (String) } ) -> UnassignVolumeRequest
newUnassignVolumeRequest' _VolumeId customize = (UnassignVolumeRequest <<< customize) { "VolumeId": _VolumeId }



newtype UntagResourceRequest = UntagResourceRequest 
  { "ResourceArn" :: (ResourceArn)
  , "TagKeys" :: (TagKeys)
  }
derive instance newtypeUntagResourceRequest :: Newtype UntagResourceRequest _
derive instance repGenericUntagResourceRequest :: Generic UntagResourceRequest _
instance showUntagResourceRequest :: Show UntagResourceRequest where show = genericShow
instance decodeUntagResourceRequest :: Decode UntagResourceRequest where decode = genericDecode options
instance encodeUntagResourceRequest :: Encode UntagResourceRequest where encode = genericEncode options

-- | Constructs UntagResourceRequest from required parameters
newUntagResourceRequest :: ResourceArn -> TagKeys -> UntagResourceRequest
newUntagResourceRequest _ResourceArn _TagKeys = UntagResourceRequest { "ResourceArn": _ResourceArn, "TagKeys": _TagKeys }

-- | Constructs UntagResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagResourceRequest' :: ResourceArn -> TagKeys -> ( { "ResourceArn" :: (ResourceArn) , "TagKeys" :: (TagKeys) } -> {"ResourceArn" :: (ResourceArn) , "TagKeys" :: (TagKeys) } ) -> UntagResourceRequest
newUntagResourceRequest' _ResourceArn _TagKeys customize = (UntagResourceRequest <<< customize) { "ResourceArn": _ResourceArn, "TagKeys": _TagKeys }



newtype UpdateAppRequest = UpdateAppRequest 
  { "AppId" :: (String)
  , "Name" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "DataSources" :: Maybe (DataSources)
  , "Type" :: Maybe (AppType)
  , "AppSource" :: Maybe (Source)
  , "Domains" :: Maybe (Strings)
  , "EnableSsl" :: Maybe (Boolean)
  , "SslConfiguration" :: Maybe (SslConfiguration)
  , "Attributes" :: Maybe (AppAttributes)
  , "Environment" :: Maybe (EnvironmentVariables)
  }
derive instance newtypeUpdateAppRequest :: Newtype UpdateAppRequest _
derive instance repGenericUpdateAppRequest :: Generic UpdateAppRequest _
instance showUpdateAppRequest :: Show UpdateAppRequest where show = genericShow
instance decodeUpdateAppRequest :: Decode UpdateAppRequest where decode = genericDecode options
instance encodeUpdateAppRequest :: Encode UpdateAppRequest where encode = genericEncode options

-- | Constructs UpdateAppRequest from required parameters
newUpdateAppRequest :: String -> UpdateAppRequest
newUpdateAppRequest _AppId = UpdateAppRequest { "AppId": _AppId, "AppSource": Nothing, "Attributes": Nothing, "DataSources": Nothing, "Description": Nothing, "Domains": Nothing, "EnableSsl": Nothing, "Environment": Nothing, "Name": Nothing, "SslConfiguration": Nothing, "Type": Nothing }

-- | Constructs UpdateAppRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAppRequest' :: String -> ( { "AppId" :: (String) , "Name" :: Maybe (String) , "Description" :: Maybe (String) , "DataSources" :: Maybe (DataSources) , "Type" :: Maybe (AppType) , "AppSource" :: Maybe (Source) , "Domains" :: Maybe (Strings) , "EnableSsl" :: Maybe (Boolean) , "SslConfiguration" :: Maybe (SslConfiguration) , "Attributes" :: Maybe (AppAttributes) , "Environment" :: Maybe (EnvironmentVariables) } -> {"AppId" :: (String) , "Name" :: Maybe (String) , "Description" :: Maybe (String) , "DataSources" :: Maybe (DataSources) , "Type" :: Maybe (AppType) , "AppSource" :: Maybe (Source) , "Domains" :: Maybe (Strings) , "EnableSsl" :: Maybe (Boolean) , "SslConfiguration" :: Maybe (SslConfiguration) , "Attributes" :: Maybe (AppAttributes) , "Environment" :: Maybe (EnvironmentVariables) } ) -> UpdateAppRequest
newUpdateAppRequest' _AppId customize = (UpdateAppRequest <<< customize) { "AppId": _AppId, "AppSource": Nothing, "Attributes": Nothing, "DataSources": Nothing, "Description": Nothing, "Domains": Nothing, "EnableSsl": Nothing, "Environment": Nothing, "Name": Nothing, "SslConfiguration": Nothing, "Type": Nothing }



newtype UpdateElasticIpRequest = UpdateElasticIpRequest 
  { "ElasticIp" :: (String)
  , "Name" :: Maybe (String)
  }
derive instance newtypeUpdateElasticIpRequest :: Newtype UpdateElasticIpRequest _
derive instance repGenericUpdateElasticIpRequest :: Generic UpdateElasticIpRequest _
instance showUpdateElasticIpRequest :: Show UpdateElasticIpRequest where show = genericShow
instance decodeUpdateElasticIpRequest :: Decode UpdateElasticIpRequest where decode = genericDecode options
instance encodeUpdateElasticIpRequest :: Encode UpdateElasticIpRequest where encode = genericEncode options

-- | Constructs UpdateElasticIpRequest from required parameters
newUpdateElasticIpRequest :: String -> UpdateElasticIpRequest
newUpdateElasticIpRequest _ElasticIp = UpdateElasticIpRequest { "ElasticIp": _ElasticIp, "Name": Nothing }

-- | Constructs UpdateElasticIpRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateElasticIpRequest' :: String -> ( { "ElasticIp" :: (String) , "Name" :: Maybe (String) } -> {"ElasticIp" :: (String) , "Name" :: Maybe (String) } ) -> UpdateElasticIpRequest
newUpdateElasticIpRequest' _ElasticIp customize = (UpdateElasticIpRequest <<< customize) { "ElasticIp": _ElasticIp, "Name": Nothing }



newtype UpdateInstanceRequest = UpdateInstanceRequest 
  { "InstanceId" :: (String)
  , "LayerIds" :: Maybe (Strings)
  , "InstanceType" :: Maybe (String)
  , "AutoScalingType" :: Maybe (AutoScalingType)
  , "Hostname" :: Maybe (String)
  , "Os" :: Maybe (String)
  , "AmiId" :: Maybe (String)
  , "SshKeyName" :: Maybe (String)
  , "Architecture" :: Maybe (Architecture)
  , "InstallUpdatesOnBoot" :: Maybe (Boolean)
  , "EbsOptimized" :: Maybe (Boolean)
  , "AgentVersion" :: Maybe (String)
  }
derive instance newtypeUpdateInstanceRequest :: Newtype UpdateInstanceRequest _
derive instance repGenericUpdateInstanceRequest :: Generic UpdateInstanceRequest _
instance showUpdateInstanceRequest :: Show UpdateInstanceRequest where show = genericShow
instance decodeUpdateInstanceRequest :: Decode UpdateInstanceRequest where decode = genericDecode options
instance encodeUpdateInstanceRequest :: Encode UpdateInstanceRequest where encode = genericEncode options

-- | Constructs UpdateInstanceRequest from required parameters
newUpdateInstanceRequest :: String -> UpdateInstanceRequest
newUpdateInstanceRequest _InstanceId = UpdateInstanceRequest { "InstanceId": _InstanceId, "AgentVersion": Nothing, "AmiId": Nothing, "Architecture": Nothing, "AutoScalingType": Nothing, "EbsOptimized": Nothing, "Hostname": Nothing, "InstallUpdatesOnBoot": Nothing, "InstanceType": Nothing, "LayerIds": Nothing, "Os": Nothing, "SshKeyName": Nothing }

-- | Constructs UpdateInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateInstanceRequest' :: String -> ( { "InstanceId" :: (String) , "LayerIds" :: Maybe (Strings) , "InstanceType" :: Maybe (String) , "AutoScalingType" :: Maybe (AutoScalingType) , "Hostname" :: Maybe (String) , "Os" :: Maybe (String) , "AmiId" :: Maybe (String) , "SshKeyName" :: Maybe (String) , "Architecture" :: Maybe (Architecture) , "InstallUpdatesOnBoot" :: Maybe (Boolean) , "EbsOptimized" :: Maybe (Boolean) , "AgentVersion" :: Maybe (String) } -> {"InstanceId" :: (String) , "LayerIds" :: Maybe (Strings) , "InstanceType" :: Maybe (String) , "AutoScalingType" :: Maybe (AutoScalingType) , "Hostname" :: Maybe (String) , "Os" :: Maybe (String) , "AmiId" :: Maybe (String) , "SshKeyName" :: Maybe (String) , "Architecture" :: Maybe (Architecture) , "InstallUpdatesOnBoot" :: Maybe (Boolean) , "EbsOptimized" :: Maybe (Boolean) , "AgentVersion" :: Maybe (String) } ) -> UpdateInstanceRequest
newUpdateInstanceRequest' _InstanceId customize = (UpdateInstanceRequest <<< customize) { "InstanceId": _InstanceId, "AgentVersion": Nothing, "AmiId": Nothing, "Architecture": Nothing, "AutoScalingType": Nothing, "EbsOptimized": Nothing, "Hostname": Nothing, "InstallUpdatesOnBoot": Nothing, "InstanceType": Nothing, "LayerIds": Nothing, "Os": Nothing, "SshKeyName": Nothing }



newtype UpdateLayerRequest = UpdateLayerRequest 
  { "LayerId" :: (String)
  , "Name" :: Maybe (String)
  , "Shortname" :: Maybe (String)
  , "Attributes" :: Maybe (LayerAttributes)
  , "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration)
  , "CustomInstanceProfileArn" :: Maybe (String)
  , "CustomJson" :: Maybe (String)
  , "CustomSecurityGroupIds" :: Maybe (Strings)
  , "Packages" :: Maybe (Strings)
  , "VolumeConfigurations" :: Maybe (VolumeConfigurations)
  , "EnableAutoHealing" :: Maybe (Boolean)
  , "AutoAssignElasticIps" :: Maybe (Boolean)
  , "AutoAssignPublicIps" :: Maybe (Boolean)
  , "CustomRecipes" :: Maybe (Recipes)
  , "InstallUpdatesOnBoot" :: Maybe (Boolean)
  , "UseEbsOptimizedInstances" :: Maybe (Boolean)
  , "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration)
  }
derive instance newtypeUpdateLayerRequest :: Newtype UpdateLayerRequest _
derive instance repGenericUpdateLayerRequest :: Generic UpdateLayerRequest _
instance showUpdateLayerRequest :: Show UpdateLayerRequest where show = genericShow
instance decodeUpdateLayerRequest :: Decode UpdateLayerRequest where decode = genericDecode options
instance encodeUpdateLayerRequest :: Encode UpdateLayerRequest where encode = genericEncode options

-- | Constructs UpdateLayerRequest from required parameters
newUpdateLayerRequest :: String -> UpdateLayerRequest
newUpdateLayerRequest _LayerId = UpdateLayerRequest { "LayerId": _LayerId, "Attributes": Nothing, "AutoAssignElasticIps": Nothing, "AutoAssignPublicIps": Nothing, "CloudWatchLogsConfiguration": Nothing, "CustomInstanceProfileArn": Nothing, "CustomJson": Nothing, "CustomRecipes": Nothing, "CustomSecurityGroupIds": Nothing, "EnableAutoHealing": Nothing, "InstallUpdatesOnBoot": Nothing, "LifecycleEventConfiguration": Nothing, "Name": Nothing, "Packages": Nothing, "Shortname": Nothing, "UseEbsOptimizedInstances": Nothing, "VolumeConfigurations": Nothing }

-- | Constructs UpdateLayerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateLayerRequest' :: String -> ( { "LayerId" :: (String) , "Name" :: Maybe (String) , "Shortname" :: Maybe (String) , "Attributes" :: Maybe (LayerAttributes) , "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration) , "CustomInstanceProfileArn" :: Maybe (String) , "CustomJson" :: Maybe (String) , "CustomSecurityGroupIds" :: Maybe (Strings) , "Packages" :: Maybe (Strings) , "VolumeConfigurations" :: Maybe (VolumeConfigurations) , "EnableAutoHealing" :: Maybe (Boolean) , "AutoAssignElasticIps" :: Maybe (Boolean) , "AutoAssignPublicIps" :: Maybe (Boolean) , "CustomRecipes" :: Maybe (Recipes) , "InstallUpdatesOnBoot" :: Maybe (Boolean) , "UseEbsOptimizedInstances" :: Maybe (Boolean) , "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) } -> {"LayerId" :: (String) , "Name" :: Maybe (String) , "Shortname" :: Maybe (String) , "Attributes" :: Maybe (LayerAttributes) , "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration) , "CustomInstanceProfileArn" :: Maybe (String) , "CustomJson" :: Maybe (String) , "CustomSecurityGroupIds" :: Maybe (Strings) , "Packages" :: Maybe (Strings) , "VolumeConfigurations" :: Maybe (VolumeConfigurations) , "EnableAutoHealing" :: Maybe (Boolean) , "AutoAssignElasticIps" :: Maybe (Boolean) , "AutoAssignPublicIps" :: Maybe (Boolean) , "CustomRecipes" :: Maybe (Recipes) , "InstallUpdatesOnBoot" :: Maybe (Boolean) , "UseEbsOptimizedInstances" :: Maybe (Boolean) , "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) } ) -> UpdateLayerRequest
newUpdateLayerRequest' _LayerId customize = (UpdateLayerRequest <<< customize) { "LayerId": _LayerId, "Attributes": Nothing, "AutoAssignElasticIps": Nothing, "AutoAssignPublicIps": Nothing, "CloudWatchLogsConfiguration": Nothing, "CustomInstanceProfileArn": Nothing, "CustomJson": Nothing, "CustomRecipes": Nothing, "CustomSecurityGroupIds": Nothing, "EnableAutoHealing": Nothing, "InstallUpdatesOnBoot": Nothing, "LifecycleEventConfiguration": Nothing, "Name": Nothing, "Packages": Nothing, "Shortname": Nothing, "UseEbsOptimizedInstances": Nothing, "VolumeConfigurations": Nothing }



newtype UpdateMyUserProfileRequest = UpdateMyUserProfileRequest 
  { "SshPublicKey" :: Maybe (String)
  }
derive instance newtypeUpdateMyUserProfileRequest :: Newtype UpdateMyUserProfileRequest _
derive instance repGenericUpdateMyUserProfileRequest :: Generic UpdateMyUserProfileRequest _
instance showUpdateMyUserProfileRequest :: Show UpdateMyUserProfileRequest where show = genericShow
instance decodeUpdateMyUserProfileRequest :: Decode UpdateMyUserProfileRequest where decode = genericDecode options
instance encodeUpdateMyUserProfileRequest :: Encode UpdateMyUserProfileRequest where encode = genericEncode options

-- | Constructs UpdateMyUserProfileRequest from required parameters
newUpdateMyUserProfileRequest :: UpdateMyUserProfileRequest
newUpdateMyUserProfileRequest  = UpdateMyUserProfileRequest { "SshPublicKey": Nothing }

-- | Constructs UpdateMyUserProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateMyUserProfileRequest' :: ( { "SshPublicKey" :: Maybe (String) } -> {"SshPublicKey" :: Maybe (String) } ) -> UpdateMyUserProfileRequest
newUpdateMyUserProfileRequest'  customize = (UpdateMyUserProfileRequest <<< customize) { "SshPublicKey": Nothing }



newtype UpdateRdsDbInstanceRequest = UpdateRdsDbInstanceRequest 
  { "RdsDbInstanceArn" :: (String)
  , "DbUser" :: Maybe (String)
  , "DbPassword" :: Maybe (String)
  }
derive instance newtypeUpdateRdsDbInstanceRequest :: Newtype UpdateRdsDbInstanceRequest _
derive instance repGenericUpdateRdsDbInstanceRequest :: Generic UpdateRdsDbInstanceRequest _
instance showUpdateRdsDbInstanceRequest :: Show UpdateRdsDbInstanceRequest where show = genericShow
instance decodeUpdateRdsDbInstanceRequest :: Decode UpdateRdsDbInstanceRequest where decode = genericDecode options
instance encodeUpdateRdsDbInstanceRequest :: Encode UpdateRdsDbInstanceRequest where encode = genericEncode options

-- | Constructs UpdateRdsDbInstanceRequest from required parameters
newUpdateRdsDbInstanceRequest :: String -> UpdateRdsDbInstanceRequest
newUpdateRdsDbInstanceRequest _RdsDbInstanceArn = UpdateRdsDbInstanceRequest { "RdsDbInstanceArn": _RdsDbInstanceArn, "DbPassword": Nothing, "DbUser": Nothing }

-- | Constructs UpdateRdsDbInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRdsDbInstanceRequest' :: String -> ( { "RdsDbInstanceArn" :: (String) , "DbUser" :: Maybe (String) , "DbPassword" :: Maybe (String) } -> {"RdsDbInstanceArn" :: (String) , "DbUser" :: Maybe (String) , "DbPassword" :: Maybe (String) } ) -> UpdateRdsDbInstanceRequest
newUpdateRdsDbInstanceRequest' _RdsDbInstanceArn customize = (UpdateRdsDbInstanceRequest <<< customize) { "RdsDbInstanceArn": _RdsDbInstanceArn, "DbPassword": Nothing, "DbUser": Nothing }



newtype UpdateStackRequest = UpdateStackRequest 
  { "StackId" :: (String)
  , "Name" :: Maybe (String)
  , "Attributes" :: Maybe (StackAttributes)
  , "ServiceRoleArn" :: Maybe (String)
  , "DefaultInstanceProfileArn" :: Maybe (String)
  , "DefaultOs" :: Maybe (String)
  , "HostnameTheme" :: Maybe (String)
  , "DefaultAvailabilityZone" :: Maybe (String)
  , "DefaultSubnetId" :: Maybe (String)
  , "CustomJson" :: Maybe (String)
  , "ConfigurationManager" :: Maybe (StackConfigurationManager)
  , "ChefConfiguration" :: Maybe (ChefConfiguration)
  , "UseCustomCookbooks" :: Maybe (Boolean)
  , "CustomCookbooksSource" :: Maybe (Source)
  , "DefaultSshKeyName" :: Maybe (String)
  , "DefaultRootDeviceType" :: Maybe (RootDeviceType)
  , "UseOpsworksSecurityGroups" :: Maybe (Boolean)
  , "AgentVersion" :: Maybe (String)
  }
derive instance newtypeUpdateStackRequest :: Newtype UpdateStackRequest _
derive instance repGenericUpdateStackRequest :: Generic UpdateStackRequest _
instance showUpdateStackRequest :: Show UpdateStackRequest where show = genericShow
instance decodeUpdateStackRequest :: Decode UpdateStackRequest where decode = genericDecode options
instance encodeUpdateStackRequest :: Encode UpdateStackRequest where encode = genericEncode options

-- | Constructs UpdateStackRequest from required parameters
newUpdateStackRequest :: String -> UpdateStackRequest
newUpdateStackRequest _StackId = UpdateStackRequest { "StackId": _StackId, "AgentVersion": Nothing, "Attributes": Nothing, "ChefConfiguration": Nothing, "ConfigurationManager": Nothing, "CustomCookbooksSource": Nothing, "CustomJson": Nothing, "DefaultAvailabilityZone": Nothing, "DefaultInstanceProfileArn": Nothing, "DefaultOs": Nothing, "DefaultRootDeviceType": Nothing, "DefaultSshKeyName": Nothing, "DefaultSubnetId": Nothing, "HostnameTheme": Nothing, "Name": Nothing, "ServiceRoleArn": Nothing, "UseCustomCookbooks": Nothing, "UseOpsworksSecurityGroups": Nothing }

-- | Constructs UpdateStackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStackRequest' :: String -> ( { "StackId" :: (String) , "Name" :: Maybe (String) , "Attributes" :: Maybe (StackAttributes) , "ServiceRoleArn" :: Maybe (String) , "DefaultInstanceProfileArn" :: Maybe (String) , "DefaultOs" :: Maybe (String) , "HostnameTheme" :: Maybe (String) , "DefaultAvailabilityZone" :: Maybe (String) , "DefaultSubnetId" :: Maybe (String) , "CustomJson" :: Maybe (String) , "ConfigurationManager" :: Maybe (StackConfigurationManager) , "ChefConfiguration" :: Maybe (ChefConfiguration) , "UseCustomCookbooks" :: Maybe (Boolean) , "CustomCookbooksSource" :: Maybe (Source) , "DefaultSshKeyName" :: Maybe (String) , "DefaultRootDeviceType" :: Maybe (RootDeviceType) , "UseOpsworksSecurityGroups" :: Maybe (Boolean) , "AgentVersion" :: Maybe (String) } -> {"StackId" :: (String) , "Name" :: Maybe (String) , "Attributes" :: Maybe (StackAttributes) , "ServiceRoleArn" :: Maybe (String) , "DefaultInstanceProfileArn" :: Maybe (String) , "DefaultOs" :: Maybe (String) , "HostnameTheme" :: Maybe (String) , "DefaultAvailabilityZone" :: Maybe (String) , "DefaultSubnetId" :: Maybe (String) , "CustomJson" :: Maybe (String) , "ConfigurationManager" :: Maybe (StackConfigurationManager) , "ChefConfiguration" :: Maybe (ChefConfiguration) , "UseCustomCookbooks" :: Maybe (Boolean) , "CustomCookbooksSource" :: Maybe (Source) , "DefaultSshKeyName" :: Maybe (String) , "DefaultRootDeviceType" :: Maybe (RootDeviceType) , "UseOpsworksSecurityGroups" :: Maybe (Boolean) , "AgentVersion" :: Maybe (String) } ) -> UpdateStackRequest
newUpdateStackRequest' _StackId customize = (UpdateStackRequest <<< customize) { "StackId": _StackId, "AgentVersion": Nothing, "Attributes": Nothing, "ChefConfiguration": Nothing, "ConfigurationManager": Nothing, "CustomCookbooksSource": Nothing, "CustomJson": Nothing, "DefaultAvailabilityZone": Nothing, "DefaultInstanceProfileArn": Nothing, "DefaultOs": Nothing, "DefaultRootDeviceType": Nothing, "DefaultSshKeyName": Nothing, "DefaultSubnetId": Nothing, "HostnameTheme": Nothing, "Name": Nothing, "ServiceRoleArn": Nothing, "UseCustomCookbooks": Nothing, "UseOpsworksSecurityGroups": Nothing }



newtype UpdateUserProfileRequest = UpdateUserProfileRequest 
  { "IamUserArn" :: (String)
  , "SshUsername" :: Maybe (String)
  , "SshPublicKey" :: Maybe (String)
  , "AllowSelfManagement" :: Maybe (Boolean)
  }
derive instance newtypeUpdateUserProfileRequest :: Newtype UpdateUserProfileRequest _
derive instance repGenericUpdateUserProfileRequest :: Generic UpdateUserProfileRequest _
instance showUpdateUserProfileRequest :: Show UpdateUserProfileRequest where show = genericShow
instance decodeUpdateUserProfileRequest :: Decode UpdateUserProfileRequest where decode = genericDecode options
instance encodeUpdateUserProfileRequest :: Encode UpdateUserProfileRequest where encode = genericEncode options

-- | Constructs UpdateUserProfileRequest from required parameters
newUpdateUserProfileRequest :: String -> UpdateUserProfileRequest
newUpdateUserProfileRequest _IamUserArn = UpdateUserProfileRequest { "IamUserArn": _IamUserArn, "AllowSelfManagement": Nothing, "SshPublicKey": Nothing, "SshUsername": Nothing }

-- | Constructs UpdateUserProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateUserProfileRequest' :: String -> ( { "IamUserArn" :: (String) , "SshUsername" :: Maybe (String) , "SshPublicKey" :: Maybe (String) , "AllowSelfManagement" :: Maybe (Boolean) } -> {"IamUserArn" :: (String) , "SshUsername" :: Maybe (String) , "SshPublicKey" :: Maybe (String) , "AllowSelfManagement" :: Maybe (Boolean) } ) -> UpdateUserProfileRequest
newUpdateUserProfileRequest' _IamUserArn customize = (UpdateUserProfileRequest <<< customize) { "IamUserArn": _IamUserArn, "AllowSelfManagement": Nothing, "SshPublicKey": Nothing, "SshUsername": Nothing }



newtype UpdateVolumeRequest = UpdateVolumeRequest 
  { "VolumeId" :: (String)
  , "Name" :: Maybe (String)
  , "MountPoint" :: Maybe (String)
  }
derive instance newtypeUpdateVolumeRequest :: Newtype UpdateVolumeRequest _
derive instance repGenericUpdateVolumeRequest :: Generic UpdateVolumeRequest _
instance showUpdateVolumeRequest :: Show UpdateVolumeRequest where show = genericShow
instance decodeUpdateVolumeRequest :: Decode UpdateVolumeRequest where decode = genericDecode options
instance encodeUpdateVolumeRequest :: Encode UpdateVolumeRequest where encode = genericEncode options

-- | Constructs UpdateVolumeRequest from required parameters
newUpdateVolumeRequest :: String -> UpdateVolumeRequest
newUpdateVolumeRequest _VolumeId = UpdateVolumeRequest { "VolumeId": _VolumeId, "MountPoint": Nothing, "Name": Nothing }

-- | Constructs UpdateVolumeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateVolumeRequest' :: String -> ( { "VolumeId" :: (String) , "Name" :: Maybe (String) , "MountPoint" :: Maybe (String) } -> {"VolumeId" :: (String) , "Name" :: Maybe (String) , "MountPoint" :: Maybe (String) } ) -> UpdateVolumeRequest
newUpdateVolumeRequest' _VolumeId customize = (UpdateVolumeRequest <<< customize) { "VolumeId": _VolumeId, "MountPoint": Nothing, "Name": Nothing }



-- | <p>Describes a user's SSH information.</p>
newtype UserProfile = UserProfile 
  { "IamUserArn" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "SshUsername" :: Maybe (String)
  , "SshPublicKey" :: Maybe (String)
  , "AllowSelfManagement" :: Maybe (Boolean)
  }
derive instance newtypeUserProfile :: Newtype UserProfile _
derive instance repGenericUserProfile :: Generic UserProfile _
instance showUserProfile :: Show UserProfile where show = genericShow
instance decodeUserProfile :: Decode UserProfile where decode = genericDecode options
instance encodeUserProfile :: Encode UserProfile where encode = genericEncode options

-- | Constructs UserProfile from required parameters
newUserProfile :: UserProfile
newUserProfile  = UserProfile { "AllowSelfManagement": Nothing, "IamUserArn": Nothing, "Name": Nothing, "SshPublicKey": Nothing, "SshUsername": Nothing }

-- | Constructs UserProfile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserProfile' :: ( { "IamUserArn" :: Maybe (String) , "Name" :: Maybe (String) , "SshUsername" :: Maybe (String) , "SshPublicKey" :: Maybe (String) , "AllowSelfManagement" :: Maybe (Boolean) } -> {"IamUserArn" :: Maybe (String) , "Name" :: Maybe (String) , "SshUsername" :: Maybe (String) , "SshPublicKey" :: Maybe (String) , "AllowSelfManagement" :: Maybe (Boolean) } ) -> UserProfile
newUserProfile'  customize = (UserProfile <<< customize) { "AllowSelfManagement": Nothing, "IamUserArn": Nothing, "Name": Nothing, "SshPublicKey": Nothing, "SshUsername": Nothing }



newtype UserProfiles = UserProfiles (Array UserProfile)
derive instance newtypeUserProfiles :: Newtype UserProfiles _
derive instance repGenericUserProfiles :: Generic UserProfiles _
instance showUserProfiles :: Show UserProfiles where show = genericShow
instance decodeUserProfiles :: Decode UserProfiles where decode = genericDecode options
instance encodeUserProfiles :: Encode UserProfiles where encode = genericEncode options



newtype ValidForInMinutes = ValidForInMinutes Int
derive instance newtypeValidForInMinutes :: Newtype ValidForInMinutes _
derive instance repGenericValidForInMinutes :: Generic ValidForInMinutes _
instance showValidForInMinutes :: Show ValidForInMinutes where show = genericShow
instance decodeValidForInMinutes :: Decode ValidForInMinutes where decode = genericDecode options
instance encodeValidForInMinutes :: Encode ValidForInMinutes where encode = genericEncode options



-- | <p>Indicates that a request was not valid.</p>
newtype ValidationException = ValidationException 
  { "message" :: Maybe (String)
  }
derive instance newtypeValidationException :: Newtype ValidationException _
derive instance repGenericValidationException :: Generic ValidationException _
instance showValidationException :: Show ValidationException where show = genericShow
instance decodeValidationException :: Decode ValidationException where decode = genericDecode options
instance encodeValidationException :: Encode ValidationException where encode = genericEncode options

-- | Constructs ValidationException from required parameters
newValidationException :: ValidationException
newValidationException  = ValidationException { "message": Nothing }

-- | Constructs ValidationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValidationException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> ValidationException
newValidationException'  customize = (ValidationException <<< customize) { "message": Nothing }



newtype VirtualizationType = VirtualizationType String
derive instance newtypeVirtualizationType :: Newtype VirtualizationType _
derive instance repGenericVirtualizationType :: Generic VirtualizationType _
instance showVirtualizationType :: Show VirtualizationType where show = genericShow
instance decodeVirtualizationType :: Decode VirtualizationType where decode = genericDecode options
instance encodeVirtualizationType :: Encode VirtualizationType where encode = genericEncode options



-- | <p>Describes an instance's Amazon EBS volume.</p>
newtype Volume = Volume 
  { "VolumeId" :: Maybe (String)
  , "Ec2VolumeId" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "RaidArrayId" :: Maybe (String)
  , "InstanceId" :: Maybe (String)
  , "Status" :: Maybe (String)
  , "Size" :: Maybe (Int)
  , "Device" :: Maybe (String)
  , "MountPoint" :: Maybe (String)
  , "Region" :: Maybe (String)
  , "AvailabilityZone" :: Maybe (String)
  , "VolumeType" :: Maybe (String)
  , "Iops" :: Maybe (Int)
  , "Encrypted" :: Maybe (Boolean)
  }
derive instance newtypeVolume :: Newtype Volume _
derive instance repGenericVolume :: Generic Volume _
instance showVolume :: Show Volume where show = genericShow
instance decodeVolume :: Decode Volume where decode = genericDecode options
instance encodeVolume :: Encode Volume where encode = genericEncode options

-- | Constructs Volume from required parameters
newVolume :: Volume
newVolume  = Volume { "AvailabilityZone": Nothing, "Device": Nothing, "Ec2VolumeId": Nothing, "Encrypted": Nothing, "InstanceId": Nothing, "Iops": Nothing, "MountPoint": Nothing, "Name": Nothing, "RaidArrayId": Nothing, "Region": Nothing, "Size": Nothing, "Status": Nothing, "VolumeId": Nothing, "VolumeType": Nothing }

-- | Constructs Volume's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolume' :: ( { "VolumeId" :: Maybe (String) , "Ec2VolumeId" :: Maybe (String) , "Name" :: Maybe (String) , "RaidArrayId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "Status" :: Maybe (String) , "Size" :: Maybe (Int) , "Device" :: Maybe (String) , "MountPoint" :: Maybe (String) , "Region" :: Maybe (String) , "AvailabilityZone" :: Maybe (String) , "VolumeType" :: Maybe (String) , "Iops" :: Maybe (Int) , "Encrypted" :: Maybe (Boolean) } -> {"VolumeId" :: Maybe (String) , "Ec2VolumeId" :: Maybe (String) , "Name" :: Maybe (String) , "RaidArrayId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "Status" :: Maybe (String) , "Size" :: Maybe (Int) , "Device" :: Maybe (String) , "MountPoint" :: Maybe (String) , "Region" :: Maybe (String) , "AvailabilityZone" :: Maybe (String) , "VolumeType" :: Maybe (String) , "Iops" :: Maybe (Int) , "Encrypted" :: Maybe (Boolean) } ) -> Volume
newVolume'  customize = (Volume <<< customize) { "AvailabilityZone": Nothing, "Device": Nothing, "Ec2VolumeId": Nothing, "Encrypted": Nothing, "InstanceId": Nothing, "Iops": Nothing, "MountPoint": Nothing, "Name": Nothing, "RaidArrayId": Nothing, "Region": Nothing, "Size": Nothing, "Status": Nothing, "VolumeId": Nothing, "VolumeType": Nothing }



-- | <p>Describes an Amazon EBS volume configuration.</p>
newtype VolumeConfiguration = VolumeConfiguration 
  { "MountPoint" :: (String)
  , "RaidLevel" :: Maybe (Int)
  , "NumberOfDisks" :: (Int)
  , "Size" :: (Int)
  , "VolumeType" :: Maybe (String)
  , "Iops" :: Maybe (Int)
  , "Encrypted" :: Maybe (Boolean)
  }
derive instance newtypeVolumeConfiguration :: Newtype VolumeConfiguration _
derive instance repGenericVolumeConfiguration :: Generic VolumeConfiguration _
instance showVolumeConfiguration :: Show VolumeConfiguration where show = genericShow
instance decodeVolumeConfiguration :: Decode VolumeConfiguration where decode = genericDecode options
instance encodeVolumeConfiguration :: Encode VolumeConfiguration where encode = genericEncode options

-- | Constructs VolumeConfiguration from required parameters
newVolumeConfiguration :: String -> Int -> Int -> VolumeConfiguration
newVolumeConfiguration _MountPoint _NumberOfDisks _Size = VolumeConfiguration { "MountPoint": _MountPoint, "NumberOfDisks": _NumberOfDisks, "Size": _Size, "Encrypted": Nothing, "Iops": Nothing, "RaidLevel": Nothing, "VolumeType": Nothing }

-- | Constructs VolumeConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolumeConfiguration' :: String -> Int -> Int -> ( { "MountPoint" :: (String) , "RaidLevel" :: Maybe (Int) , "NumberOfDisks" :: (Int) , "Size" :: (Int) , "VolumeType" :: Maybe (String) , "Iops" :: Maybe (Int) , "Encrypted" :: Maybe (Boolean) } -> {"MountPoint" :: (String) , "RaidLevel" :: Maybe (Int) , "NumberOfDisks" :: (Int) , "Size" :: (Int) , "VolumeType" :: Maybe (String) , "Iops" :: Maybe (Int) , "Encrypted" :: Maybe (Boolean) } ) -> VolumeConfiguration
newVolumeConfiguration' _MountPoint _NumberOfDisks _Size customize = (VolumeConfiguration <<< customize) { "MountPoint": _MountPoint, "NumberOfDisks": _NumberOfDisks, "Size": _Size, "Encrypted": Nothing, "Iops": Nothing, "RaidLevel": Nothing, "VolumeType": Nothing }



newtype VolumeConfigurations = VolumeConfigurations (Array VolumeConfiguration)
derive instance newtypeVolumeConfigurations :: Newtype VolumeConfigurations _
derive instance repGenericVolumeConfigurations :: Generic VolumeConfigurations _
instance showVolumeConfigurations :: Show VolumeConfigurations where show = genericShow
instance decodeVolumeConfigurations :: Decode VolumeConfigurations where decode = genericDecode options
instance encodeVolumeConfigurations :: Encode VolumeConfigurations where encode = genericEncode options



newtype VolumeType = VolumeType String
derive instance newtypeVolumeType :: Newtype VolumeType _
derive instance repGenericVolumeType :: Generic VolumeType _
instance showVolumeType :: Show VolumeType where show = genericShow
instance decodeVolumeType :: Decode VolumeType where decode = genericDecode options
instance encodeVolumeType :: Encode VolumeType where encode = genericEncode options



newtype Volumes = Volumes (Array Volume)
derive instance newtypeVolumes :: Newtype Volumes _
derive instance repGenericVolumes :: Generic Volumes _
instance showVolumes :: Show Volumes where show = genericShow
instance decodeVolumes :: Decode Volumes where decode = genericDecode options
instance encodeVolumes :: Encode Volumes where encode = genericEncode options



-- | <p>Describes a time-based instance's auto scaling schedule. The schedule consists of a set of key-value pairs.</p> <ul> <li> <p>The key is the time period (a UTC hour) and must be an integer from 0 - 23.</p> </li> <li> <p>The value indicates whether the instance should be online or offline for the specified period, and must be set to "on" or "off"</p> </li> </ul> <p>The default setting for all time periods is off, so you use the following parameters primarily to specify the online periods. You don't have to explicitly specify offline periods unless you want to change an online period to an offline period.</p> <p>The following example specifies that the instance should be online for four hours, from UTC 1200 - 1600. It will be off for the remainder of the day.</p> <p> <code> { "12":"on", "13":"on", "14":"on", "15":"on" } </code> </p>
newtype WeeklyAutoScalingSchedule = WeeklyAutoScalingSchedule 
  { "Monday" :: Maybe (DailyAutoScalingSchedule)
  , "Tuesday" :: Maybe (DailyAutoScalingSchedule)
  , "Wednesday" :: Maybe (DailyAutoScalingSchedule)
  , "Thursday" :: Maybe (DailyAutoScalingSchedule)
  , "Friday" :: Maybe (DailyAutoScalingSchedule)
  , "Saturday" :: Maybe (DailyAutoScalingSchedule)
  , "Sunday" :: Maybe (DailyAutoScalingSchedule)
  }
derive instance newtypeWeeklyAutoScalingSchedule :: Newtype WeeklyAutoScalingSchedule _
derive instance repGenericWeeklyAutoScalingSchedule :: Generic WeeklyAutoScalingSchedule _
instance showWeeklyAutoScalingSchedule :: Show WeeklyAutoScalingSchedule where show = genericShow
instance decodeWeeklyAutoScalingSchedule :: Decode WeeklyAutoScalingSchedule where decode = genericDecode options
instance encodeWeeklyAutoScalingSchedule :: Encode WeeklyAutoScalingSchedule where encode = genericEncode options

-- | Constructs WeeklyAutoScalingSchedule from required parameters
newWeeklyAutoScalingSchedule :: WeeklyAutoScalingSchedule
newWeeklyAutoScalingSchedule  = WeeklyAutoScalingSchedule { "Friday": Nothing, "Monday": Nothing, "Saturday": Nothing, "Sunday": Nothing, "Thursday": Nothing, "Tuesday": Nothing, "Wednesday": Nothing }

-- | Constructs WeeklyAutoScalingSchedule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWeeklyAutoScalingSchedule' :: ( { "Monday" :: Maybe (DailyAutoScalingSchedule) , "Tuesday" :: Maybe (DailyAutoScalingSchedule) , "Wednesday" :: Maybe (DailyAutoScalingSchedule) , "Thursday" :: Maybe (DailyAutoScalingSchedule) , "Friday" :: Maybe (DailyAutoScalingSchedule) , "Saturday" :: Maybe (DailyAutoScalingSchedule) , "Sunday" :: Maybe (DailyAutoScalingSchedule) } -> {"Monday" :: Maybe (DailyAutoScalingSchedule) , "Tuesday" :: Maybe (DailyAutoScalingSchedule) , "Wednesday" :: Maybe (DailyAutoScalingSchedule) , "Thursday" :: Maybe (DailyAutoScalingSchedule) , "Friday" :: Maybe (DailyAutoScalingSchedule) , "Saturday" :: Maybe (DailyAutoScalingSchedule) , "Sunday" :: Maybe (DailyAutoScalingSchedule) } ) -> WeeklyAutoScalingSchedule
newWeeklyAutoScalingSchedule'  customize = (WeeklyAutoScalingSchedule <<< customize) { "Friday": Nothing, "Monday": Nothing, "Saturday": Nothing, "Sunday": Nothing, "Thursday": Nothing, "Tuesday": Nothing, "Wednesday": Nothing }

