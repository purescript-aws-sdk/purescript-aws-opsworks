## Module AWS.OpsWorks.Types

#### `options`

``` purescript
options :: Options
```

#### `AgentVersion`

``` purescript
newtype AgentVersion
  = AgentVersion { "Version" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager) }
```

<p>Describes an agent version.</p>

##### Instances
``` purescript
Newtype AgentVersion _
Generic AgentVersion _
Show AgentVersion
Decode AgentVersion
Encode AgentVersion
```

#### `newAgentVersion`

``` purescript
newAgentVersion :: AgentVersion
```

Constructs AgentVersion from required parameters

#### `newAgentVersion'`

``` purescript
newAgentVersion' :: ({ "Version" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager) } -> { "Version" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager) }) -> AgentVersion
```

Constructs AgentVersion's fields from required parameters

#### `AgentVersions`

``` purescript
newtype AgentVersions
  = AgentVersions (Array AgentVersion)
```

##### Instances
``` purescript
Newtype AgentVersions _
Generic AgentVersions _
Show AgentVersions
Decode AgentVersions
Encode AgentVersions
```

#### `App`

``` purescript
newtype App
  = App { "AppId" :: Maybe (String), "StackId" :: Maybe (String), "Shortname" :: Maybe (String), "Name" :: Maybe (String), "Description" :: Maybe (String), "DataSources" :: Maybe (DataSources), "Type" :: Maybe (AppType), "AppSource" :: Maybe (Source), "Domains" :: Maybe (Strings), "EnableSsl" :: Maybe (Boolean), "SslConfiguration" :: Maybe (SslConfiguration), "Attributes" :: Maybe (AppAttributes), "CreatedAt" :: Maybe (String), "Environment" :: Maybe (EnvironmentVariables) }
```

<p>A description of the app.</p>

##### Instances
``` purescript
Newtype App _
Generic App _
Show App
Decode App
Encode App
```

#### `newApp`

``` purescript
newApp :: App
```

Constructs App from required parameters

#### `newApp'`

``` purescript
newApp' :: ({ "AppId" :: Maybe (String), "StackId" :: Maybe (String), "Shortname" :: Maybe (String), "Name" :: Maybe (String), "Description" :: Maybe (String), "DataSources" :: Maybe (DataSources), "Type" :: Maybe (AppType), "AppSource" :: Maybe (Source), "Domains" :: Maybe (Strings), "EnableSsl" :: Maybe (Boolean), "SslConfiguration" :: Maybe (SslConfiguration), "Attributes" :: Maybe (AppAttributes), "CreatedAt" :: Maybe (String), "Environment" :: Maybe (EnvironmentVariables) } -> { "AppId" :: Maybe (String), "StackId" :: Maybe (String), "Shortname" :: Maybe (String), "Name" :: Maybe (String), "Description" :: Maybe (String), "DataSources" :: Maybe (DataSources), "Type" :: Maybe (AppType), "AppSource" :: Maybe (Source), "Domains" :: Maybe (Strings), "EnableSsl" :: Maybe (Boolean), "SslConfiguration" :: Maybe (SslConfiguration), "Attributes" :: Maybe (AppAttributes), "CreatedAt" :: Maybe (String), "Environment" :: Maybe (EnvironmentVariables) }) -> App
```

Constructs App's fields from required parameters

#### `AppAttributes`

``` purescript
newtype AppAttributes
  = AppAttributes (StrMap String)
```

##### Instances
``` purescript
Newtype AppAttributes _
Generic AppAttributes _
Show AppAttributes
Decode AppAttributes
Encode AppAttributes
```

#### `AppAttributesKeys`

``` purescript
newtype AppAttributesKeys
  = AppAttributesKeys String
```

##### Instances
``` purescript
Newtype AppAttributesKeys _
Generic AppAttributesKeys _
Show AppAttributesKeys
Decode AppAttributesKeys
Encode AppAttributesKeys
```

#### `AppType`

``` purescript
newtype AppType
  = AppType String
```

##### Instances
``` purescript
Newtype AppType _
Generic AppType _
Show AppType
Decode AppType
Encode AppType
```

#### `Apps`

``` purescript
newtype Apps
  = Apps (Array App)
```

##### Instances
``` purescript
Newtype Apps _
Generic Apps _
Show Apps
Decode Apps
Encode Apps
```

#### `Architecture`

``` purescript
newtype Architecture
  = Architecture String
```

##### Instances
``` purescript
Newtype Architecture _
Generic Architecture _
Show Architecture
Decode Architecture
Encode Architecture
```

#### `AssignInstanceRequest`

``` purescript
newtype AssignInstanceRequest
  = AssignInstanceRequest { "InstanceId" :: String, "LayerIds" :: Strings }
```

##### Instances
``` purescript
Newtype AssignInstanceRequest _
Generic AssignInstanceRequest _
Show AssignInstanceRequest
Decode AssignInstanceRequest
Encode AssignInstanceRequest
```

#### `newAssignInstanceRequest`

``` purescript
newAssignInstanceRequest :: String -> Strings -> AssignInstanceRequest
```

Constructs AssignInstanceRequest from required parameters

#### `newAssignInstanceRequest'`

``` purescript
newAssignInstanceRequest' :: String -> Strings -> ({ "InstanceId" :: String, "LayerIds" :: Strings } -> { "InstanceId" :: String, "LayerIds" :: Strings }) -> AssignInstanceRequest
```

Constructs AssignInstanceRequest's fields from required parameters

#### `AssignVolumeRequest`

``` purescript
newtype AssignVolumeRequest
  = AssignVolumeRequest { "VolumeId" :: String, "InstanceId" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype AssignVolumeRequest _
Generic AssignVolumeRequest _
Show AssignVolumeRequest
Decode AssignVolumeRequest
Encode AssignVolumeRequest
```

#### `newAssignVolumeRequest`

``` purescript
newAssignVolumeRequest :: String -> AssignVolumeRequest
```

Constructs AssignVolumeRequest from required parameters

#### `newAssignVolumeRequest'`

``` purescript
newAssignVolumeRequest' :: String -> ({ "VolumeId" :: String, "InstanceId" :: Maybe (String) } -> { "VolumeId" :: String, "InstanceId" :: Maybe (String) }) -> AssignVolumeRequest
```

Constructs AssignVolumeRequest's fields from required parameters

#### `AssociateElasticIpRequest`

``` purescript
newtype AssociateElasticIpRequest
  = AssociateElasticIpRequest { "ElasticIp" :: String, "InstanceId" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype AssociateElasticIpRequest _
Generic AssociateElasticIpRequest _
Show AssociateElasticIpRequest
Decode AssociateElasticIpRequest
Encode AssociateElasticIpRequest
```

#### `newAssociateElasticIpRequest`

``` purescript
newAssociateElasticIpRequest :: String -> AssociateElasticIpRequest
```

Constructs AssociateElasticIpRequest from required parameters

#### `newAssociateElasticIpRequest'`

``` purescript
newAssociateElasticIpRequest' :: String -> ({ "ElasticIp" :: String, "InstanceId" :: Maybe (String) } -> { "ElasticIp" :: String, "InstanceId" :: Maybe (String) }) -> AssociateElasticIpRequest
```

Constructs AssociateElasticIpRequest's fields from required parameters

#### `AttachElasticLoadBalancerRequest`

``` purescript
newtype AttachElasticLoadBalancerRequest
  = AttachElasticLoadBalancerRequest { "ElasticLoadBalancerName" :: String, "LayerId" :: String }
```

##### Instances
``` purescript
Newtype AttachElasticLoadBalancerRequest _
Generic AttachElasticLoadBalancerRequest _
Show AttachElasticLoadBalancerRequest
Decode AttachElasticLoadBalancerRequest
Encode AttachElasticLoadBalancerRequest
```

#### `newAttachElasticLoadBalancerRequest`

``` purescript
newAttachElasticLoadBalancerRequest :: String -> String -> AttachElasticLoadBalancerRequest
```

Constructs AttachElasticLoadBalancerRequest from required parameters

#### `newAttachElasticLoadBalancerRequest'`

``` purescript
newAttachElasticLoadBalancerRequest' :: String -> String -> ({ "ElasticLoadBalancerName" :: String, "LayerId" :: String } -> { "ElasticLoadBalancerName" :: String, "LayerId" :: String }) -> AttachElasticLoadBalancerRequest
```

Constructs AttachElasticLoadBalancerRequest's fields from required parameters

#### `AutoScalingThresholds`

``` purescript
newtype AutoScalingThresholds
  = AutoScalingThresholds { "InstanceCount" :: Maybe (Int), "ThresholdsWaitTime" :: Maybe (Minute), "IgnoreMetricsTime" :: Maybe (Minute), "CpuThreshold" :: Maybe (Number), "MemoryThreshold" :: Maybe (Number), "LoadThreshold" :: Maybe (Number), "Alarms" :: Maybe (Strings) }
```

<p>Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks Stacks starts or stops load-based instances.</p>

##### Instances
``` purescript
Newtype AutoScalingThresholds _
Generic AutoScalingThresholds _
Show AutoScalingThresholds
Decode AutoScalingThresholds
Encode AutoScalingThresholds
```

#### `newAutoScalingThresholds`

``` purescript
newAutoScalingThresholds :: AutoScalingThresholds
```

Constructs AutoScalingThresholds from required parameters

#### `newAutoScalingThresholds'`

``` purescript
newAutoScalingThresholds' :: ({ "InstanceCount" :: Maybe (Int), "ThresholdsWaitTime" :: Maybe (Minute), "IgnoreMetricsTime" :: Maybe (Minute), "CpuThreshold" :: Maybe (Number), "MemoryThreshold" :: Maybe (Number), "LoadThreshold" :: Maybe (Number), "Alarms" :: Maybe (Strings) } -> { "InstanceCount" :: Maybe (Int), "ThresholdsWaitTime" :: Maybe (Minute), "IgnoreMetricsTime" :: Maybe (Minute), "CpuThreshold" :: Maybe (Number), "MemoryThreshold" :: Maybe (Number), "LoadThreshold" :: Maybe (Number), "Alarms" :: Maybe (Strings) }) -> AutoScalingThresholds
```

Constructs AutoScalingThresholds's fields from required parameters

#### `AutoScalingType`

``` purescript
newtype AutoScalingType
  = AutoScalingType String
```

##### Instances
``` purescript
Newtype AutoScalingType _
Generic AutoScalingType _
Show AutoScalingType
Decode AutoScalingType
Encode AutoScalingType
```

#### `BlockDeviceMapping`

``` purescript
newtype BlockDeviceMapping
  = BlockDeviceMapping { "DeviceName" :: Maybe (String), "NoDevice" :: Maybe (String), "VirtualName" :: Maybe (String), "Ebs" :: Maybe (EbsBlockDevice) }
```

<p>Describes a block device mapping. This data type maps directly to the Amazon EC2 <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html">BlockDeviceMapping</a> data type. </p>

##### Instances
``` purescript
Newtype BlockDeviceMapping _
Generic BlockDeviceMapping _
Show BlockDeviceMapping
Decode BlockDeviceMapping
Encode BlockDeviceMapping
```

#### `newBlockDeviceMapping`

``` purescript
newBlockDeviceMapping :: BlockDeviceMapping
```

Constructs BlockDeviceMapping from required parameters

#### `newBlockDeviceMapping'`

``` purescript
newBlockDeviceMapping' :: ({ "DeviceName" :: Maybe (String), "NoDevice" :: Maybe (String), "VirtualName" :: Maybe (String), "Ebs" :: Maybe (EbsBlockDevice) } -> { "DeviceName" :: Maybe (String), "NoDevice" :: Maybe (String), "VirtualName" :: Maybe (String), "Ebs" :: Maybe (EbsBlockDevice) }) -> BlockDeviceMapping
```

Constructs BlockDeviceMapping's fields from required parameters

#### `BlockDeviceMappings`

``` purescript
newtype BlockDeviceMappings
  = BlockDeviceMappings (Array BlockDeviceMapping)
```

##### Instances
``` purescript
Newtype BlockDeviceMappings _
Generic BlockDeviceMappings _
Show BlockDeviceMappings
Decode BlockDeviceMappings
Encode BlockDeviceMappings
```

#### `ChefConfiguration`

``` purescript
newtype ChefConfiguration
  = ChefConfiguration { "ManageBerkshelf" :: Maybe (Boolean), "BerkshelfVersion" :: Maybe (String) }
```

<p>Describes the Chef configuration.</p>

##### Instances
``` purescript
Newtype ChefConfiguration _
Generic ChefConfiguration _
Show ChefConfiguration
Decode ChefConfiguration
Encode ChefConfiguration
```

#### `newChefConfiguration`

``` purescript
newChefConfiguration :: ChefConfiguration
```

Constructs ChefConfiguration from required parameters

#### `newChefConfiguration'`

``` purescript
newChefConfiguration' :: ({ "ManageBerkshelf" :: Maybe (Boolean), "BerkshelfVersion" :: Maybe (String) } -> { "ManageBerkshelf" :: Maybe (Boolean), "BerkshelfVersion" :: Maybe (String) }) -> ChefConfiguration
```

Constructs ChefConfiguration's fields from required parameters

#### `CloneStackRequest`

``` purescript
newtype CloneStackRequest
  = CloneStackRequest { "SourceStackId" :: String, "Name" :: Maybe (String), "Region" :: Maybe (String), "VpcId" :: Maybe (String), "Attributes" :: Maybe (StackAttributes), "ServiceRoleArn" :: String, "DefaultInstanceProfileArn" :: Maybe (String), "DefaultOs" :: Maybe (String), "HostnameTheme" :: Maybe (String), "DefaultAvailabilityZone" :: Maybe (String), "DefaultSubnetId" :: Maybe (String), "CustomJson" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager), "ChefConfiguration" :: Maybe (ChefConfiguration), "UseCustomCookbooks" :: Maybe (Boolean), "UseOpsworksSecurityGroups" :: Maybe (Boolean), "CustomCookbooksSource" :: Maybe (Source), "DefaultSshKeyName" :: Maybe (String), "ClonePermissions" :: Maybe (Boolean), "CloneAppIds" :: Maybe (Strings), "DefaultRootDeviceType" :: Maybe (RootDeviceType), "AgentVersion" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype CloneStackRequest _
Generic CloneStackRequest _
Show CloneStackRequest
Decode CloneStackRequest
Encode CloneStackRequest
```

#### `newCloneStackRequest`

``` purescript
newCloneStackRequest :: String -> String -> CloneStackRequest
```

Constructs CloneStackRequest from required parameters

#### `newCloneStackRequest'`

``` purescript
newCloneStackRequest' :: String -> String -> ({ "SourceStackId" :: String, "Name" :: Maybe (String), "Region" :: Maybe (String), "VpcId" :: Maybe (String), "Attributes" :: Maybe (StackAttributes), "ServiceRoleArn" :: String, "DefaultInstanceProfileArn" :: Maybe (String), "DefaultOs" :: Maybe (String), "HostnameTheme" :: Maybe (String), "DefaultAvailabilityZone" :: Maybe (String), "DefaultSubnetId" :: Maybe (String), "CustomJson" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager), "ChefConfiguration" :: Maybe (ChefConfiguration), "UseCustomCookbooks" :: Maybe (Boolean), "UseOpsworksSecurityGroups" :: Maybe (Boolean), "CustomCookbooksSource" :: Maybe (Source), "DefaultSshKeyName" :: Maybe (String), "ClonePermissions" :: Maybe (Boolean), "CloneAppIds" :: Maybe (Strings), "DefaultRootDeviceType" :: Maybe (RootDeviceType), "AgentVersion" :: Maybe (String) } -> { "SourceStackId" :: String, "Name" :: Maybe (String), "Region" :: Maybe (String), "VpcId" :: Maybe (String), "Attributes" :: Maybe (StackAttributes), "ServiceRoleArn" :: String, "DefaultInstanceProfileArn" :: Maybe (String), "DefaultOs" :: Maybe (String), "HostnameTheme" :: Maybe (String), "DefaultAvailabilityZone" :: Maybe (String), "DefaultSubnetId" :: Maybe (String), "CustomJson" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager), "ChefConfiguration" :: Maybe (ChefConfiguration), "UseCustomCookbooks" :: Maybe (Boolean), "UseOpsworksSecurityGroups" :: Maybe (Boolean), "CustomCookbooksSource" :: Maybe (Source), "DefaultSshKeyName" :: Maybe (String), "ClonePermissions" :: Maybe (Boolean), "CloneAppIds" :: Maybe (Strings), "DefaultRootDeviceType" :: Maybe (RootDeviceType), "AgentVersion" :: Maybe (String) }) -> CloneStackRequest
```

Constructs CloneStackRequest's fields from required parameters

#### `CloneStackResult`

``` purescript
newtype CloneStackResult
  = CloneStackResult { "StackId" :: Maybe (String) }
```

<p>Contains the response to a <code>CloneStack</code> request.</p>

##### Instances
``` purescript
Newtype CloneStackResult _
Generic CloneStackResult _
Show CloneStackResult
Decode CloneStackResult
Encode CloneStackResult
```

#### `newCloneStackResult`

``` purescript
newCloneStackResult :: CloneStackResult
```

Constructs CloneStackResult from required parameters

#### `newCloneStackResult'`

``` purescript
newCloneStackResult' :: ({ "StackId" :: Maybe (String) } -> { "StackId" :: Maybe (String) }) -> CloneStackResult
```

Constructs CloneStackResult's fields from required parameters

#### `CloudWatchLogsConfiguration`

``` purescript
newtype CloudWatchLogsConfiguration
  = CloudWatchLogsConfiguration { "Enabled" :: Maybe (Boolean), "LogStreams" :: Maybe (CloudWatchLogsLogStreams) }
```

<p>Describes the Amazon CloudWatch logs configuration for a layer.</p>

##### Instances
``` purescript
Newtype CloudWatchLogsConfiguration _
Generic CloudWatchLogsConfiguration _
Show CloudWatchLogsConfiguration
Decode CloudWatchLogsConfiguration
Encode CloudWatchLogsConfiguration
```

#### `newCloudWatchLogsConfiguration`

``` purescript
newCloudWatchLogsConfiguration :: CloudWatchLogsConfiguration
```

Constructs CloudWatchLogsConfiguration from required parameters

#### `newCloudWatchLogsConfiguration'`

``` purescript
newCloudWatchLogsConfiguration' :: ({ "Enabled" :: Maybe (Boolean), "LogStreams" :: Maybe (CloudWatchLogsLogStreams) } -> { "Enabled" :: Maybe (Boolean), "LogStreams" :: Maybe (CloudWatchLogsLogStreams) }) -> CloudWatchLogsConfiguration
```

Constructs CloudWatchLogsConfiguration's fields from required parameters

#### `CloudWatchLogsEncoding`

``` purescript
newtype CloudWatchLogsEncoding
  = CloudWatchLogsEncoding String
```

<p>Specifies the encoding of the log file so that the file can be read correctly. The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>

##### Instances
``` purescript
Newtype CloudWatchLogsEncoding _
Generic CloudWatchLogsEncoding _
Show CloudWatchLogsEncoding
Decode CloudWatchLogsEncoding
Encode CloudWatchLogsEncoding
```

#### `CloudWatchLogsInitialPosition`

``` purescript
newtype CloudWatchLogsInitialPosition
  = CloudWatchLogsInitialPosition String
```

<p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. It's only used if there is no state persisted for that log stream.</p>

##### Instances
``` purescript
Newtype CloudWatchLogsInitialPosition _
Generic CloudWatchLogsInitialPosition _
Show CloudWatchLogsInitialPosition
Decode CloudWatchLogsInitialPosition
Encode CloudWatchLogsInitialPosition
```

#### `CloudWatchLogsLogStream`

``` purescript
newtype CloudWatchLogsLogStream
  = CloudWatchLogsLogStream { "LogGroupName" :: Maybe (String), "DatetimeFormat" :: Maybe (String), "TimeZone" :: Maybe (CloudWatchLogsTimeZone), "File" :: Maybe (String), "FileFingerprintLines" :: Maybe (String), "MultiLineStartPattern" :: Maybe (String), "InitialPosition" :: Maybe (CloudWatchLogsInitialPosition), "Encoding" :: Maybe (CloudWatchLogsEncoding), "BufferDuration" :: Maybe (Int), "BatchCount" :: Maybe (Int), "BatchSize" :: Maybe (Int) }
```

<p>Describes the Amazon CloudWatch logs configuration for a layer. For detailed information about members of this data type, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>

##### Instances
``` purescript
Newtype CloudWatchLogsLogStream _
Generic CloudWatchLogsLogStream _
Show CloudWatchLogsLogStream
Decode CloudWatchLogsLogStream
Encode CloudWatchLogsLogStream
```

#### `newCloudWatchLogsLogStream`

``` purescript
newCloudWatchLogsLogStream :: CloudWatchLogsLogStream
```

Constructs CloudWatchLogsLogStream from required parameters

#### `newCloudWatchLogsLogStream'`

``` purescript
newCloudWatchLogsLogStream' :: ({ "LogGroupName" :: Maybe (String), "DatetimeFormat" :: Maybe (String), "TimeZone" :: Maybe (CloudWatchLogsTimeZone), "File" :: Maybe (String), "FileFingerprintLines" :: Maybe (String), "MultiLineStartPattern" :: Maybe (String), "InitialPosition" :: Maybe (CloudWatchLogsInitialPosition), "Encoding" :: Maybe (CloudWatchLogsEncoding), "BufferDuration" :: Maybe (Int), "BatchCount" :: Maybe (Int), "BatchSize" :: Maybe (Int) } -> { "LogGroupName" :: Maybe (String), "DatetimeFormat" :: Maybe (String), "TimeZone" :: Maybe (CloudWatchLogsTimeZone), "File" :: Maybe (String), "FileFingerprintLines" :: Maybe (String), "MultiLineStartPattern" :: Maybe (String), "InitialPosition" :: Maybe (CloudWatchLogsInitialPosition), "Encoding" :: Maybe (CloudWatchLogsEncoding), "BufferDuration" :: Maybe (Int), "BatchCount" :: Maybe (Int), "BatchSize" :: Maybe (Int) }) -> CloudWatchLogsLogStream
```

Constructs CloudWatchLogsLogStream's fields from required parameters

#### `CloudWatchLogsLogStreams`

``` purescript
newtype CloudWatchLogsLogStreams
  = CloudWatchLogsLogStreams (Array CloudWatchLogsLogStream)
```

<p>Describes the Amazon CloudWatch logs configuration for a layer.</p>

##### Instances
``` purescript
Newtype CloudWatchLogsLogStreams _
Generic CloudWatchLogsLogStreams _
Show CloudWatchLogsLogStreams
Decode CloudWatchLogsLogStreams
Encode CloudWatchLogsLogStreams
```

#### `CloudWatchLogsTimeZone`

``` purescript
newtype CloudWatchLogsTimeZone
  = CloudWatchLogsTimeZone String
```

<p>The preferred time zone for logs streamed to CloudWatch Logs. Valid values are <code>LOCAL</code> and <code>UTC</code>, for Coordinated Universal Time.</p>

##### Instances
``` purescript
Newtype CloudWatchLogsTimeZone _
Generic CloudWatchLogsTimeZone _
Show CloudWatchLogsTimeZone
Decode CloudWatchLogsTimeZone
Encode CloudWatchLogsTimeZone
```

#### `Command`

``` purescript
newtype Command
  = Command { "CommandId" :: Maybe (String), "InstanceId" :: Maybe (String), "DeploymentId" :: Maybe (String), "CreatedAt" :: Maybe (DateTime), "AcknowledgedAt" :: Maybe (DateTime), "CompletedAt" :: Maybe (DateTime), "Status" :: Maybe (String), "ExitCode" :: Maybe (Int), "LogUrl" :: Maybe (String), "Type" :: Maybe (String) }
```

<p>Describes a command.</p>

##### Instances
``` purescript
Newtype Command _
Generic Command _
Show Command
Decode Command
Encode Command
```

#### `newCommand`

``` purescript
newCommand :: Command
```

Constructs Command from required parameters

#### `newCommand'`

``` purescript
newCommand' :: ({ "CommandId" :: Maybe (String), "InstanceId" :: Maybe (String), "DeploymentId" :: Maybe (String), "CreatedAt" :: Maybe (DateTime), "AcknowledgedAt" :: Maybe (DateTime), "CompletedAt" :: Maybe (DateTime), "Status" :: Maybe (String), "ExitCode" :: Maybe (Int), "LogUrl" :: Maybe (String), "Type" :: Maybe (String) } -> { "CommandId" :: Maybe (String), "InstanceId" :: Maybe (String), "DeploymentId" :: Maybe (String), "CreatedAt" :: Maybe (DateTime), "AcknowledgedAt" :: Maybe (DateTime), "CompletedAt" :: Maybe (DateTime), "Status" :: Maybe (String), "ExitCode" :: Maybe (Int), "LogUrl" :: Maybe (String), "Type" :: Maybe (String) }) -> Command
```

Constructs Command's fields from required parameters

#### `Commands`

``` purescript
newtype Commands
  = Commands (Array Command)
```

##### Instances
``` purescript
Newtype Commands _
Generic Commands _
Show Commands
Decode Commands
Encode Commands
```

#### `CreateAppRequest`

``` purescript
newtype CreateAppRequest
  = CreateAppRequest { "StackId" :: String, "Shortname" :: Maybe (String), "Name" :: String, "Description" :: Maybe (String), "DataSources" :: Maybe (DataSources), "Type" :: AppType, "AppSource" :: Maybe (Source), "Domains" :: Maybe (Strings), "EnableSsl" :: Maybe (Boolean), "SslConfiguration" :: Maybe (SslConfiguration), "Attributes" :: Maybe (AppAttributes), "Environment" :: Maybe (EnvironmentVariables) }
```

##### Instances
``` purescript
Newtype CreateAppRequest _
Generic CreateAppRequest _
Show CreateAppRequest
Decode CreateAppRequest
Encode CreateAppRequest
```

#### `newCreateAppRequest`

``` purescript
newCreateAppRequest :: String -> String -> AppType -> CreateAppRequest
```

Constructs CreateAppRequest from required parameters

#### `newCreateAppRequest'`

``` purescript
newCreateAppRequest' :: String -> String -> AppType -> ({ "StackId" :: String, "Shortname" :: Maybe (String), "Name" :: String, "Description" :: Maybe (String), "DataSources" :: Maybe (DataSources), "Type" :: AppType, "AppSource" :: Maybe (Source), "Domains" :: Maybe (Strings), "EnableSsl" :: Maybe (Boolean), "SslConfiguration" :: Maybe (SslConfiguration), "Attributes" :: Maybe (AppAttributes), "Environment" :: Maybe (EnvironmentVariables) } -> { "StackId" :: String, "Shortname" :: Maybe (String), "Name" :: String, "Description" :: Maybe (String), "DataSources" :: Maybe (DataSources), "Type" :: AppType, "AppSource" :: Maybe (Source), "Domains" :: Maybe (Strings), "EnableSsl" :: Maybe (Boolean), "SslConfiguration" :: Maybe (SslConfiguration), "Attributes" :: Maybe (AppAttributes), "Environment" :: Maybe (EnvironmentVariables) }) -> CreateAppRequest
```

Constructs CreateAppRequest's fields from required parameters

#### `CreateAppResult`

``` purescript
newtype CreateAppResult
  = CreateAppResult { "AppId" :: Maybe (String) }
```

<p>Contains the response to a <code>CreateApp</code> request.</p>

##### Instances
``` purescript
Newtype CreateAppResult _
Generic CreateAppResult _
Show CreateAppResult
Decode CreateAppResult
Encode CreateAppResult
```

#### `newCreateAppResult`

``` purescript
newCreateAppResult :: CreateAppResult
```

Constructs CreateAppResult from required parameters

#### `newCreateAppResult'`

``` purescript
newCreateAppResult' :: ({ "AppId" :: Maybe (String) } -> { "AppId" :: Maybe (String) }) -> CreateAppResult
```

Constructs CreateAppResult's fields from required parameters

#### `CreateDeploymentRequest`

``` purescript
newtype CreateDeploymentRequest
  = CreateDeploymentRequest { "StackId" :: String, "AppId" :: Maybe (String), "InstanceIds" :: Maybe (Strings), "LayerIds" :: Maybe (Strings), "Command" :: DeploymentCommand, "Comment" :: Maybe (String), "CustomJson" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype CreateDeploymentRequest _
Generic CreateDeploymentRequest _
Show CreateDeploymentRequest
Decode CreateDeploymentRequest
Encode CreateDeploymentRequest
```

#### `newCreateDeploymentRequest`

``` purescript
newCreateDeploymentRequest :: DeploymentCommand -> String -> CreateDeploymentRequest
```

Constructs CreateDeploymentRequest from required parameters

#### `newCreateDeploymentRequest'`

``` purescript
newCreateDeploymentRequest' :: DeploymentCommand -> String -> ({ "StackId" :: String, "AppId" :: Maybe (String), "InstanceIds" :: Maybe (Strings), "LayerIds" :: Maybe (Strings), "Command" :: DeploymentCommand, "Comment" :: Maybe (String), "CustomJson" :: Maybe (String) } -> { "StackId" :: String, "AppId" :: Maybe (String), "InstanceIds" :: Maybe (Strings), "LayerIds" :: Maybe (Strings), "Command" :: DeploymentCommand, "Comment" :: Maybe (String), "CustomJson" :: Maybe (String) }) -> CreateDeploymentRequest
```

Constructs CreateDeploymentRequest's fields from required parameters

#### `CreateDeploymentResult`

``` purescript
newtype CreateDeploymentResult
  = CreateDeploymentResult { "DeploymentId" :: Maybe (String) }
```

<p>Contains the response to a <code>CreateDeployment</code> request.</p>

##### Instances
``` purescript
Newtype CreateDeploymentResult _
Generic CreateDeploymentResult _
Show CreateDeploymentResult
Decode CreateDeploymentResult
Encode CreateDeploymentResult
```

#### `newCreateDeploymentResult`

``` purescript
newCreateDeploymentResult :: CreateDeploymentResult
```

Constructs CreateDeploymentResult from required parameters

#### `newCreateDeploymentResult'`

``` purescript
newCreateDeploymentResult' :: ({ "DeploymentId" :: Maybe (String) } -> { "DeploymentId" :: Maybe (String) }) -> CreateDeploymentResult
```

Constructs CreateDeploymentResult's fields from required parameters

#### `CreateInstanceRequest`

``` purescript
newtype CreateInstanceRequest
  = CreateInstanceRequest { "StackId" :: String, "LayerIds" :: Strings, "InstanceType" :: String, "AutoScalingType" :: Maybe (AutoScalingType), "Hostname" :: Maybe (String), "Os" :: Maybe (String), "AmiId" :: Maybe (String), "SshKeyName" :: Maybe (String), "AvailabilityZone" :: Maybe (String), "VirtualizationType" :: Maybe (String), "SubnetId" :: Maybe (String), "Architecture" :: Maybe (Architecture), "RootDeviceType" :: Maybe (RootDeviceType), "BlockDeviceMappings" :: Maybe (BlockDeviceMappings), "InstallUpdatesOnBoot" :: Maybe (Boolean), "EbsOptimized" :: Maybe (Boolean), "AgentVersion" :: Maybe (String), "Tenancy" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype CreateInstanceRequest _
Generic CreateInstanceRequest _
Show CreateInstanceRequest
Decode CreateInstanceRequest
Encode CreateInstanceRequest
```

#### `newCreateInstanceRequest`

``` purescript
newCreateInstanceRequest :: String -> Strings -> String -> CreateInstanceRequest
```

Constructs CreateInstanceRequest from required parameters

#### `newCreateInstanceRequest'`

``` purescript
newCreateInstanceRequest' :: String -> Strings -> String -> ({ "StackId" :: String, "LayerIds" :: Strings, "InstanceType" :: String, "AutoScalingType" :: Maybe (AutoScalingType), "Hostname" :: Maybe (String), "Os" :: Maybe (String), "AmiId" :: Maybe (String), "SshKeyName" :: Maybe (String), "AvailabilityZone" :: Maybe (String), "VirtualizationType" :: Maybe (String), "SubnetId" :: Maybe (String), "Architecture" :: Maybe (Architecture), "RootDeviceType" :: Maybe (RootDeviceType), "BlockDeviceMappings" :: Maybe (BlockDeviceMappings), "InstallUpdatesOnBoot" :: Maybe (Boolean), "EbsOptimized" :: Maybe (Boolean), "AgentVersion" :: Maybe (String), "Tenancy" :: Maybe (String) } -> { "StackId" :: String, "LayerIds" :: Strings, "InstanceType" :: String, "AutoScalingType" :: Maybe (AutoScalingType), "Hostname" :: Maybe (String), "Os" :: Maybe (String), "AmiId" :: Maybe (String), "SshKeyName" :: Maybe (String), "AvailabilityZone" :: Maybe (String), "VirtualizationType" :: Maybe (String), "SubnetId" :: Maybe (String), "Architecture" :: Maybe (Architecture), "RootDeviceType" :: Maybe (RootDeviceType), "BlockDeviceMappings" :: Maybe (BlockDeviceMappings), "InstallUpdatesOnBoot" :: Maybe (Boolean), "EbsOptimized" :: Maybe (Boolean), "AgentVersion" :: Maybe (String), "Tenancy" :: Maybe (String) }) -> CreateInstanceRequest
```

Constructs CreateInstanceRequest's fields from required parameters

#### `CreateInstanceResult`

``` purescript
newtype CreateInstanceResult
  = CreateInstanceResult { "InstanceId" :: Maybe (String) }
```

<p>Contains the response to a <code>CreateInstance</code> request.</p>

##### Instances
``` purescript
Newtype CreateInstanceResult _
Generic CreateInstanceResult _
Show CreateInstanceResult
Decode CreateInstanceResult
Encode CreateInstanceResult
```

#### `newCreateInstanceResult`

``` purescript
newCreateInstanceResult :: CreateInstanceResult
```

Constructs CreateInstanceResult from required parameters

#### `newCreateInstanceResult'`

``` purescript
newCreateInstanceResult' :: ({ "InstanceId" :: Maybe (String) } -> { "InstanceId" :: Maybe (String) }) -> CreateInstanceResult
```

Constructs CreateInstanceResult's fields from required parameters

#### `CreateLayerRequest`

``` purescript
newtype CreateLayerRequest
  = CreateLayerRequest { "StackId" :: String, "Type" :: LayerType, "Name" :: String, "Shortname" :: String, "Attributes" :: Maybe (LayerAttributes), "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: Maybe (String), "CustomJson" :: Maybe (String), "CustomSecurityGroupIds" :: Maybe (Strings), "Packages" :: Maybe (Strings), "VolumeConfigurations" :: Maybe (VolumeConfigurations), "EnableAutoHealing" :: Maybe (Boolean), "AutoAssignElasticIps" :: Maybe (Boolean), "AutoAssignPublicIps" :: Maybe (Boolean), "CustomRecipes" :: Maybe (Recipes), "InstallUpdatesOnBoot" :: Maybe (Boolean), "UseEbsOptimizedInstances" :: Maybe (Boolean), "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) }
```

##### Instances
``` purescript
Newtype CreateLayerRequest _
Generic CreateLayerRequest _
Show CreateLayerRequest
Decode CreateLayerRequest
Encode CreateLayerRequest
```

#### `newCreateLayerRequest`

``` purescript
newCreateLayerRequest :: String -> String -> String -> LayerType -> CreateLayerRequest
```

Constructs CreateLayerRequest from required parameters

#### `newCreateLayerRequest'`

``` purescript
newCreateLayerRequest' :: String -> String -> String -> LayerType -> ({ "StackId" :: String, "Type" :: LayerType, "Name" :: String, "Shortname" :: String, "Attributes" :: Maybe (LayerAttributes), "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: Maybe (String), "CustomJson" :: Maybe (String), "CustomSecurityGroupIds" :: Maybe (Strings), "Packages" :: Maybe (Strings), "VolumeConfigurations" :: Maybe (VolumeConfigurations), "EnableAutoHealing" :: Maybe (Boolean), "AutoAssignElasticIps" :: Maybe (Boolean), "AutoAssignPublicIps" :: Maybe (Boolean), "CustomRecipes" :: Maybe (Recipes), "InstallUpdatesOnBoot" :: Maybe (Boolean), "UseEbsOptimizedInstances" :: Maybe (Boolean), "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) } -> { "StackId" :: String, "Type" :: LayerType, "Name" :: String, "Shortname" :: String, "Attributes" :: Maybe (LayerAttributes), "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: Maybe (String), "CustomJson" :: Maybe (String), "CustomSecurityGroupIds" :: Maybe (Strings), "Packages" :: Maybe (Strings), "VolumeConfigurations" :: Maybe (VolumeConfigurations), "EnableAutoHealing" :: Maybe (Boolean), "AutoAssignElasticIps" :: Maybe (Boolean), "AutoAssignPublicIps" :: Maybe (Boolean), "CustomRecipes" :: Maybe (Recipes), "InstallUpdatesOnBoot" :: Maybe (Boolean), "UseEbsOptimizedInstances" :: Maybe (Boolean), "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) }) -> CreateLayerRequest
```

Constructs CreateLayerRequest's fields from required parameters

#### `CreateLayerResult`

``` purescript
newtype CreateLayerResult
  = CreateLayerResult { "LayerId" :: Maybe (String) }
```

<p>Contains the response to a <code>CreateLayer</code> request.</p>

##### Instances
``` purescript
Newtype CreateLayerResult _
Generic CreateLayerResult _
Show CreateLayerResult
Decode CreateLayerResult
Encode CreateLayerResult
```

#### `newCreateLayerResult`

``` purescript
newCreateLayerResult :: CreateLayerResult
```

Constructs CreateLayerResult from required parameters

#### `newCreateLayerResult'`

``` purescript
newCreateLayerResult' :: ({ "LayerId" :: Maybe (String) } -> { "LayerId" :: Maybe (String) }) -> CreateLayerResult
```

Constructs CreateLayerResult's fields from required parameters

#### `CreateStackRequest`

``` purescript
newtype CreateStackRequest
  = CreateStackRequest { "Name" :: String, "Region" :: String, "VpcId" :: Maybe (String), "Attributes" :: Maybe (StackAttributes), "ServiceRoleArn" :: String, "DefaultInstanceProfileArn" :: String, "DefaultOs" :: Maybe (String), "HostnameTheme" :: Maybe (String), "DefaultAvailabilityZone" :: Maybe (String), "DefaultSubnetId" :: Maybe (String), "CustomJson" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager), "ChefConfiguration" :: Maybe (ChefConfiguration), "UseCustomCookbooks" :: Maybe (Boolean), "UseOpsworksSecurityGroups" :: Maybe (Boolean), "CustomCookbooksSource" :: Maybe (Source), "DefaultSshKeyName" :: Maybe (String), "DefaultRootDeviceType" :: Maybe (RootDeviceType), "AgentVersion" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype CreateStackRequest _
Generic CreateStackRequest _
Show CreateStackRequest
Decode CreateStackRequest
Encode CreateStackRequest
```

#### `newCreateStackRequest`

``` purescript
newCreateStackRequest :: String -> String -> String -> String -> CreateStackRequest
```

Constructs CreateStackRequest from required parameters

#### `newCreateStackRequest'`

``` purescript
newCreateStackRequest' :: String -> String -> String -> String -> ({ "Name" :: String, "Region" :: String, "VpcId" :: Maybe (String), "Attributes" :: Maybe (StackAttributes), "ServiceRoleArn" :: String, "DefaultInstanceProfileArn" :: String, "DefaultOs" :: Maybe (String), "HostnameTheme" :: Maybe (String), "DefaultAvailabilityZone" :: Maybe (String), "DefaultSubnetId" :: Maybe (String), "CustomJson" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager), "ChefConfiguration" :: Maybe (ChefConfiguration), "UseCustomCookbooks" :: Maybe (Boolean), "UseOpsworksSecurityGroups" :: Maybe (Boolean), "CustomCookbooksSource" :: Maybe (Source), "DefaultSshKeyName" :: Maybe (String), "DefaultRootDeviceType" :: Maybe (RootDeviceType), "AgentVersion" :: Maybe (String) } -> { "Name" :: String, "Region" :: String, "VpcId" :: Maybe (String), "Attributes" :: Maybe (StackAttributes), "ServiceRoleArn" :: String, "DefaultInstanceProfileArn" :: String, "DefaultOs" :: Maybe (String), "HostnameTheme" :: Maybe (String), "DefaultAvailabilityZone" :: Maybe (String), "DefaultSubnetId" :: Maybe (String), "CustomJson" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager), "ChefConfiguration" :: Maybe (ChefConfiguration), "UseCustomCookbooks" :: Maybe (Boolean), "UseOpsworksSecurityGroups" :: Maybe (Boolean), "CustomCookbooksSource" :: Maybe (Source), "DefaultSshKeyName" :: Maybe (String), "DefaultRootDeviceType" :: Maybe (RootDeviceType), "AgentVersion" :: Maybe (String) }) -> CreateStackRequest
```

Constructs CreateStackRequest's fields from required parameters

#### `CreateStackResult`

``` purescript
newtype CreateStackResult
  = CreateStackResult { "StackId" :: Maybe (String) }
```

<p>Contains the response to a <code>CreateStack</code> request.</p>

##### Instances
``` purescript
Newtype CreateStackResult _
Generic CreateStackResult _
Show CreateStackResult
Decode CreateStackResult
Encode CreateStackResult
```

#### `newCreateStackResult`

``` purescript
newCreateStackResult :: CreateStackResult
```

Constructs CreateStackResult from required parameters

#### `newCreateStackResult'`

``` purescript
newCreateStackResult' :: ({ "StackId" :: Maybe (String) } -> { "StackId" :: Maybe (String) }) -> CreateStackResult
```

Constructs CreateStackResult's fields from required parameters

#### `CreateUserProfileRequest`

``` purescript
newtype CreateUserProfileRequest
  = CreateUserProfileRequest { "IamUserArn" :: String, "SshUsername" :: Maybe (String), "SshPublicKey" :: Maybe (String), "AllowSelfManagement" :: Maybe (Boolean) }
```

##### Instances
``` purescript
Newtype CreateUserProfileRequest _
Generic CreateUserProfileRequest _
Show CreateUserProfileRequest
Decode CreateUserProfileRequest
Encode CreateUserProfileRequest
```

#### `newCreateUserProfileRequest`

``` purescript
newCreateUserProfileRequest :: String -> CreateUserProfileRequest
```

Constructs CreateUserProfileRequest from required parameters

#### `newCreateUserProfileRequest'`

``` purescript
newCreateUserProfileRequest' :: String -> ({ "IamUserArn" :: String, "SshUsername" :: Maybe (String), "SshPublicKey" :: Maybe (String), "AllowSelfManagement" :: Maybe (Boolean) } -> { "IamUserArn" :: String, "SshUsername" :: Maybe (String), "SshPublicKey" :: Maybe (String), "AllowSelfManagement" :: Maybe (Boolean) }) -> CreateUserProfileRequest
```

Constructs CreateUserProfileRequest's fields from required parameters

#### `CreateUserProfileResult`

``` purescript
newtype CreateUserProfileResult
  = CreateUserProfileResult { "IamUserArn" :: Maybe (String) }
```

<p>Contains the response to a <code>CreateUserProfile</code> request.</p>

##### Instances
``` purescript
Newtype CreateUserProfileResult _
Generic CreateUserProfileResult _
Show CreateUserProfileResult
Decode CreateUserProfileResult
Encode CreateUserProfileResult
```

#### `newCreateUserProfileResult`

``` purescript
newCreateUserProfileResult :: CreateUserProfileResult
```

Constructs CreateUserProfileResult from required parameters

#### `newCreateUserProfileResult'`

``` purescript
newCreateUserProfileResult' :: ({ "IamUserArn" :: Maybe (String) } -> { "IamUserArn" :: Maybe (String) }) -> CreateUserProfileResult
```

Constructs CreateUserProfileResult's fields from required parameters

#### `DailyAutoScalingSchedule`

``` purescript
newtype DailyAutoScalingSchedule
  = DailyAutoScalingSchedule (StrMap Switch)
```

##### Instances
``` purescript
Newtype DailyAutoScalingSchedule _
Generic DailyAutoScalingSchedule _
Show DailyAutoScalingSchedule
Decode DailyAutoScalingSchedule
Encode DailyAutoScalingSchedule
```

#### `DataSource`

``` purescript
newtype DataSource
  = DataSource { "Type" :: Maybe (String), "Arn" :: Maybe (String), "DatabaseName" :: Maybe (String) }
```

<p>Describes an app's data source.</p>

##### Instances
``` purescript
Newtype DataSource _
Generic DataSource _
Show DataSource
Decode DataSource
Encode DataSource
```

#### `newDataSource`

``` purescript
newDataSource :: DataSource
```

Constructs DataSource from required parameters

#### `newDataSource'`

``` purescript
newDataSource' :: ({ "Type" :: Maybe (String), "Arn" :: Maybe (String), "DatabaseName" :: Maybe (String) } -> { "Type" :: Maybe (String), "Arn" :: Maybe (String), "DatabaseName" :: Maybe (String) }) -> DataSource
```

Constructs DataSource's fields from required parameters

#### `DataSources`

``` purescript
newtype DataSources
  = DataSources (Array DataSource)
```

##### Instances
``` purescript
Newtype DataSources _
Generic DataSources _
Show DataSources
Decode DataSources
Encode DataSources
```

#### `DateTime`

``` purescript
newtype DateTime
  = DateTime String
```

##### Instances
``` purescript
Newtype DateTime _
Generic DateTime _
Show DateTime
Decode DateTime
Encode DateTime
```

#### `DeleteAppRequest`

``` purescript
newtype DeleteAppRequest
  = DeleteAppRequest { "AppId" :: String }
```

##### Instances
``` purescript
Newtype DeleteAppRequest _
Generic DeleteAppRequest _
Show DeleteAppRequest
Decode DeleteAppRequest
Encode DeleteAppRequest
```

#### `newDeleteAppRequest`

``` purescript
newDeleteAppRequest :: String -> DeleteAppRequest
```

Constructs DeleteAppRequest from required parameters

#### `newDeleteAppRequest'`

``` purescript
newDeleteAppRequest' :: String -> ({ "AppId" :: String } -> { "AppId" :: String }) -> DeleteAppRequest
```

Constructs DeleteAppRequest's fields from required parameters

#### `DeleteInstanceRequest`

``` purescript
newtype DeleteInstanceRequest
  = DeleteInstanceRequest { "InstanceId" :: String, "DeleteElasticIp" :: Maybe (Boolean), "DeleteVolumes" :: Maybe (Boolean) }
```

##### Instances
``` purescript
Newtype DeleteInstanceRequest _
Generic DeleteInstanceRequest _
Show DeleteInstanceRequest
Decode DeleteInstanceRequest
Encode DeleteInstanceRequest
```

#### `newDeleteInstanceRequest`

``` purescript
newDeleteInstanceRequest :: String -> DeleteInstanceRequest
```

Constructs DeleteInstanceRequest from required parameters

#### `newDeleteInstanceRequest'`

``` purescript
newDeleteInstanceRequest' :: String -> ({ "InstanceId" :: String, "DeleteElasticIp" :: Maybe (Boolean), "DeleteVolumes" :: Maybe (Boolean) } -> { "InstanceId" :: String, "DeleteElasticIp" :: Maybe (Boolean), "DeleteVolumes" :: Maybe (Boolean) }) -> DeleteInstanceRequest
```

Constructs DeleteInstanceRequest's fields from required parameters

#### `DeleteLayerRequest`

``` purescript
newtype DeleteLayerRequest
  = DeleteLayerRequest { "LayerId" :: String }
```

##### Instances
``` purescript
Newtype DeleteLayerRequest _
Generic DeleteLayerRequest _
Show DeleteLayerRequest
Decode DeleteLayerRequest
Encode DeleteLayerRequest
```

#### `newDeleteLayerRequest`

``` purescript
newDeleteLayerRequest :: String -> DeleteLayerRequest
```

Constructs DeleteLayerRequest from required parameters

#### `newDeleteLayerRequest'`

``` purescript
newDeleteLayerRequest' :: String -> ({ "LayerId" :: String } -> { "LayerId" :: String }) -> DeleteLayerRequest
```

Constructs DeleteLayerRequest's fields from required parameters

#### `DeleteStackRequest`

``` purescript
newtype DeleteStackRequest
  = DeleteStackRequest { "StackId" :: String }
```

##### Instances
``` purescript
Newtype DeleteStackRequest _
Generic DeleteStackRequest _
Show DeleteStackRequest
Decode DeleteStackRequest
Encode DeleteStackRequest
```

#### `newDeleteStackRequest`

``` purescript
newDeleteStackRequest :: String -> DeleteStackRequest
```

Constructs DeleteStackRequest from required parameters

#### `newDeleteStackRequest'`

``` purescript
newDeleteStackRequest' :: String -> ({ "StackId" :: String } -> { "StackId" :: String }) -> DeleteStackRequest
```

Constructs DeleteStackRequest's fields from required parameters

#### `DeleteUserProfileRequest`

``` purescript
newtype DeleteUserProfileRequest
  = DeleteUserProfileRequest { "IamUserArn" :: String }
```

##### Instances
``` purescript
Newtype DeleteUserProfileRequest _
Generic DeleteUserProfileRequest _
Show DeleteUserProfileRequest
Decode DeleteUserProfileRequest
Encode DeleteUserProfileRequest
```

#### `newDeleteUserProfileRequest`

``` purescript
newDeleteUserProfileRequest :: String -> DeleteUserProfileRequest
```

Constructs DeleteUserProfileRequest from required parameters

#### `newDeleteUserProfileRequest'`

``` purescript
newDeleteUserProfileRequest' :: String -> ({ "IamUserArn" :: String } -> { "IamUserArn" :: String }) -> DeleteUserProfileRequest
```

Constructs DeleteUserProfileRequest's fields from required parameters

#### `Deployment`

``` purescript
newtype Deployment
  = Deployment { "DeploymentId" :: Maybe (String), "StackId" :: Maybe (String), "AppId" :: Maybe (String), "CreatedAt" :: Maybe (DateTime), "CompletedAt" :: Maybe (DateTime), "Duration" :: Maybe (Int), "IamUserArn" :: Maybe (String), "Comment" :: Maybe (String), "Command" :: Maybe (DeploymentCommand), "Status" :: Maybe (String), "CustomJson" :: Maybe (String), "InstanceIds" :: Maybe (Strings) }
```

<p>Describes a deployment of a stack or app.</p>

##### Instances
``` purescript
Newtype Deployment _
Generic Deployment _
Show Deployment
Decode Deployment
Encode Deployment
```

#### `newDeployment`

``` purescript
newDeployment :: Deployment
```

Constructs Deployment from required parameters

#### `newDeployment'`

``` purescript
newDeployment' :: ({ "DeploymentId" :: Maybe (String), "StackId" :: Maybe (String), "AppId" :: Maybe (String), "CreatedAt" :: Maybe (DateTime), "CompletedAt" :: Maybe (DateTime), "Duration" :: Maybe (Int), "IamUserArn" :: Maybe (String), "Comment" :: Maybe (String), "Command" :: Maybe (DeploymentCommand), "Status" :: Maybe (String), "CustomJson" :: Maybe (String), "InstanceIds" :: Maybe (Strings) } -> { "DeploymentId" :: Maybe (String), "StackId" :: Maybe (String), "AppId" :: Maybe (String), "CreatedAt" :: Maybe (DateTime), "CompletedAt" :: Maybe (DateTime), "Duration" :: Maybe (Int), "IamUserArn" :: Maybe (String), "Comment" :: Maybe (String), "Command" :: Maybe (DeploymentCommand), "Status" :: Maybe (String), "CustomJson" :: Maybe (String), "InstanceIds" :: Maybe (Strings) }) -> Deployment
```

Constructs Deployment's fields from required parameters

#### `DeploymentCommand`

``` purescript
newtype DeploymentCommand
  = DeploymentCommand { "Name" :: DeploymentCommandName, "Args" :: Maybe (DeploymentCommandArgs) }
```

<p>Used to specify a stack or deployment command.</p>

##### Instances
``` purescript
Newtype DeploymentCommand _
Generic DeploymentCommand _
Show DeploymentCommand
Decode DeploymentCommand
Encode DeploymentCommand
```

#### `newDeploymentCommand`

``` purescript
newDeploymentCommand :: DeploymentCommandName -> DeploymentCommand
```

Constructs DeploymentCommand from required parameters

#### `newDeploymentCommand'`

``` purescript
newDeploymentCommand' :: DeploymentCommandName -> ({ "Name" :: DeploymentCommandName, "Args" :: Maybe (DeploymentCommandArgs) } -> { "Name" :: DeploymentCommandName, "Args" :: Maybe (DeploymentCommandArgs) }) -> DeploymentCommand
```

Constructs DeploymentCommand's fields from required parameters

#### `DeploymentCommandArgs`

``` purescript
newtype DeploymentCommandArgs
  = DeploymentCommandArgs (StrMap Strings)
```

##### Instances
``` purescript
Newtype DeploymentCommandArgs _
Generic DeploymentCommandArgs _
Show DeploymentCommandArgs
Decode DeploymentCommandArgs
Encode DeploymentCommandArgs
```

#### `DeploymentCommandName`

``` purescript
newtype DeploymentCommandName
  = DeploymentCommandName String
```

##### Instances
``` purescript
Newtype DeploymentCommandName _
Generic DeploymentCommandName _
Show DeploymentCommandName
Decode DeploymentCommandName
Encode DeploymentCommandName
```

#### `Deployments`

``` purescript
newtype Deployments
  = Deployments (Array Deployment)
```

##### Instances
``` purescript
Newtype Deployments _
Generic Deployments _
Show Deployments
Decode Deployments
Encode Deployments
```

#### `DeregisterEcsClusterRequest`

``` purescript
newtype DeregisterEcsClusterRequest
  = DeregisterEcsClusterRequest { "EcsClusterArn" :: String }
```

##### Instances
``` purescript
Newtype DeregisterEcsClusterRequest _
Generic DeregisterEcsClusterRequest _
Show DeregisterEcsClusterRequest
Decode DeregisterEcsClusterRequest
Encode DeregisterEcsClusterRequest
```

#### `newDeregisterEcsClusterRequest`

``` purescript
newDeregisterEcsClusterRequest :: String -> DeregisterEcsClusterRequest
```

Constructs DeregisterEcsClusterRequest from required parameters

#### `newDeregisterEcsClusterRequest'`

``` purescript
newDeregisterEcsClusterRequest' :: String -> ({ "EcsClusterArn" :: String } -> { "EcsClusterArn" :: String }) -> DeregisterEcsClusterRequest
```

Constructs DeregisterEcsClusterRequest's fields from required parameters

#### `DeregisterElasticIpRequest`

``` purescript
newtype DeregisterElasticIpRequest
  = DeregisterElasticIpRequest { "ElasticIp" :: String }
```

##### Instances
``` purescript
Newtype DeregisterElasticIpRequest _
Generic DeregisterElasticIpRequest _
Show DeregisterElasticIpRequest
Decode DeregisterElasticIpRequest
Encode DeregisterElasticIpRequest
```

#### `newDeregisterElasticIpRequest`

``` purescript
newDeregisterElasticIpRequest :: String -> DeregisterElasticIpRequest
```

Constructs DeregisterElasticIpRequest from required parameters

#### `newDeregisterElasticIpRequest'`

``` purescript
newDeregisterElasticIpRequest' :: String -> ({ "ElasticIp" :: String } -> { "ElasticIp" :: String }) -> DeregisterElasticIpRequest
```

Constructs DeregisterElasticIpRequest's fields from required parameters

#### `DeregisterInstanceRequest`

``` purescript
newtype DeregisterInstanceRequest
  = DeregisterInstanceRequest { "InstanceId" :: String }
```

##### Instances
``` purescript
Newtype DeregisterInstanceRequest _
Generic DeregisterInstanceRequest _
Show DeregisterInstanceRequest
Decode DeregisterInstanceRequest
Encode DeregisterInstanceRequest
```

#### `newDeregisterInstanceRequest`

``` purescript
newDeregisterInstanceRequest :: String -> DeregisterInstanceRequest
```

Constructs DeregisterInstanceRequest from required parameters

#### `newDeregisterInstanceRequest'`

``` purescript
newDeregisterInstanceRequest' :: String -> ({ "InstanceId" :: String } -> { "InstanceId" :: String }) -> DeregisterInstanceRequest
```

Constructs DeregisterInstanceRequest's fields from required parameters

#### `DeregisterRdsDbInstanceRequest`

``` purescript
newtype DeregisterRdsDbInstanceRequest
  = DeregisterRdsDbInstanceRequest { "RdsDbInstanceArn" :: String }
```

##### Instances
``` purescript
Newtype DeregisterRdsDbInstanceRequest _
Generic DeregisterRdsDbInstanceRequest _
Show DeregisterRdsDbInstanceRequest
Decode DeregisterRdsDbInstanceRequest
Encode DeregisterRdsDbInstanceRequest
```

#### `newDeregisterRdsDbInstanceRequest`

``` purescript
newDeregisterRdsDbInstanceRequest :: String -> DeregisterRdsDbInstanceRequest
```

Constructs DeregisterRdsDbInstanceRequest from required parameters

#### `newDeregisterRdsDbInstanceRequest'`

``` purescript
newDeregisterRdsDbInstanceRequest' :: String -> ({ "RdsDbInstanceArn" :: String } -> { "RdsDbInstanceArn" :: String }) -> DeregisterRdsDbInstanceRequest
```

Constructs DeregisterRdsDbInstanceRequest's fields from required parameters

#### `DeregisterVolumeRequest`

``` purescript
newtype DeregisterVolumeRequest
  = DeregisterVolumeRequest { "VolumeId" :: String }
```

##### Instances
``` purescript
Newtype DeregisterVolumeRequest _
Generic DeregisterVolumeRequest _
Show DeregisterVolumeRequest
Decode DeregisterVolumeRequest
Encode DeregisterVolumeRequest
```

#### `newDeregisterVolumeRequest`

``` purescript
newDeregisterVolumeRequest :: String -> DeregisterVolumeRequest
```

Constructs DeregisterVolumeRequest from required parameters

#### `newDeregisterVolumeRequest'`

``` purescript
newDeregisterVolumeRequest' :: String -> ({ "VolumeId" :: String } -> { "VolumeId" :: String }) -> DeregisterVolumeRequest
```

Constructs DeregisterVolumeRequest's fields from required parameters

#### `DescribeAgentVersionsRequest`

``` purescript
newtype DescribeAgentVersionsRequest
  = DescribeAgentVersionsRequest { "StackId" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager) }
```

##### Instances
``` purescript
Newtype DescribeAgentVersionsRequest _
Generic DescribeAgentVersionsRequest _
Show DescribeAgentVersionsRequest
Decode DescribeAgentVersionsRequest
Encode DescribeAgentVersionsRequest
```

#### `newDescribeAgentVersionsRequest`

``` purescript
newDescribeAgentVersionsRequest :: DescribeAgentVersionsRequest
```

Constructs DescribeAgentVersionsRequest from required parameters

#### `newDescribeAgentVersionsRequest'`

``` purescript
newDescribeAgentVersionsRequest' :: ({ "StackId" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager) } -> { "StackId" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager) }) -> DescribeAgentVersionsRequest
```

Constructs DescribeAgentVersionsRequest's fields from required parameters

#### `DescribeAgentVersionsResult`

``` purescript
newtype DescribeAgentVersionsResult
  = DescribeAgentVersionsResult { "AgentVersions" :: Maybe (AgentVersions) }
```

<p>Contains the response to a <code>DescribeAgentVersions</code> request.</p>

##### Instances
``` purescript
Newtype DescribeAgentVersionsResult _
Generic DescribeAgentVersionsResult _
Show DescribeAgentVersionsResult
Decode DescribeAgentVersionsResult
Encode DescribeAgentVersionsResult
```

#### `newDescribeAgentVersionsResult`

``` purescript
newDescribeAgentVersionsResult :: DescribeAgentVersionsResult
```

Constructs DescribeAgentVersionsResult from required parameters

#### `newDescribeAgentVersionsResult'`

``` purescript
newDescribeAgentVersionsResult' :: ({ "AgentVersions" :: Maybe (AgentVersions) } -> { "AgentVersions" :: Maybe (AgentVersions) }) -> DescribeAgentVersionsResult
```

Constructs DescribeAgentVersionsResult's fields from required parameters

#### `DescribeAppsRequest`

``` purescript
newtype DescribeAppsRequest
  = DescribeAppsRequest { "StackId" :: Maybe (String), "AppIds" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeAppsRequest _
Generic DescribeAppsRequest _
Show DescribeAppsRequest
Decode DescribeAppsRequest
Encode DescribeAppsRequest
```

#### `newDescribeAppsRequest`

``` purescript
newDescribeAppsRequest :: DescribeAppsRequest
```

Constructs DescribeAppsRequest from required parameters

#### `newDescribeAppsRequest'`

``` purescript
newDescribeAppsRequest' :: ({ "StackId" :: Maybe (String), "AppIds" :: Maybe (Strings) } -> { "StackId" :: Maybe (String), "AppIds" :: Maybe (Strings) }) -> DescribeAppsRequest
```

Constructs DescribeAppsRequest's fields from required parameters

#### `DescribeAppsResult`

``` purescript
newtype DescribeAppsResult
  = DescribeAppsResult { "Apps" :: Maybe (Apps) }
```

<p>Contains the response to a <code>DescribeApps</code> request.</p>

##### Instances
``` purescript
Newtype DescribeAppsResult _
Generic DescribeAppsResult _
Show DescribeAppsResult
Decode DescribeAppsResult
Encode DescribeAppsResult
```

#### `newDescribeAppsResult`

``` purescript
newDescribeAppsResult :: DescribeAppsResult
```

Constructs DescribeAppsResult from required parameters

#### `newDescribeAppsResult'`

``` purescript
newDescribeAppsResult' :: ({ "Apps" :: Maybe (Apps) } -> { "Apps" :: Maybe (Apps) }) -> DescribeAppsResult
```

Constructs DescribeAppsResult's fields from required parameters

#### `DescribeCommandsRequest`

``` purescript
newtype DescribeCommandsRequest
  = DescribeCommandsRequest { "DeploymentId" :: Maybe (String), "InstanceId" :: Maybe (String), "CommandIds" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeCommandsRequest _
Generic DescribeCommandsRequest _
Show DescribeCommandsRequest
Decode DescribeCommandsRequest
Encode DescribeCommandsRequest
```

#### `newDescribeCommandsRequest`

``` purescript
newDescribeCommandsRequest :: DescribeCommandsRequest
```

Constructs DescribeCommandsRequest from required parameters

#### `newDescribeCommandsRequest'`

``` purescript
newDescribeCommandsRequest' :: ({ "DeploymentId" :: Maybe (String), "InstanceId" :: Maybe (String), "CommandIds" :: Maybe (Strings) } -> { "DeploymentId" :: Maybe (String), "InstanceId" :: Maybe (String), "CommandIds" :: Maybe (Strings) }) -> DescribeCommandsRequest
```

Constructs DescribeCommandsRequest's fields from required parameters

#### `DescribeCommandsResult`

``` purescript
newtype DescribeCommandsResult
  = DescribeCommandsResult { "Commands" :: Maybe (Commands) }
```

<p>Contains the response to a <code>DescribeCommands</code> request.</p>

##### Instances
``` purescript
Newtype DescribeCommandsResult _
Generic DescribeCommandsResult _
Show DescribeCommandsResult
Decode DescribeCommandsResult
Encode DescribeCommandsResult
```

#### `newDescribeCommandsResult`

``` purescript
newDescribeCommandsResult :: DescribeCommandsResult
```

Constructs DescribeCommandsResult from required parameters

#### `newDescribeCommandsResult'`

``` purescript
newDescribeCommandsResult' :: ({ "Commands" :: Maybe (Commands) } -> { "Commands" :: Maybe (Commands) }) -> DescribeCommandsResult
```

Constructs DescribeCommandsResult's fields from required parameters

#### `DescribeDeploymentsRequest`

``` purescript
newtype DescribeDeploymentsRequest
  = DescribeDeploymentsRequest { "StackId" :: Maybe (String), "AppId" :: Maybe (String), "DeploymentIds" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeDeploymentsRequest _
Generic DescribeDeploymentsRequest _
Show DescribeDeploymentsRequest
Decode DescribeDeploymentsRequest
Encode DescribeDeploymentsRequest
```

#### `newDescribeDeploymentsRequest`

``` purescript
newDescribeDeploymentsRequest :: DescribeDeploymentsRequest
```

Constructs DescribeDeploymentsRequest from required parameters

#### `newDescribeDeploymentsRequest'`

``` purescript
newDescribeDeploymentsRequest' :: ({ "StackId" :: Maybe (String), "AppId" :: Maybe (String), "DeploymentIds" :: Maybe (Strings) } -> { "StackId" :: Maybe (String), "AppId" :: Maybe (String), "DeploymentIds" :: Maybe (Strings) }) -> DescribeDeploymentsRequest
```

Constructs DescribeDeploymentsRequest's fields from required parameters

#### `DescribeDeploymentsResult`

``` purescript
newtype DescribeDeploymentsResult
  = DescribeDeploymentsResult { "Deployments" :: Maybe (Deployments) }
```

<p>Contains the response to a <code>DescribeDeployments</code> request.</p>

##### Instances
``` purescript
Newtype DescribeDeploymentsResult _
Generic DescribeDeploymentsResult _
Show DescribeDeploymentsResult
Decode DescribeDeploymentsResult
Encode DescribeDeploymentsResult
```

#### `newDescribeDeploymentsResult`

``` purescript
newDescribeDeploymentsResult :: DescribeDeploymentsResult
```

Constructs DescribeDeploymentsResult from required parameters

#### `newDescribeDeploymentsResult'`

``` purescript
newDescribeDeploymentsResult' :: ({ "Deployments" :: Maybe (Deployments) } -> { "Deployments" :: Maybe (Deployments) }) -> DescribeDeploymentsResult
```

Constructs DescribeDeploymentsResult's fields from required parameters

#### `DescribeEcsClustersRequest`

``` purescript
newtype DescribeEcsClustersRequest
  = DescribeEcsClustersRequest { "EcsClusterArns" :: Maybe (Strings), "StackId" :: Maybe (String), "NextToken" :: Maybe (String), "MaxResults" :: Maybe (Int) }
```

##### Instances
``` purescript
Newtype DescribeEcsClustersRequest _
Generic DescribeEcsClustersRequest _
Show DescribeEcsClustersRequest
Decode DescribeEcsClustersRequest
Encode DescribeEcsClustersRequest
```

#### `newDescribeEcsClustersRequest`

``` purescript
newDescribeEcsClustersRequest :: DescribeEcsClustersRequest
```

Constructs DescribeEcsClustersRequest from required parameters

#### `newDescribeEcsClustersRequest'`

``` purescript
newDescribeEcsClustersRequest' :: ({ "EcsClusterArns" :: Maybe (Strings), "StackId" :: Maybe (String), "NextToken" :: Maybe (String), "MaxResults" :: Maybe (Int) } -> { "EcsClusterArns" :: Maybe (Strings), "StackId" :: Maybe (String), "NextToken" :: Maybe (String), "MaxResults" :: Maybe (Int) }) -> DescribeEcsClustersRequest
```

Constructs DescribeEcsClustersRequest's fields from required parameters

#### `DescribeEcsClustersResult`

``` purescript
newtype DescribeEcsClustersResult
  = DescribeEcsClustersResult { "EcsClusters" :: Maybe (EcsClusters), "NextToken" :: Maybe (String) }
```

<p>Contains the response to a <code>DescribeEcsClusters</code> request.</p>

##### Instances
``` purescript
Newtype DescribeEcsClustersResult _
Generic DescribeEcsClustersResult _
Show DescribeEcsClustersResult
Decode DescribeEcsClustersResult
Encode DescribeEcsClustersResult
```

#### `newDescribeEcsClustersResult`

``` purescript
newDescribeEcsClustersResult :: DescribeEcsClustersResult
```

Constructs DescribeEcsClustersResult from required parameters

#### `newDescribeEcsClustersResult'`

``` purescript
newDescribeEcsClustersResult' :: ({ "EcsClusters" :: Maybe (EcsClusters), "NextToken" :: Maybe (String) } -> { "EcsClusters" :: Maybe (EcsClusters), "NextToken" :: Maybe (String) }) -> DescribeEcsClustersResult
```

Constructs DescribeEcsClustersResult's fields from required parameters

#### `DescribeElasticIpsRequest`

``` purescript
newtype DescribeElasticIpsRequest
  = DescribeElasticIpsRequest { "InstanceId" :: Maybe (String), "StackId" :: Maybe (String), "Ips" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeElasticIpsRequest _
Generic DescribeElasticIpsRequest _
Show DescribeElasticIpsRequest
Decode DescribeElasticIpsRequest
Encode DescribeElasticIpsRequest
```

#### `newDescribeElasticIpsRequest`

``` purescript
newDescribeElasticIpsRequest :: DescribeElasticIpsRequest
```

Constructs DescribeElasticIpsRequest from required parameters

#### `newDescribeElasticIpsRequest'`

``` purescript
newDescribeElasticIpsRequest' :: ({ "InstanceId" :: Maybe (String), "StackId" :: Maybe (String), "Ips" :: Maybe (Strings) } -> { "InstanceId" :: Maybe (String), "StackId" :: Maybe (String), "Ips" :: Maybe (Strings) }) -> DescribeElasticIpsRequest
```

Constructs DescribeElasticIpsRequest's fields from required parameters

#### `DescribeElasticIpsResult`

``` purescript
newtype DescribeElasticIpsResult
  = DescribeElasticIpsResult { "ElasticIps" :: Maybe (ElasticIps) }
```

<p>Contains the response to a <code>DescribeElasticIps</code> request.</p>

##### Instances
``` purescript
Newtype DescribeElasticIpsResult _
Generic DescribeElasticIpsResult _
Show DescribeElasticIpsResult
Decode DescribeElasticIpsResult
Encode DescribeElasticIpsResult
```

#### `newDescribeElasticIpsResult`

``` purescript
newDescribeElasticIpsResult :: DescribeElasticIpsResult
```

Constructs DescribeElasticIpsResult from required parameters

#### `newDescribeElasticIpsResult'`

``` purescript
newDescribeElasticIpsResult' :: ({ "ElasticIps" :: Maybe (ElasticIps) } -> { "ElasticIps" :: Maybe (ElasticIps) }) -> DescribeElasticIpsResult
```

Constructs DescribeElasticIpsResult's fields from required parameters

#### `DescribeElasticLoadBalancersRequest`

``` purescript
newtype DescribeElasticLoadBalancersRequest
  = DescribeElasticLoadBalancersRequest { "StackId" :: Maybe (String), "LayerIds" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeElasticLoadBalancersRequest _
Generic DescribeElasticLoadBalancersRequest _
Show DescribeElasticLoadBalancersRequest
Decode DescribeElasticLoadBalancersRequest
Encode DescribeElasticLoadBalancersRequest
```

#### `newDescribeElasticLoadBalancersRequest`

``` purescript
newDescribeElasticLoadBalancersRequest :: DescribeElasticLoadBalancersRequest
```

Constructs DescribeElasticLoadBalancersRequest from required parameters

#### `newDescribeElasticLoadBalancersRequest'`

``` purescript
newDescribeElasticLoadBalancersRequest' :: ({ "StackId" :: Maybe (String), "LayerIds" :: Maybe (Strings) } -> { "StackId" :: Maybe (String), "LayerIds" :: Maybe (Strings) }) -> DescribeElasticLoadBalancersRequest
```

Constructs DescribeElasticLoadBalancersRequest's fields from required parameters

#### `DescribeElasticLoadBalancersResult`

``` purescript
newtype DescribeElasticLoadBalancersResult
  = DescribeElasticLoadBalancersResult { "ElasticLoadBalancers" :: Maybe (ElasticLoadBalancers) }
```

<p>Contains the response to a <code>DescribeElasticLoadBalancers</code> request.</p>

##### Instances
``` purescript
Newtype DescribeElasticLoadBalancersResult _
Generic DescribeElasticLoadBalancersResult _
Show DescribeElasticLoadBalancersResult
Decode DescribeElasticLoadBalancersResult
Encode DescribeElasticLoadBalancersResult
```

#### `newDescribeElasticLoadBalancersResult`

``` purescript
newDescribeElasticLoadBalancersResult :: DescribeElasticLoadBalancersResult
```

Constructs DescribeElasticLoadBalancersResult from required parameters

#### `newDescribeElasticLoadBalancersResult'`

``` purescript
newDescribeElasticLoadBalancersResult' :: ({ "ElasticLoadBalancers" :: Maybe (ElasticLoadBalancers) } -> { "ElasticLoadBalancers" :: Maybe (ElasticLoadBalancers) }) -> DescribeElasticLoadBalancersResult
```

Constructs DescribeElasticLoadBalancersResult's fields from required parameters

#### `DescribeInstancesRequest`

``` purescript
newtype DescribeInstancesRequest
  = DescribeInstancesRequest { "StackId" :: Maybe (String), "LayerId" :: Maybe (String), "InstanceIds" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeInstancesRequest _
Generic DescribeInstancesRequest _
Show DescribeInstancesRequest
Decode DescribeInstancesRequest
Encode DescribeInstancesRequest
```

#### `newDescribeInstancesRequest`

``` purescript
newDescribeInstancesRequest :: DescribeInstancesRequest
```

Constructs DescribeInstancesRequest from required parameters

#### `newDescribeInstancesRequest'`

``` purescript
newDescribeInstancesRequest' :: ({ "StackId" :: Maybe (String), "LayerId" :: Maybe (String), "InstanceIds" :: Maybe (Strings) } -> { "StackId" :: Maybe (String), "LayerId" :: Maybe (String), "InstanceIds" :: Maybe (Strings) }) -> DescribeInstancesRequest
```

Constructs DescribeInstancesRequest's fields from required parameters

#### `DescribeInstancesResult`

``` purescript
newtype DescribeInstancesResult
  = DescribeInstancesResult { "Instances" :: Maybe (Instances) }
```

<p>Contains the response to a <code>DescribeInstances</code> request.</p>

##### Instances
``` purescript
Newtype DescribeInstancesResult _
Generic DescribeInstancesResult _
Show DescribeInstancesResult
Decode DescribeInstancesResult
Encode DescribeInstancesResult
```

#### `newDescribeInstancesResult`

``` purescript
newDescribeInstancesResult :: DescribeInstancesResult
```

Constructs DescribeInstancesResult from required parameters

#### `newDescribeInstancesResult'`

``` purescript
newDescribeInstancesResult' :: ({ "Instances" :: Maybe (Instances) } -> { "Instances" :: Maybe (Instances) }) -> DescribeInstancesResult
```

Constructs DescribeInstancesResult's fields from required parameters

#### `DescribeLayersRequest`

``` purescript
newtype DescribeLayersRequest
  = DescribeLayersRequest { "StackId" :: Maybe (String), "LayerIds" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeLayersRequest _
Generic DescribeLayersRequest _
Show DescribeLayersRequest
Decode DescribeLayersRequest
Encode DescribeLayersRequest
```

#### `newDescribeLayersRequest`

``` purescript
newDescribeLayersRequest :: DescribeLayersRequest
```

Constructs DescribeLayersRequest from required parameters

#### `newDescribeLayersRequest'`

``` purescript
newDescribeLayersRequest' :: ({ "StackId" :: Maybe (String), "LayerIds" :: Maybe (Strings) } -> { "StackId" :: Maybe (String), "LayerIds" :: Maybe (Strings) }) -> DescribeLayersRequest
```

Constructs DescribeLayersRequest's fields from required parameters

#### `DescribeLayersResult`

``` purescript
newtype DescribeLayersResult
  = DescribeLayersResult { "Layers" :: Maybe (Layers) }
```

<p>Contains the response to a <code>DescribeLayers</code> request.</p>

##### Instances
``` purescript
Newtype DescribeLayersResult _
Generic DescribeLayersResult _
Show DescribeLayersResult
Decode DescribeLayersResult
Encode DescribeLayersResult
```

#### `newDescribeLayersResult`

``` purescript
newDescribeLayersResult :: DescribeLayersResult
```

Constructs DescribeLayersResult from required parameters

#### `newDescribeLayersResult'`

``` purescript
newDescribeLayersResult' :: ({ "Layers" :: Maybe (Layers) } -> { "Layers" :: Maybe (Layers) }) -> DescribeLayersResult
```

Constructs DescribeLayersResult's fields from required parameters

#### `DescribeLoadBasedAutoScalingRequest`

``` purescript
newtype DescribeLoadBasedAutoScalingRequest
  = DescribeLoadBasedAutoScalingRequest { "LayerIds" :: Strings }
```

##### Instances
``` purescript
Newtype DescribeLoadBasedAutoScalingRequest _
Generic DescribeLoadBasedAutoScalingRequest _
Show DescribeLoadBasedAutoScalingRequest
Decode DescribeLoadBasedAutoScalingRequest
Encode DescribeLoadBasedAutoScalingRequest
```

#### `newDescribeLoadBasedAutoScalingRequest`

``` purescript
newDescribeLoadBasedAutoScalingRequest :: Strings -> DescribeLoadBasedAutoScalingRequest
```

Constructs DescribeLoadBasedAutoScalingRequest from required parameters

#### `newDescribeLoadBasedAutoScalingRequest'`

``` purescript
newDescribeLoadBasedAutoScalingRequest' :: Strings -> ({ "LayerIds" :: Strings } -> { "LayerIds" :: Strings }) -> DescribeLoadBasedAutoScalingRequest
```

Constructs DescribeLoadBasedAutoScalingRequest's fields from required parameters

#### `DescribeLoadBasedAutoScalingResult`

``` purescript
newtype DescribeLoadBasedAutoScalingResult
  = DescribeLoadBasedAutoScalingResult { "LoadBasedAutoScalingConfigurations" :: Maybe (LoadBasedAutoScalingConfigurations) }
```

<p>Contains the response to a <code>DescribeLoadBasedAutoScaling</code> request.</p>

##### Instances
``` purescript
Newtype DescribeLoadBasedAutoScalingResult _
Generic DescribeLoadBasedAutoScalingResult _
Show DescribeLoadBasedAutoScalingResult
Decode DescribeLoadBasedAutoScalingResult
Encode DescribeLoadBasedAutoScalingResult
```

#### `newDescribeLoadBasedAutoScalingResult`

``` purescript
newDescribeLoadBasedAutoScalingResult :: DescribeLoadBasedAutoScalingResult
```

Constructs DescribeLoadBasedAutoScalingResult from required parameters

#### `newDescribeLoadBasedAutoScalingResult'`

``` purescript
newDescribeLoadBasedAutoScalingResult' :: ({ "LoadBasedAutoScalingConfigurations" :: Maybe (LoadBasedAutoScalingConfigurations) } -> { "LoadBasedAutoScalingConfigurations" :: Maybe (LoadBasedAutoScalingConfigurations) }) -> DescribeLoadBasedAutoScalingResult
```

Constructs DescribeLoadBasedAutoScalingResult's fields from required parameters

#### `DescribeMyUserProfileResult`

``` purescript
newtype DescribeMyUserProfileResult
  = DescribeMyUserProfileResult { "UserProfile" :: Maybe (SelfUserProfile) }
```

<p>Contains the response to a <code>DescribeMyUserProfile</code> request.</p>

##### Instances
``` purescript
Newtype DescribeMyUserProfileResult _
Generic DescribeMyUserProfileResult _
Show DescribeMyUserProfileResult
Decode DescribeMyUserProfileResult
Encode DescribeMyUserProfileResult
```

#### `newDescribeMyUserProfileResult`

``` purescript
newDescribeMyUserProfileResult :: DescribeMyUserProfileResult
```

Constructs DescribeMyUserProfileResult from required parameters

#### `newDescribeMyUserProfileResult'`

``` purescript
newDescribeMyUserProfileResult' :: ({ "UserProfile" :: Maybe (SelfUserProfile) } -> { "UserProfile" :: Maybe (SelfUserProfile) }) -> DescribeMyUserProfileResult
```

Constructs DescribeMyUserProfileResult's fields from required parameters

#### `DescribeOperatingSystemsResponse`

``` purescript
newtype DescribeOperatingSystemsResponse
  = DescribeOperatingSystemsResponse { "OperatingSystems" :: Maybe (OperatingSystems) }
```

<p>The response to a <code>DescribeOperatingSystems</code> request.</p>

##### Instances
``` purescript
Newtype DescribeOperatingSystemsResponse _
Generic DescribeOperatingSystemsResponse _
Show DescribeOperatingSystemsResponse
Decode DescribeOperatingSystemsResponse
Encode DescribeOperatingSystemsResponse
```

#### `newDescribeOperatingSystemsResponse`

``` purescript
newDescribeOperatingSystemsResponse :: DescribeOperatingSystemsResponse
```

Constructs DescribeOperatingSystemsResponse from required parameters

#### `newDescribeOperatingSystemsResponse'`

``` purescript
newDescribeOperatingSystemsResponse' :: ({ "OperatingSystems" :: Maybe (OperatingSystems) } -> { "OperatingSystems" :: Maybe (OperatingSystems) }) -> DescribeOperatingSystemsResponse
```

Constructs DescribeOperatingSystemsResponse's fields from required parameters

#### `DescribePermissionsRequest`

``` purescript
newtype DescribePermissionsRequest
  = DescribePermissionsRequest { "IamUserArn" :: Maybe (String), "StackId" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype DescribePermissionsRequest _
Generic DescribePermissionsRequest _
Show DescribePermissionsRequest
Decode DescribePermissionsRequest
Encode DescribePermissionsRequest
```

#### `newDescribePermissionsRequest`

``` purescript
newDescribePermissionsRequest :: DescribePermissionsRequest
```

Constructs DescribePermissionsRequest from required parameters

#### `newDescribePermissionsRequest'`

``` purescript
newDescribePermissionsRequest' :: ({ "IamUserArn" :: Maybe (String), "StackId" :: Maybe (String) } -> { "IamUserArn" :: Maybe (String), "StackId" :: Maybe (String) }) -> DescribePermissionsRequest
```

Constructs DescribePermissionsRequest's fields from required parameters

#### `DescribePermissionsResult`

``` purescript
newtype DescribePermissionsResult
  = DescribePermissionsResult { "Permissions" :: Maybe (Permissions) }
```

<p>Contains the response to a <code>DescribePermissions</code> request.</p>

##### Instances
``` purescript
Newtype DescribePermissionsResult _
Generic DescribePermissionsResult _
Show DescribePermissionsResult
Decode DescribePermissionsResult
Encode DescribePermissionsResult
```

#### `newDescribePermissionsResult`

``` purescript
newDescribePermissionsResult :: DescribePermissionsResult
```

Constructs DescribePermissionsResult from required parameters

#### `newDescribePermissionsResult'`

``` purescript
newDescribePermissionsResult' :: ({ "Permissions" :: Maybe (Permissions) } -> { "Permissions" :: Maybe (Permissions) }) -> DescribePermissionsResult
```

Constructs DescribePermissionsResult's fields from required parameters

#### `DescribeRaidArraysRequest`

``` purescript
newtype DescribeRaidArraysRequest
  = DescribeRaidArraysRequest { "InstanceId" :: Maybe (String), "StackId" :: Maybe (String), "RaidArrayIds" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeRaidArraysRequest _
Generic DescribeRaidArraysRequest _
Show DescribeRaidArraysRequest
Decode DescribeRaidArraysRequest
Encode DescribeRaidArraysRequest
```

#### `newDescribeRaidArraysRequest`

``` purescript
newDescribeRaidArraysRequest :: DescribeRaidArraysRequest
```

Constructs DescribeRaidArraysRequest from required parameters

#### `newDescribeRaidArraysRequest'`

``` purescript
newDescribeRaidArraysRequest' :: ({ "InstanceId" :: Maybe (String), "StackId" :: Maybe (String), "RaidArrayIds" :: Maybe (Strings) } -> { "InstanceId" :: Maybe (String), "StackId" :: Maybe (String), "RaidArrayIds" :: Maybe (Strings) }) -> DescribeRaidArraysRequest
```

Constructs DescribeRaidArraysRequest's fields from required parameters

#### `DescribeRaidArraysResult`

``` purescript
newtype DescribeRaidArraysResult
  = DescribeRaidArraysResult { "RaidArrays" :: Maybe (RaidArrays) }
```

<p>Contains the response to a <code>DescribeRaidArrays</code> request.</p>

##### Instances
``` purescript
Newtype DescribeRaidArraysResult _
Generic DescribeRaidArraysResult _
Show DescribeRaidArraysResult
Decode DescribeRaidArraysResult
Encode DescribeRaidArraysResult
```

#### `newDescribeRaidArraysResult`

``` purescript
newDescribeRaidArraysResult :: DescribeRaidArraysResult
```

Constructs DescribeRaidArraysResult from required parameters

#### `newDescribeRaidArraysResult'`

``` purescript
newDescribeRaidArraysResult' :: ({ "RaidArrays" :: Maybe (RaidArrays) } -> { "RaidArrays" :: Maybe (RaidArrays) }) -> DescribeRaidArraysResult
```

Constructs DescribeRaidArraysResult's fields from required parameters

#### `DescribeRdsDbInstancesRequest`

``` purescript
newtype DescribeRdsDbInstancesRequest
  = DescribeRdsDbInstancesRequest { "StackId" :: String, "RdsDbInstanceArns" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeRdsDbInstancesRequest _
Generic DescribeRdsDbInstancesRequest _
Show DescribeRdsDbInstancesRequest
Decode DescribeRdsDbInstancesRequest
Encode DescribeRdsDbInstancesRequest
```

#### `newDescribeRdsDbInstancesRequest`

``` purescript
newDescribeRdsDbInstancesRequest :: String -> DescribeRdsDbInstancesRequest
```

Constructs DescribeRdsDbInstancesRequest from required parameters

#### `newDescribeRdsDbInstancesRequest'`

``` purescript
newDescribeRdsDbInstancesRequest' :: String -> ({ "StackId" :: String, "RdsDbInstanceArns" :: Maybe (Strings) } -> { "StackId" :: String, "RdsDbInstanceArns" :: Maybe (Strings) }) -> DescribeRdsDbInstancesRequest
```

Constructs DescribeRdsDbInstancesRequest's fields from required parameters

#### `DescribeRdsDbInstancesResult`

``` purescript
newtype DescribeRdsDbInstancesResult
  = DescribeRdsDbInstancesResult { "RdsDbInstances" :: Maybe (RdsDbInstances) }
```

<p>Contains the response to a <code>DescribeRdsDbInstances</code> request.</p>

##### Instances
``` purescript
Newtype DescribeRdsDbInstancesResult _
Generic DescribeRdsDbInstancesResult _
Show DescribeRdsDbInstancesResult
Decode DescribeRdsDbInstancesResult
Encode DescribeRdsDbInstancesResult
```

#### `newDescribeRdsDbInstancesResult`

``` purescript
newDescribeRdsDbInstancesResult :: DescribeRdsDbInstancesResult
```

Constructs DescribeRdsDbInstancesResult from required parameters

#### `newDescribeRdsDbInstancesResult'`

``` purescript
newDescribeRdsDbInstancesResult' :: ({ "RdsDbInstances" :: Maybe (RdsDbInstances) } -> { "RdsDbInstances" :: Maybe (RdsDbInstances) }) -> DescribeRdsDbInstancesResult
```

Constructs DescribeRdsDbInstancesResult's fields from required parameters

#### `DescribeServiceErrorsRequest`

``` purescript
newtype DescribeServiceErrorsRequest
  = DescribeServiceErrorsRequest { "StackId" :: Maybe (String), "InstanceId" :: Maybe (String), "ServiceErrorIds" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeServiceErrorsRequest _
Generic DescribeServiceErrorsRequest _
Show DescribeServiceErrorsRequest
Decode DescribeServiceErrorsRequest
Encode DescribeServiceErrorsRequest
```

#### `newDescribeServiceErrorsRequest`

``` purescript
newDescribeServiceErrorsRequest :: DescribeServiceErrorsRequest
```

Constructs DescribeServiceErrorsRequest from required parameters

#### `newDescribeServiceErrorsRequest'`

``` purescript
newDescribeServiceErrorsRequest' :: ({ "StackId" :: Maybe (String), "InstanceId" :: Maybe (String), "ServiceErrorIds" :: Maybe (Strings) } -> { "StackId" :: Maybe (String), "InstanceId" :: Maybe (String), "ServiceErrorIds" :: Maybe (Strings) }) -> DescribeServiceErrorsRequest
```

Constructs DescribeServiceErrorsRequest's fields from required parameters

#### `DescribeServiceErrorsResult`

``` purescript
newtype DescribeServiceErrorsResult
  = DescribeServiceErrorsResult { "ServiceErrors" :: Maybe (ServiceErrors) }
```

<p>Contains the response to a <code>DescribeServiceErrors</code> request.</p>

##### Instances
``` purescript
Newtype DescribeServiceErrorsResult _
Generic DescribeServiceErrorsResult _
Show DescribeServiceErrorsResult
Decode DescribeServiceErrorsResult
Encode DescribeServiceErrorsResult
```

#### `newDescribeServiceErrorsResult`

``` purescript
newDescribeServiceErrorsResult :: DescribeServiceErrorsResult
```

Constructs DescribeServiceErrorsResult from required parameters

#### `newDescribeServiceErrorsResult'`

``` purescript
newDescribeServiceErrorsResult' :: ({ "ServiceErrors" :: Maybe (ServiceErrors) } -> { "ServiceErrors" :: Maybe (ServiceErrors) }) -> DescribeServiceErrorsResult
```

Constructs DescribeServiceErrorsResult's fields from required parameters

#### `DescribeStackProvisioningParametersRequest`

``` purescript
newtype DescribeStackProvisioningParametersRequest
  = DescribeStackProvisioningParametersRequest { "StackId" :: String }
```

##### Instances
``` purescript
Newtype DescribeStackProvisioningParametersRequest _
Generic DescribeStackProvisioningParametersRequest _
Show DescribeStackProvisioningParametersRequest
Decode DescribeStackProvisioningParametersRequest
Encode DescribeStackProvisioningParametersRequest
```

#### `newDescribeStackProvisioningParametersRequest`

``` purescript
newDescribeStackProvisioningParametersRequest :: String -> DescribeStackProvisioningParametersRequest
```

Constructs DescribeStackProvisioningParametersRequest from required parameters

#### `newDescribeStackProvisioningParametersRequest'`

``` purescript
newDescribeStackProvisioningParametersRequest' :: String -> ({ "StackId" :: String } -> { "StackId" :: String }) -> DescribeStackProvisioningParametersRequest
```

Constructs DescribeStackProvisioningParametersRequest's fields from required parameters

#### `DescribeStackProvisioningParametersResult`

``` purescript
newtype DescribeStackProvisioningParametersResult
  = DescribeStackProvisioningParametersResult { "AgentInstallerUrl" :: Maybe (String), "Parameters" :: Maybe (Parameters) }
```

<p>Contains the response to a <code>DescribeStackProvisioningParameters</code> request.</p>

##### Instances
``` purescript
Newtype DescribeStackProvisioningParametersResult _
Generic DescribeStackProvisioningParametersResult _
Show DescribeStackProvisioningParametersResult
Decode DescribeStackProvisioningParametersResult
Encode DescribeStackProvisioningParametersResult
```

#### `newDescribeStackProvisioningParametersResult`

``` purescript
newDescribeStackProvisioningParametersResult :: DescribeStackProvisioningParametersResult
```

Constructs DescribeStackProvisioningParametersResult from required parameters

#### `newDescribeStackProvisioningParametersResult'`

``` purescript
newDescribeStackProvisioningParametersResult' :: ({ "AgentInstallerUrl" :: Maybe (String), "Parameters" :: Maybe (Parameters) } -> { "AgentInstallerUrl" :: Maybe (String), "Parameters" :: Maybe (Parameters) }) -> DescribeStackProvisioningParametersResult
```

Constructs DescribeStackProvisioningParametersResult's fields from required parameters

#### `DescribeStackSummaryRequest`

``` purescript
newtype DescribeStackSummaryRequest
  = DescribeStackSummaryRequest { "StackId" :: String }
```

##### Instances
``` purescript
Newtype DescribeStackSummaryRequest _
Generic DescribeStackSummaryRequest _
Show DescribeStackSummaryRequest
Decode DescribeStackSummaryRequest
Encode DescribeStackSummaryRequest
```

#### `newDescribeStackSummaryRequest`

``` purescript
newDescribeStackSummaryRequest :: String -> DescribeStackSummaryRequest
```

Constructs DescribeStackSummaryRequest from required parameters

#### `newDescribeStackSummaryRequest'`

``` purescript
newDescribeStackSummaryRequest' :: String -> ({ "StackId" :: String } -> { "StackId" :: String }) -> DescribeStackSummaryRequest
```

Constructs DescribeStackSummaryRequest's fields from required parameters

#### `DescribeStackSummaryResult`

``` purescript
newtype DescribeStackSummaryResult
  = DescribeStackSummaryResult { "StackSummary" :: Maybe (StackSummary) }
```

<p>Contains the response to a <code>DescribeStackSummary</code> request.</p>

##### Instances
``` purescript
Newtype DescribeStackSummaryResult _
Generic DescribeStackSummaryResult _
Show DescribeStackSummaryResult
Decode DescribeStackSummaryResult
Encode DescribeStackSummaryResult
```

#### `newDescribeStackSummaryResult`

``` purescript
newDescribeStackSummaryResult :: DescribeStackSummaryResult
```

Constructs DescribeStackSummaryResult from required parameters

#### `newDescribeStackSummaryResult'`

``` purescript
newDescribeStackSummaryResult' :: ({ "StackSummary" :: Maybe (StackSummary) } -> { "StackSummary" :: Maybe (StackSummary) }) -> DescribeStackSummaryResult
```

Constructs DescribeStackSummaryResult's fields from required parameters

#### `DescribeStacksRequest`

``` purescript
newtype DescribeStacksRequest
  = DescribeStacksRequest { "StackIds" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeStacksRequest _
Generic DescribeStacksRequest _
Show DescribeStacksRequest
Decode DescribeStacksRequest
Encode DescribeStacksRequest
```

#### `newDescribeStacksRequest`

``` purescript
newDescribeStacksRequest :: DescribeStacksRequest
```

Constructs DescribeStacksRequest from required parameters

#### `newDescribeStacksRequest'`

``` purescript
newDescribeStacksRequest' :: ({ "StackIds" :: Maybe (Strings) } -> { "StackIds" :: Maybe (Strings) }) -> DescribeStacksRequest
```

Constructs DescribeStacksRequest's fields from required parameters

#### `DescribeStacksResult`

``` purescript
newtype DescribeStacksResult
  = DescribeStacksResult { "Stacks" :: Maybe (Stacks) }
```

<p>Contains the response to a <code>DescribeStacks</code> request.</p>

##### Instances
``` purescript
Newtype DescribeStacksResult _
Generic DescribeStacksResult _
Show DescribeStacksResult
Decode DescribeStacksResult
Encode DescribeStacksResult
```

#### `newDescribeStacksResult`

``` purescript
newDescribeStacksResult :: DescribeStacksResult
```

Constructs DescribeStacksResult from required parameters

#### `newDescribeStacksResult'`

``` purescript
newDescribeStacksResult' :: ({ "Stacks" :: Maybe (Stacks) } -> { "Stacks" :: Maybe (Stacks) }) -> DescribeStacksResult
```

Constructs DescribeStacksResult's fields from required parameters

#### `DescribeTimeBasedAutoScalingRequest`

``` purescript
newtype DescribeTimeBasedAutoScalingRequest
  = DescribeTimeBasedAutoScalingRequest { "InstanceIds" :: Strings }
```

##### Instances
``` purescript
Newtype DescribeTimeBasedAutoScalingRequest _
Generic DescribeTimeBasedAutoScalingRequest _
Show DescribeTimeBasedAutoScalingRequest
Decode DescribeTimeBasedAutoScalingRequest
Encode DescribeTimeBasedAutoScalingRequest
```

#### `newDescribeTimeBasedAutoScalingRequest`

``` purescript
newDescribeTimeBasedAutoScalingRequest :: Strings -> DescribeTimeBasedAutoScalingRequest
```

Constructs DescribeTimeBasedAutoScalingRequest from required parameters

#### `newDescribeTimeBasedAutoScalingRequest'`

``` purescript
newDescribeTimeBasedAutoScalingRequest' :: Strings -> ({ "InstanceIds" :: Strings } -> { "InstanceIds" :: Strings }) -> DescribeTimeBasedAutoScalingRequest
```

Constructs DescribeTimeBasedAutoScalingRequest's fields from required parameters

#### `DescribeTimeBasedAutoScalingResult`

``` purescript
newtype DescribeTimeBasedAutoScalingResult
  = DescribeTimeBasedAutoScalingResult { "TimeBasedAutoScalingConfigurations" :: Maybe (TimeBasedAutoScalingConfigurations) }
```

<p>Contains the response to a <code>DescribeTimeBasedAutoScaling</code> request.</p>

##### Instances
``` purescript
Newtype DescribeTimeBasedAutoScalingResult _
Generic DescribeTimeBasedAutoScalingResult _
Show DescribeTimeBasedAutoScalingResult
Decode DescribeTimeBasedAutoScalingResult
Encode DescribeTimeBasedAutoScalingResult
```

#### `newDescribeTimeBasedAutoScalingResult`

``` purescript
newDescribeTimeBasedAutoScalingResult :: DescribeTimeBasedAutoScalingResult
```

Constructs DescribeTimeBasedAutoScalingResult from required parameters

#### `newDescribeTimeBasedAutoScalingResult'`

``` purescript
newDescribeTimeBasedAutoScalingResult' :: ({ "TimeBasedAutoScalingConfigurations" :: Maybe (TimeBasedAutoScalingConfigurations) } -> { "TimeBasedAutoScalingConfigurations" :: Maybe (TimeBasedAutoScalingConfigurations) }) -> DescribeTimeBasedAutoScalingResult
```

Constructs DescribeTimeBasedAutoScalingResult's fields from required parameters

#### `DescribeUserProfilesRequest`

``` purescript
newtype DescribeUserProfilesRequest
  = DescribeUserProfilesRequest { "IamUserArns" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeUserProfilesRequest _
Generic DescribeUserProfilesRequest _
Show DescribeUserProfilesRequest
Decode DescribeUserProfilesRequest
Encode DescribeUserProfilesRequest
```

#### `newDescribeUserProfilesRequest`

``` purescript
newDescribeUserProfilesRequest :: DescribeUserProfilesRequest
```

Constructs DescribeUserProfilesRequest from required parameters

#### `newDescribeUserProfilesRequest'`

``` purescript
newDescribeUserProfilesRequest' :: ({ "IamUserArns" :: Maybe (Strings) } -> { "IamUserArns" :: Maybe (Strings) }) -> DescribeUserProfilesRequest
```

Constructs DescribeUserProfilesRequest's fields from required parameters

#### `DescribeUserProfilesResult`

``` purescript
newtype DescribeUserProfilesResult
  = DescribeUserProfilesResult { "UserProfiles" :: Maybe (UserProfiles) }
```

<p>Contains the response to a <code>DescribeUserProfiles</code> request.</p>

##### Instances
``` purescript
Newtype DescribeUserProfilesResult _
Generic DescribeUserProfilesResult _
Show DescribeUserProfilesResult
Decode DescribeUserProfilesResult
Encode DescribeUserProfilesResult
```

#### `newDescribeUserProfilesResult`

``` purescript
newDescribeUserProfilesResult :: DescribeUserProfilesResult
```

Constructs DescribeUserProfilesResult from required parameters

#### `newDescribeUserProfilesResult'`

``` purescript
newDescribeUserProfilesResult' :: ({ "UserProfiles" :: Maybe (UserProfiles) } -> { "UserProfiles" :: Maybe (UserProfiles) }) -> DescribeUserProfilesResult
```

Constructs DescribeUserProfilesResult's fields from required parameters

#### `DescribeVolumesRequest`

``` purescript
newtype DescribeVolumesRequest
  = DescribeVolumesRequest { "InstanceId" :: Maybe (String), "StackId" :: Maybe (String), "RaidArrayId" :: Maybe (String), "VolumeIds" :: Maybe (Strings) }
```

##### Instances
``` purescript
Newtype DescribeVolumesRequest _
Generic DescribeVolumesRequest _
Show DescribeVolumesRequest
Decode DescribeVolumesRequest
Encode DescribeVolumesRequest
```

#### `newDescribeVolumesRequest`

``` purescript
newDescribeVolumesRequest :: DescribeVolumesRequest
```

Constructs DescribeVolumesRequest from required parameters

#### `newDescribeVolumesRequest'`

``` purescript
newDescribeVolumesRequest' :: ({ "InstanceId" :: Maybe (String), "StackId" :: Maybe (String), "RaidArrayId" :: Maybe (String), "VolumeIds" :: Maybe (Strings) } -> { "InstanceId" :: Maybe (String), "StackId" :: Maybe (String), "RaidArrayId" :: Maybe (String), "VolumeIds" :: Maybe (Strings) }) -> DescribeVolumesRequest
```

Constructs DescribeVolumesRequest's fields from required parameters

#### `DescribeVolumesResult`

``` purescript
newtype DescribeVolumesResult
  = DescribeVolumesResult { "Volumes" :: Maybe (Volumes) }
```

<p>Contains the response to a <code>DescribeVolumes</code> request.</p>

##### Instances
``` purescript
Newtype DescribeVolumesResult _
Generic DescribeVolumesResult _
Show DescribeVolumesResult
Decode DescribeVolumesResult
Encode DescribeVolumesResult
```

#### `newDescribeVolumesResult`

``` purescript
newDescribeVolumesResult :: DescribeVolumesResult
```

Constructs DescribeVolumesResult from required parameters

#### `newDescribeVolumesResult'`

``` purescript
newDescribeVolumesResult' :: ({ "Volumes" :: Maybe (Volumes) } -> { "Volumes" :: Maybe (Volumes) }) -> DescribeVolumesResult
```

Constructs DescribeVolumesResult's fields from required parameters

#### `DetachElasticLoadBalancerRequest`

``` purescript
newtype DetachElasticLoadBalancerRequest
  = DetachElasticLoadBalancerRequest { "ElasticLoadBalancerName" :: String, "LayerId" :: String }
```

##### Instances
``` purescript
Newtype DetachElasticLoadBalancerRequest _
Generic DetachElasticLoadBalancerRequest _
Show DetachElasticLoadBalancerRequest
Decode DetachElasticLoadBalancerRequest
Encode DetachElasticLoadBalancerRequest
```

#### `newDetachElasticLoadBalancerRequest`

``` purescript
newDetachElasticLoadBalancerRequest :: String -> String -> DetachElasticLoadBalancerRequest
```

Constructs DetachElasticLoadBalancerRequest from required parameters

#### `newDetachElasticLoadBalancerRequest'`

``` purescript
newDetachElasticLoadBalancerRequest' :: String -> String -> ({ "ElasticLoadBalancerName" :: String, "LayerId" :: String } -> { "ElasticLoadBalancerName" :: String, "LayerId" :: String }) -> DetachElasticLoadBalancerRequest
```

Constructs DetachElasticLoadBalancerRequest's fields from required parameters

#### `DisassociateElasticIpRequest`

``` purescript
newtype DisassociateElasticIpRequest
  = DisassociateElasticIpRequest { "ElasticIp" :: String }
```

##### Instances
``` purescript
Newtype DisassociateElasticIpRequest _
Generic DisassociateElasticIpRequest _
Show DisassociateElasticIpRequest
Decode DisassociateElasticIpRequest
Encode DisassociateElasticIpRequest
```

#### `newDisassociateElasticIpRequest`

``` purescript
newDisassociateElasticIpRequest :: String -> DisassociateElasticIpRequest
```

Constructs DisassociateElasticIpRequest from required parameters

#### `newDisassociateElasticIpRequest'`

``` purescript
newDisassociateElasticIpRequest' :: String -> ({ "ElasticIp" :: String } -> { "ElasticIp" :: String }) -> DisassociateElasticIpRequest
```

Constructs DisassociateElasticIpRequest's fields from required parameters

#### `EbsBlockDevice`

``` purescript
newtype EbsBlockDevice
  = EbsBlockDevice { "SnapshotId" :: Maybe (String), "Iops" :: Maybe (Int), "VolumeSize" :: Maybe (Int), "VolumeType" :: Maybe (VolumeType), "DeleteOnTermination" :: Maybe (Boolean) }
```

<p>Describes an Amazon EBS volume. This data type maps directly to the Amazon EC2 <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a> data type.</p>

##### Instances
``` purescript
Newtype EbsBlockDevice _
Generic EbsBlockDevice _
Show EbsBlockDevice
Decode EbsBlockDevice
Encode EbsBlockDevice
```

#### `newEbsBlockDevice`

``` purescript
newEbsBlockDevice :: EbsBlockDevice
```

Constructs EbsBlockDevice from required parameters

#### `newEbsBlockDevice'`

``` purescript
newEbsBlockDevice' :: ({ "SnapshotId" :: Maybe (String), "Iops" :: Maybe (Int), "VolumeSize" :: Maybe (Int), "VolumeType" :: Maybe (VolumeType), "DeleteOnTermination" :: Maybe (Boolean) } -> { "SnapshotId" :: Maybe (String), "Iops" :: Maybe (Int), "VolumeSize" :: Maybe (Int), "VolumeType" :: Maybe (VolumeType), "DeleteOnTermination" :: Maybe (Boolean) }) -> EbsBlockDevice
```

Constructs EbsBlockDevice's fields from required parameters

#### `EcsCluster`

``` purescript
newtype EcsCluster
  = EcsCluster { "EcsClusterArn" :: Maybe (String), "EcsClusterName" :: Maybe (String), "StackId" :: Maybe (String), "RegisteredAt" :: Maybe (DateTime) }
```

<p>Describes a registered Amazon ECS cluster.</p>

##### Instances
``` purescript
Newtype EcsCluster _
Generic EcsCluster _
Show EcsCluster
Decode EcsCluster
Encode EcsCluster
```

#### `newEcsCluster`

``` purescript
newEcsCluster :: EcsCluster
```

Constructs EcsCluster from required parameters

#### `newEcsCluster'`

``` purescript
newEcsCluster' :: ({ "EcsClusterArn" :: Maybe (String), "EcsClusterName" :: Maybe (String), "StackId" :: Maybe (String), "RegisteredAt" :: Maybe (DateTime) } -> { "EcsClusterArn" :: Maybe (String), "EcsClusterName" :: Maybe (String), "StackId" :: Maybe (String), "RegisteredAt" :: Maybe (DateTime) }) -> EcsCluster
```

Constructs EcsCluster's fields from required parameters

#### `EcsClusters`

``` purescript
newtype EcsClusters
  = EcsClusters (Array EcsCluster)
```

##### Instances
``` purescript
Newtype EcsClusters _
Generic EcsClusters _
Show EcsClusters
Decode EcsClusters
Encode EcsClusters
```

#### `ElasticIp`

``` purescript
newtype ElasticIp
  = ElasticIp { "Ip" :: Maybe (String), "Name" :: Maybe (String), "Domain" :: Maybe (String), "Region" :: Maybe (String), "InstanceId" :: Maybe (String) }
```

<p>Describes an Elastic IP address.</p>

##### Instances
``` purescript
Newtype ElasticIp _
Generic ElasticIp _
Show ElasticIp
Decode ElasticIp
Encode ElasticIp
```

#### `newElasticIp`

``` purescript
newElasticIp :: ElasticIp
```

Constructs ElasticIp from required parameters

#### `newElasticIp'`

``` purescript
newElasticIp' :: ({ "Ip" :: Maybe (String), "Name" :: Maybe (String), "Domain" :: Maybe (String), "Region" :: Maybe (String), "InstanceId" :: Maybe (String) } -> { "Ip" :: Maybe (String), "Name" :: Maybe (String), "Domain" :: Maybe (String), "Region" :: Maybe (String), "InstanceId" :: Maybe (String) }) -> ElasticIp
```

Constructs ElasticIp's fields from required parameters

#### `ElasticIps`

``` purescript
newtype ElasticIps
  = ElasticIps (Array ElasticIp)
```

##### Instances
``` purescript
Newtype ElasticIps _
Generic ElasticIps _
Show ElasticIps
Decode ElasticIps
Encode ElasticIps
```

#### `ElasticLoadBalancer`

``` purescript
newtype ElasticLoadBalancer
  = ElasticLoadBalancer { "ElasticLoadBalancerName" :: Maybe (String), "Region" :: Maybe (String), "DnsName" :: Maybe (String), "StackId" :: Maybe (String), "LayerId" :: Maybe (String), "VpcId" :: Maybe (String), "AvailabilityZones" :: Maybe (Strings), "SubnetIds" :: Maybe (Strings), "Ec2InstanceIds" :: Maybe (Strings) }
```

<p>Describes an Elastic Load Balancing instance.</p>

##### Instances
``` purescript
Newtype ElasticLoadBalancer _
Generic ElasticLoadBalancer _
Show ElasticLoadBalancer
Decode ElasticLoadBalancer
Encode ElasticLoadBalancer
```

#### `newElasticLoadBalancer`

``` purescript
newElasticLoadBalancer :: ElasticLoadBalancer
```

Constructs ElasticLoadBalancer from required parameters

#### `newElasticLoadBalancer'`

``` purescript
newElasticLoadBalancer' :: ({ "ElasticLoadBalancerName" :: Maybe (String), "Region" :: Maybe (String), "DnsName" :: Maybe (String), "StackId" :: Maybe (String), "LayerId" :: Maybe (String), "VpcId" :: Maybe (String), "AvailabilityZones" :: Maybe (Strings), "SubnetIds" :: Maybe (Strings), "Ec2InstanceIds" :: Maybe (Strings) } -> { "ElasticLoadBalancerName" :: Maybe (String), "Region" :: Maybe (String), "DnsName" :: Maybe (String), "StackId" :: Maybe (String), "LayerId" :: Maybe (String), "VpcId" :: Maybe (String), "AvailabilityZones" :: Maybe (Strings), "SubnetIds" :: Maybe (Strings), "Ec2InstanceIds" :: Maybe (Strings) }) -> ElasticLoadBalancer
```

Constructs ElasticLoadBalancer's fields from required parameters

#### `ElasticLoadBalancers`

``` purescript
newtype ElasticLoadBalancers
  = ElasticLoadBalancers (Array ElasticLoadBalancer)
```

##### Instances
``` purescript
Newtype ElasticLoadBalancers _
Generic ElasticLoadBalancers _
Show ElasticLoadBalancers
Decode ElasticLoadBalancers
Encode ElasticLoadBalancers
```

#### `EnvironmentVariable`

``` purescript
newtype EnvironmentVariable
  = EnvironmentVariable { "Key" :: String, "Value" :: String, "Secure" :: Maybe (Boolean) }
```

<p>Represents an app's environment variable.</p>

##### Instances
``` purescript
Newtype EnvironmentVariable _
Generic EnvironmentVariable _
Show EnvironmentVariable
Decode EnvironmentVariable
Encode EnvironmentVariable
```

#### `newEnvironmentVariable`

``` purescript
newEnvironmentVariable :: String -> String -> EnvironmentVariable
```

Constructs EnvironmentVariable from required parameters

#### `newEnvironmentVariable'`

``` purescript
newEnvironmentVariable' :: String -> String -> ({ "Key" :: String, "Value" :: String, "Secure" :: Maybe (Boolean) } -> { "Key" :: String, "Value" :: String, "Secure" :: Maybe (Boolean) }) -> EnvironmentVariable
```

Constructs EnvironmentVariable's fields from required parameters

#### `EnvironmentVariables`

``` purescript
newtype EnvironmentVariables
  = EnvironmentVariables (Array EnvironmentVariable)
```

##### Instances
``` purescript
Newtype EnvironmentVariables _
Generic EnvironmentVariables _
Show EnvironmentVariables
Decode EnvironmentVariables
Encode EnvironmentVariables
```

#### `GetHostnameSuggestionRequest`

``` purescript
newtype GetHostnameSuggestionRequest
  = GetHostnameSuggestionRequest { "LayerId" :: String }
```

##### Instances
``` purescript
Newtype GetHostnameSuggestionRequest _
Generic GetHostnameSuggestionRequest _
Show GetHostnameSuggestionRequest
Decode GetHostnameSuggestionRequest
Encode GetHostnameSuggestionRequest
```

#### `newGetHostnameSuggestionRequest`

``` purescript
newGetHostnameSuggestionRequest :: String -> GetHostnameSuggestionRequest
```

Constructs GetHostnameSuggestionRequest from required parameters

#### `newGetHostnameSuggestionRequest'`

``` purescript
newGetHostnameSuggestionRequest' :: String -> ({ "LayerId" :: String } -> { "LayerId" :: String }) -> GetHostnameSuggestionRequest
```

Constructs GetHostnameSuggestionRequest's fields from required parameters

#### `GetHostnameSuggestionResult`

``` purescript
newtype GetHostnameSuggestionResult
  = GetHostnameSuggestionResult { "LayerId" :: Maybe (String), "Hostname" :: Maybe (String) }
```

<p>Contains the response to a <code>GetHostnameSuggestion</code> request.</p>

##### Instances
``` purescript
Newtype GetHostnameSuggestionResult _
Generic GetHostnameSuggestionResult _
Show GetHostnameSuggestionResult
Decode GetHostnameSuggestionResult
Encode GetHostnameSuggestionResult
```

#### `newGetHostnameSuggestionResult`

``` purescript
newGetHostnameSuggestionResult :: GetHostnameSuggestionResult
```

Constructs GetHostnameSuggestionResult from required parameters

#### `newGetHostnameSuggestionResult'`

``` purescript
newGetHostnameSuggestionResult' :: ({ "LayerId" :: Maybe (String), "Hostname" :: Maybe (String) } -> { "LayerId" :: Maybe (String), "Hostname" :: Maybe (String) }) -> GetHostnameSuggestionResult
```

Constructs GetHostnameSuggestionResult's fields from required parameters

#### `GrantAccessRequest`

``` purescript
newtype GrantAccessRequest
  = GrantAccessRequest { "InstanceId" :: String, "ValidForInMinutes" :: Maybe (ValidForInMinutes) }
```

##### Instances
``` purescript
Newtype GrantAccessRequest _
Generic GrantAccessRequest _
Show GrantAccessRequest
Decode GrantAccessRequest
Encode GrantAccessRequest
```

#### `newGrantAccessRequest`

``` purescript
newGrantAccessRequest :: String -> GrantAccessRequest
```

Constructs GrantAccessRequest from required parameters

#### `newGrantAccessRequest'`

``` purescript
newGrantAccessRequest' :: String -> ({ "InstanceId" :: String, "ValidForInMinutes" :: Maybe (ValidForInMinutes) } -> { "InstanceId" :: String, "ValidForInMinutes" :: Maybe (ValidForInMinutes) }) -> GrantAccessRequest
```

Constructs GrantAccessRequest's fields from required parameters

#### `GrantAccessResult`

``` purescript
newtype GrantAccessResult
  = GrantAccessResult { "TemporaryCredential" :: Maybe (TemporaryCredential) }
```

<p>Contains the response to a <code>GrantAccess</code> request.</p>

##### Instances
``` purescript
Newtype GrantAccessResult _
Generic GrantAccessResult _
Show GrantAccessResult
Decode GrantAccessResult
Encode GrantAccessResult
```

#### `newGrantAccessResult`

``` purescript
newGrantAccessResult :: GrantAccessResult
```

Constructs GrantAccessResult from required parameters

#### `newGrantAccessResult'`

``` purescript
newGrantAccessResult' :: ({ "TemporaryCredential" :: Maybe (TemporaryCredential) } -> { "TemporaryCredential" :: Maybe (TemporaryCredential) }) -> GrantAccessResult
```

Constructs GrantAccessResult's fields from required parameters

#### `Hour`

``` purescript
newtype Hour
  = Hour String
```

##### Instances
``` purescript
Newtype Hour _
Generic Hour _
Show Hour
Decode Hour
Encode Hour
```

#### `Instance`

``` purescript
newtype Instance
  = Instance { "AgentVersion" :: Maybe (String), "AmiId" :: Maybe (String), "Architecture" :: Maybe (Architecture), "Arn" :: Maybe (String), "AutoScalingType" :: Maybe (AutoScalingType), "AvailabilityZone" :: Maybe (String), "BlockDeviceMappings" :: Maybe (BlockDeviceMappings), "CreatedAt" :: Maybe (DateTime), "EbsOptimized" :: Maybe (Boolean), "Ec2InstanceId" :: Maybe (String), "EcsClusterArn" :: Maybe (String), "EcsContainerInstanceArn" :: Maybe (String), "ElasticIp" :: Maybe (String), "Hostname" :: Maybe (String), "InfrastructureClass" :: Maybe (String), "InstallUpdatesOnBoot" :: Maybe (Boolean), "InstanceId" :: Maybe (String), "InstanceProfileArn" :: Maybe (String), "InstanceType" :: Maybe (String), "LastServiceErrorId" :: Maybe (String), "LayerIds" :: Maybe (Strings), "Os" :: Maybe (String), "Platform" :: Maybe (String), "PrivateDns" :: Maybe (String), "PrivateIp" :: Maybe (String), "PublicDns" :: Maybe (String), "PublicIp" :: Maybe (String), "RegisteredBy" :: Maybe (String), "ReportedAgentVersion" :: Maybe (String), "ReportedOs" :: Maybe (ReportedOs), "RootDeviceType" :: Maybe (RootDeviceType), "RootDeviceVolumeId" :: Maybe (String), "SecurityGroupIds" :: Maybe (Strings), "SshHostDsaKeyFingerprint" :: Maybe (String), "SshHostRsaKeyFingerprint" :: Maybe (String), "SshKeyName" :: Maybe (String), "StackId" :: Maybe (String), "Status" :: Maybe (String), "SubnetId" :: Maybe (String), "Tenancy" :: Maybe (String), "VirtualizationType" :: Maybe (VirtualizationType) }
```

<p>Describes an instance.</p>

##### Instances
``` purescript
Newtype Instance _
Generic Instance _
Show Instance
Decode Instance
Encode Instance
```

#### `newInstance`

``` purescript
newInstance :: Instance
```

Constructs Instance from required parameters

#### `newInstance'`

``` purescript
newInstance' :: ({ "AgentVersion" :: Maybe (String), "AmiId" :: Maybe (String), "Architecture" :: Maybe (Architecture), "Arn" :: Maybe (String), "AutoScalingType" :: Maybe (AutoScalingType), "AvailabilityZone" :: Maybe (String), "BlockDeviceMappings" :: Maybe (BlockDeviceMappings), "CreatedAt" :: Maybe (DateTime), "EbsOptimized" :: Maybe (Boolean), "Ec2InstanceId" :: Maybe (String), "EcsClusterArn" :: Maybe (String), "EcsContainerInstanceArn" :: Maybe (String), "ElasticIp" :: Maybe (String), "Hostname" :: Maybe (String), "InfrastructureClass" :: Maybe (String), "InstallUpdatesOnBoot" :: Maybe (Boolean), "InstanceId" :: Maybe (String), "InstanceProfileArn" :: Maybe (String), "InstanceType" :: Maybe (String), "LastServiceErrorId" :: Maybe (String), "LayerIds" :: Maybe (Strings), "Os" :: Maybe (String), "Platform" :: Maybe (String), "PrivateDns" :: Maybe (String), "PrivateIp" :: Maybe (String), "PublicDns" :: Maybe (String), "PublicIp" :: Maybe (String), "RegisteredBy" :: Maybe (String), "ReportedAgentVersion" :: Maybe (String), "ReportedOs" :: Maybe (ReportedOs), "RootDeviceType" :: Maybe (RootDeviceType), "RootDeviceVolumeId" :: Maybe (String), "SecurityGroupIds" :: Maybe (Strings), "SshHostDsaKeyFingerprint" :: Maybe (String), "SshHostRsaKeyFingerprint" :: Maybe (String), "SshKeyName" :: Maybe (String), "StackId" :: Maybe (String), "Status" :: Maybe (String), "SubnetId" :: Maybe (String), "Tenancy" :: Maybe (String), "VirtualizationType" :: Maybe (VirtualizationType) } -> { "AgentVersion" :: Maybe (String), "AmiId" :: Maybe (String), "Architecture" :: Maybe (Architecture), "Arn" :: Maybe (String), "AutoScalingType" :: Maybe (AutoScalingType), "AvailabilityZone" :: Maybe (String), "BlockDeviceMappings" :: Maybe (BlockDeviceMappings), "CreatedAt" :: Maybe (DateTime), "EbsOptimized" :: Maybe (Boolean), "Ec2InstanceId" :: Maybe (String), "EcsClusterArn" :: Maybe (String), "EcsContainerInstanceArn" :: Maybe (String), "ElasticIp" :: Maybe (String), "Hostname" :: Maybe (String), "InfrastructureClass" :: Maybe (String), "InstallUpdatesOnBoot" :: Maybe (Boolean), "InstanceId" :: Maybe (String), "InstanceProfileArn" :: Maybe (String), "InstanceType" :: Maybe (String), "LastServiceErrorId" :: Maybe (String), "LayerIds" :: Maybe (Strings), "Os" :: Maybe (String), "Platform" :: Maybe (String), "PrivateDns" :: Maybe (String), "PrivateIp" :: Maybe (String), "PublicDns" :: Maybe (String), "PublicIp" :: Maybe (String), "RegisteredBy" :: Maybe (String), "ReportedAgentVersion" :: Maybe (String), "ReportedOs" :: Maybe (ReportedOs), "RootDeviceType" :: Maybe (RootDeviceType), "RootDeviceVolumeId" :: Maybe (String), "SecurityGroupIds" :: Maybe (Strings), "SshHostDsaKeyFingerprint" :: Maybe (String), "SshHostRsaKeyFingerprint" :: Maybe (String), "SshKeyName" :: Maybe (String), "StackId" :: Maybe (String), "Status" :: Maybe (String), "SubnetId" :: Maybe (String), "Tenancy" :: Maybe (String), "VirtualizationType" :: Maybe (VirtualizationType) }) -> Instance
```

Constructs Instance's fields from required parameters

#### `InstanceIdentity`

``` purescript
newtype InstanceIdentity
  = InstanceIdentity { "Document" :: Maybe (String), "Signature" :: Maybe (String) }
```

<p>Contains a description of an Amazon EC2 instance from the Amazon EC2 metadata service. For more information, see <a href="http://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html">Instance Metadata and User Data</a>.</p>

##### Instances
``` purescript
Newtype InstanceIdentity _
Generic InstanceIdentity _
Show InstanceIdentity
Decode InstanceIdentity
Encode InstanceIdentity
```

#### `newInstanceIdentity`

``` purescript
newInstanceIdentity :: InstanceIdentity
```

Constructs InstanceIdentity from required parameters

#### `newInstanceIdentity'`

``` purescript
newInstanceIdentity' :: ({ "Document" :: Maybe (String), "Signature" :: Maybe (String) } -> { "Document" :: Maybe (String), "Signature" :: Maybe (String) }) -> InstanceIdentity
```

Constructs InstanceIdentity's fields from required parameters

#### `Instances`

``` purescript
newtype Instances
  = Instances (Array Instance)
```

##### Instances
``` purescript
Newtype Instances _
Generic Instances _
Show Instances
Decode Instances
Encode Instances
```

#### `InstancesCount`

``` purescript
newtype InstancesCount
  = InstancesCount { "Assigning" :: Maybe (Int), "Booting" :: Maybe (Int), "ConnectionLost" :: Maybe (Int), "Deregistering" :: Maybe (Int), "Online" :: Maybe (Int), "Pending" :: Maybe (Int), "Rebooting" :: Maybe (Int), "Registered" :: Maybe (Int), "Registering" :: Maybe (Int), "Requested" :: Maybe (Int), "RunningSetup" :: Maybe (Int), "SetupFailed" :: Maybe (Int), "ShuttingDown" :: Maybe (Int), "StartFailed" :: Maybe (Int), "StopFailed" :: Maybe (Int), "Stopped" :: Maybe (Int), "Stopping" :: Maybe (Int), "Terminated" :: Maybe (Int), "Terminating" :: Maybe (Int), "Unassigning" :: Maybe (Int) }
```

<p>Describes how many instances a stack has for each status.</p>

##### Instances
``` purescript
Newtype InstancesCount _
Generic InstancesCount _
Show InstancesCount
Decode InstancesCount
Encode InstancesCount
```

#### `newInstancesCount`

``` purescript
newInstancesCount :: InstancesCount
```

Constructs InstancesCount from required parameters

#### `newInstancesCount'`

``` purescript
newInstancesCount' :: ({ "Assigning" :: Maybe (Int), "Booting" :: Maybe (Int), "ConnectionLost" :: Maybe (Int), "Deregistering" :: Maybe (Int), "Online" :: Maybe (Int), "Pending" :: Maybe (Int), "Rebooting" :: Maybe (Int), "Registered" :: Maybe (Int), "Registering" :: Maybe (Int), "Requested" :: Maybe (Int), "RunningSetup" :: Maybe (Int), "SetupFailed" :: Maybe (Int), "ShuttingDown" :: Maybe (Int), "StartFailed" :: Maybe (Int), "StopFailed" :: Maybe (Int), "Stopped" :: Maybe (Int), "Stopping" :: Maybe (Int), "Terminated" :: Maybe (Int), "Terminating" :: Maybe (Int), "Unassigning" :: Maybe (Int) } -> { "Assigning" :: Maybe (Int), "Booting" :: Maybe (Int), "ConnectionLost" :: Maybe (Int), "Deregistering" :: Maybe (Int), "Online" :: Maybe (Int), "Pending" :: Maybe (Int), "Rebooting" :: Maybe (Int), "Registered" :: Maybe (Int), "Registering" :: Maybe (Int), "Requested" :: Maybe (Int), "RunningSetup" :: Maybe (Int), "SetupFailed" :: Maybe (Int), "ShuttingDown" :: Maybe (Int), "StartFailed" :: Maybe (Int), "StopFailed" :: Maybe (Int), "Stopped" :: Maybe (Int), "Stopping" :: Maybe (Int), "Terminated" :: Maybe (Int), "Terminating" :: Maybe (Int), "Unassigning" :: Maybe (Int) }) -> InstancesCount
```

Constructs InstancesCount's fields from required parameters

#### `Layer`

``` purescript
newtype Layer
  = Layer { "Arn" :: Maybe (String), "StackId" :: Maybe (String), "LayerId" :: Maybe (String), "Type" :: Maybe (LayerType), "Name" :: Maybe (String), "Shortname" :: Maybe (String), "Attributes" :: Maybe (LayerAttributes), "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: Maybe (String), "CustomJson" :: Maybe (String), "CustomSecurityGroupIds" :: Maybe (Strings), "DefaultSecurityGroupNames" :: Maybe (Strings), "Packages" :: Maybe (Strings), "VolumeConfigurations" :: Maybe (VolumeConfigurations), "EnableAutoHealing" :: Maybe (Boolean), "AutoAssignElasticIps" :: Maybe (Boolean), "AutoAssignPublicIps" :: Maybe (Boolean), "DefaultRecipes" :: Maybe (Recipes), "CustomRecipes" :: Maybe (Recipes), "CreatedAt" :: Maybe (DateTime), "InstallUpdatesOnBoot" :: Maybe (Boolean), "UseEbsOptimizedInstances" :: Maybe (Boolean), "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) }
```

<p>Describes a layer.</p>

##### Instances
``` purescript
Newtype Layer _
Generic Layer _
Show Layer
Decode Layer
Encode Layer
```

#### `newLayer`

``` purescript
newLayer :: Layer
```

Constructs Layer from required parameters

#### `newLayer'`

``` purescript
newLayer' :: ({ "Arn" :: Maybe (String), "StackId" :: Maybe (String), "LayerId" :: Maybe (String), "Type" :: Maybe (LayerType), "Name" :: Maybe (String), "Shortname" :: Maybe (String), "Attributes" :: Maybe (LayerAttributes), "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: Maybe (String), "CustomJson" :: Maybe (String), "CustomSecurityGroupIds" :: Maybe (Strings), "DefaultSecurityGroupNames" :: Maybe (Strings), "Packages" :: Maybe (Strings), "VolumeConfigurations" :: Maybe (VolumeConfigurations), "EnableAutoHealing" :: Maybe (Boolean), "AutoAssignElasticIps" :: Maybe (Boolean), "AutoAssignPublicIps" :: Maybe (Boolean), "DefaultRecipes" :: Maybe (Recipes), "CustomRecipes" :: Maybe (Recipes), "CreatedAt" :: Maybe (DateTime), "InstallUpdatesOnBoot" :: Maybe (Boolean), "UseEbsOptimizedInstances" :: Maybe (Boolean), "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) } -> { "Arn" :: Maybe (String), "StackId" :: Maybe (String), "LayerId" :: Maybe (String), "Type" :: Maybe (LayerType), "Name" :: Maybe (String), "Shortname" :: Maybe (String), "Attributes" :: Maybe (LayerAttributes), "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: Maybe (String), "CustomJson" :: Maybe (String), "CustomSecurityGroupIds" :: Maybe (Strings), "DefaultSecurityGroupNames" :: Maybe (Strings), "Packages" :: Maybe (Strings), "VolumeConfigurations" :: Maybe (VolumeConfigurations), "EnableAutoHealing" :: Maybe (Boolean), "AutoAssignElasticIps" :: Maybe (Boolean), "AutoAssignPublicIps" :: Maybe (Boolean), "DefaultRecipes" :: Maybe (Recipes), "CustomRecipes" :: Maybe (Recipes), "CreatedAt" :: Maybe (DateTime), "InstallUpdatesOnBoot" :: Maybe (Boolean), "UseEbsOptimizedInstances" :: Maybe (Boolean), "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) }) -> Layer
```

Constructs Layer's fields from required parameters

#### `LayerAttributes`

``` purescript
newtype LayerAttributes
  = LayerAttributes (StrMap String)
```

##### Instances
``` purescript
Newtype LayerAttributes _
Generic LayerAttributes _
Show LayerAttributes
Decode LayerAttributes
Encode LayerAttributes
```

#### `LayerAttributesKeys`

``` purescript
newtype LayerAttributesKeys
  = LayerAttributesKeys String
```

##### Instances
``` purescript
Newtype LayerAttributesKeys _
Generic LayerAttributesKeys _
Show LayerAttributesKeys
Decode LayerAttributesKeys
Encode LayerAttributesKeys
```

#### `LayerType`

``` purescript
newtype LayerType
  = LayerType String
```

##### Instances
``` purescript
Newtype LayerType _
Generic LayerType _
Show LayerType
Decode LayerType
Encode LayerType
```

#### `Layers`

``` purescript
newtype Layers
  = Layers (Array Layer)
```

##### Instances
``` purescript
Newtype Layers _
Generic Layers _
Show Layers
Decode Layers
Encode Layers
```

#### `LifecycleEventConfiguration`

``` purescript
newtype LifecycleEventConfiguration
  = LifecycleEventConfiguration { "Shutdown" :: Maybe (ShutdownEventConfiguration) }
```

<p>Specifies the lifecycle event configuration</p>

##### Instances
``` purescript
Newtype LifecycleEventConfiguration _
Generic LifecycleEventConfiguration _
Show LifecycleEventConfiguration
Decode LifecycleEventConfiguration
Encode LifecycleEventConfiguration
```

#### `newLifecycleEventConfiguration`

``` purescript
newLifecycleEventConfiguration :: LifecycleEventConfiguration
```

Constructs LifecycleEventConfiguration from required parameters

#### `newLifecycleEventConfiguration'`

``` purescript
newLifecycleEventConfiguration' :: ({ "Shutdown" :: Maybe (ShutdownEventConfiguration) } -> { "Shutdown" :: Maybe (ShutdownEventConfiguration) }) -> LifecycleEventConfiguration
```

Constructs LifecycleEventConfiguration's fields from required parameters

#### `ListTagsRequest`

``` purescript
newtype ListTagsRequest
  = ListTagsRequest { "ResourceArn" :: ResourceArn, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListTagsRequest _
Generic ListTagsRequest _
Show ListTagsRequest
Decode ListTagsRequest
Encode ListTagsRequest
```

#### `newListTagsRequest`

``` purescript
newListTagsRequest :: ResourceArn -> ListTagsRequest
```

Constructs ListTagsRequest from required parameters

#### `newListTagsRequest'`

``` purescript
newListTagsRequest' :: ResourceArn -> ({ "ResourceArn" :: ResourceArn, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (NextToken) } -> { "ResourceArn" :: ResourceArn, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (NextToken) }) -> ListTagsRequest
```

Constructs ListTagsRequest's fields from required parameters

#### `ListTagsResult`

``` purescript
newtype ListTagsResult
  = ListTagsResult { "Tags" :: Maybe (Tags), "NextToken" :: Maybe (NextToken) }
```

<p>Contains the response to a <code>ListTags</code> request.</p>

##### Instances
``` purescript
Newtype ListTagsResult _
Generic ListTagsResult _
Show ListTagsResult
Decode ListTagsResult
Encode ListTagsResult
```

#### `newListTagsResult`

``` purescript
newListTagsResult :: ListTagsResult
```

Constructs ListTagsResult from required parameters

#### `newListTagsResult'`

``` purescript
newListTagsResult' :: ({ "Tags" :: Maybe (Tags), "NextToken" :: Maybe (NextToken) } -> { "Tags" :: Maybe (Tags), "NextToken" :: Maybe (NextToken) }) -> ListTagsResult
```

Constructs ListTagsResult's fields from required parameters

#### `LoadBasedAutoScalingConfiguration`

``` purescript
newtype LoadBasedAutoScalingConfiguration
  = LoadBasedAutoScalingConfiguration { "LayerId" :: Maybe (String), "Enable" :: Maybe (Boolean), "UpScaling" :: Maybe (AutoScalingThresholds), "DownScaling" :: Maybe (AutoScalingThresholds) }
```

<p>Describes a layer's load-based auto scaling configuration.</p>

##### Instances
``` purescript
Newtype LoadBasedAutoScalingConfiguration _
Generic LoadBasedAutoScalingConfiguration _
Show LoadBasedAutoScalingConfiguration
Decode LoadBasedAutoScalingConfiguration
Encode LoadBasedAutoScalingConfiguration
```

#### `newLoadBasedAutoScalingConfiguration`

``` purescript
newLoadBasedAutoScalingConfiguration :: LoadBasedAutoScalingConfiguration
```

Constructs LoadBasedAutoScalingConfiguration from required parameters

#### `newLoadBasedAutoScalingConfiguration'`

``` purescript
newLoadBasedAutoScalingConfiguration' :: ({ "LayerId" :: Maybe (String), "Enable" :: Maybe (Boolean), "UpScaling" :: Maybe (AutoScalingThresholds), "DownScaling" :: Maybe (AutoScalingThresholds) } -> { "LayerId" :: Maybe (String), "Enable" :: Maybe (Boolean), "UpScaling" :: Maybe (AutoScalingThresholds), "DownScaling" :: Maybe (AutoScalingThresholds) }) -> LoadBasedAutoScalingConfiguration
```

Constructs LoadBasedAutoScalingConfiguration's fields from required parameters

#### `LoadBasedAutoScalingConfigurations`

``` purescript
newtype LoadBasedAutoScalingConfigurations
  = LoadBasedAutoScalingConfigurations (Array LoadBasedAutoScalingConfiguration)
```

##### Instances
``` purescript
Newtype LoadBasedAutoScalingConfigurations _
Generic LoadBasedAutoScalingConfigurations _
Show LoadBasedAutoScalingConfigurations
Decode LoadBasedAutoScalingConfigurations
Encode LoadBasedAutoScalingConfigurations
```

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `Minute`

``` purescript
newtype Minute
  = Minute Int
```

##### Instances
``` purescript
Newtype Minute _
Generic Minute _
Show Minute
Decode Minute
Encode Minute
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `OperatingSystem`

``` purescript
newtype OperatingSystem
  = OperatingSystem { "Name" :: Maybe (String), "Id" :: Maybe (String), "Type" :: Maybe (String), "ConfigurationManagers" :: Maybe (OperatingSystemConfigurationManagers), "ReportedName" :: Maybe (String), "ReportedVersion" :: Maybe (String), "Supported" :: Maybe (Boolean) }
```

<p>Describes supported operating systems in AWS OpsWorks Stacks.</p>

##### Instances
``` purescript
Newtype OperatingSystem _
Generic OperatingSystem _
Show OperatingSystem
Decode OperatingSystem
Encode OperatingSystem
```

#### `newOperatingSystem`

``` purescript
newOperatingSystem :: OperatingSystem
```

Constructs OperatingSystem from required parameters

#### `newOperatingSystem'`

``` purescript
newOperatingSystem' :: ({ "Name" :: Maybe (String), "Id" :: Maybe (String), "Type" :: Maybe (String), "ConfigurationManagers" :: Maybe (OperatingSystemConfigurationManagers), "ReportedName" :: Maybe (String), "ReportedVersion" :: Maybe (String), "Supported" :: Maybe (Boolean) } -> { "Name" :: Maybe (String), "Id" :: Maybe (String), "Type" :: Maybe (String), "ConfigurationManagers" :: Maybe (OperatingSystemConfigurationManagers), "ReportedName" :: Maybe (String), "ReportedVersion" :: Maybe (String), "Supported" :: Maybe (Boolean) }) -> OperatingSystem
```

Constructs OperatingSystem's fields from required parameters

#### `OperatingSystemConfigurationManager`

``` purescript
newtype OperatingSystemConfigurationManager
  = OperatingSystemConfigurationManager { "Name" :: Maybe (String), "Version" :: Maybe (String) }
```

<p>A block that contains information about the configuration manager (Chef) and the versions of the configuration manager that are supported for an operating system.</p>

##### Instances
``` purescript
Newtype OperatingSystemConfigurationManager _
Generic OperatingSystemConfigurationManager _
Show OperatingSystemConfigurationManager
Decode OperatingSystemConfigurationManager
Encode OperatingSystemConfigurationManager
```

#### `newOperatingSystemConfigurationManager`

``` purescript
newOperatingSystemConfigurationManager :: OperatingSystemConfigurationManager
```

Constructs OperatingSystemConfigurationManager from required parameters

#### `newOperatingSystemConfigurationManager'`

``` purescript
newOperatingSystemConfigurationManager' :: ({ "Name" :: Maybe (String), "Version" :: Maybe (String) } -> { "Name" :: Maybe (String), "Version" :: Maybe (String) }) -> OperatingSystemConfigurationManager
```

Constructs OperatingSystemConfigurationManager's fields from required parameters

#### `OperatingSystemConfigurationManagers`

``` purescript
newtype OperatingSystemConfigurationManagers
  = OperatingSystemConfigurationManagers (Array OperatingSystemConfigurationManager)
```

##### Instances
``` purescript
Newtype OperatingSystemConfigurationManagers _
Generic OperatingSystemConfigurationManagers _
Show OperatingSystemConfigurationManagers
Decode OperatingSystemConfigurationManagers
Encode OperatingSystemConfigurationManagers
```

#### `OperatingSystems`

``` purescript
newtype OperatingSystems
  = OperatingSystems (Array OperatingSystem)
```

##### Instances
``` purescript
Newtype OperatingSystems _
Generic OperatingSystems _
Show OperatingSystems
Decode OperatingSystems
Encode OperatingSystems
```

#### `Parameters`

``` purescript
newtype Parameters
  = Parameters (StrMap String)
```

##### Instances
``` purescript
Newtype Parameters _
Generic Parameters _
Show Parameters
Decode Parameters
Encode Parameters
```

#### `Permission`

``` purescript
newtype Permission
  = Permission { "StackId" :: Maybe (String), "IamUserArn" :: Maybe (String), "AllowSsh" :: Maybe (Boolean), "AllowSudo" :: Maybe (Boolean), "Level" :: Maybe (String) }
```

<p>Describes stack or user permissions.</p>

##### Instances
``` purescript
Newtype Permission _
Generic Permission _
Show Permission
Decode Permission
Encode Permission
```

#### `newPermission`

``` purescript
newPermission :: Permission
```

Constructs Permission from required parameters

#### `newPermission'`

``` purescript
newPermission' :: ({ "StackId" :: Maybe (String), "IamUserArn" :: Maybe (String), "AllowSsh" :: Maybe (Boolean), "AllowSudo" :: Maybe (Boolean), "Level" :: Maybe (String) } -> { "StackId" :: Maybe (String), "IamUserArn" :: Maybe (String), "AllowSsh" :: Maybe (Boolean), "AllowSudo" :: Maybe (Boolean), "Level" :: Maybe (String) }) -> Permission
```

Constructs Permission's fields from required parameters

#### `Permissions`

``` purescript
newtype Permissions
  = Permissions (Array Permission)
```

##### Instances
``` purescript
Newtype Permissions _
Generic Permissions _
Show Permissions
Decode Permissions
Encode Permissions
```

#### `RaidArray`

``` purescript
newtype RaidArray
  = RaidArray { "RaidArrayId" :: Maybe (String), "InstanceId" :: Maybe (String), "Name" :: Maybe (String), "RaidLevel" :: Maybe (Int), "NumberOfDisks" :: Maybe (Int), "Size" :: Maybe (Int), "Device" :: Maybe (String), "MountPoint" :: Maybe (String), "AvailabilityZone" :: Maybe (String), "CreatedAt" :: Maybe (DateTime), "StackId" :: Maybe (String), "VolumeType" :: Maybe (String), "Iops" :: Maybe (Int) }
```

<p>Describes an instance's RAID array.</p>

##### Instances
``` purescript
Newtype RaidArray _
Generic RaidArray _
Show RaidArray
Decode RaidArray
Encode RaidArray
```

#### `newRaidArray`

``` purescript
newRaidArray :: RaidArray
```

Constructs RaidArray from required parameters

#### `newRaidArray'`

``` purescript
newRaidArray' :: ({ "RaidArrayId" :: Maybe (String), "InstanceId" :: Maybe (String), "Name" :: Maybe (String), "RaidLevel" :: Maybe (Int), "NumberOfDisks" :: Maybe (Int), "Size" :: Maybe (Int), "Device" :: Maybe (String), "MountPoint" :: Maybe (String), "AvailabilityZone" :: Maybe (String), "CreatedAt" :: Maybe (DateTime), "StackId" :: Maybe (String), "VolumeType" :: Maybe (String), "Iops" :: Maybe (Int) } -> { "RaidArrayId" :: Maybe (String), "InstanceId" :: Maybe (String), "Name" :: Maybe (String), "RaidLevel" :: Maybe (Int), "NumberOfDisks" :: Maybe (Int), "Size" :: Maybe (Int), "Device" :: Maybe (String), "MountPoint" :: Maybe (String), "AvailabilityZone" :: Maybe (String), "CreatedAt" :: Maybe (DateTime), "StackId" :: Maybe (String), "VolumeType" :: Maybe (String), "Iops" :: Maybe (Int) }) -> RaidArray
```

Constructs RaidArray's fields from required parameters

#### `RaidArrays`

``` purescript
newtype RaidArrays
  = RaidArrays (Array RaidArray)
```

##### Instances
``` purescript
Newtype RaidArrays _
Generic RaidArrays _
Show RaidArrays
Decode RaidArrays
Encode RaidArrays
```

#### `RdsDbInstance`

``` purescript
newtype RdsDbInstance
  = RdsDbInstance { "RdsDbInstanceArn" :: Maybe (String), "DbInstanceIdentifier" :: Maybe (String), "DbUser" :: Maybe (String), "DbPassword" :: Maybe (String), "Region" :: Maybe (String), "Address" :: Maybe (String), "Engine" :: Maybe (String), "StackId" :: Maybe (String), "MissingOnRds" :: Maybe (Boolean) }
```

<p>Describes an Amazon RDS instance.</p>

##### Instances
``` purescript
Newtype RdsDbInstance _
Generic RdsDbInstance _
Show RdsDbInstance
Decode RdsDbInstance
Encode RdsDbInstance
```

#### `newRdsDbInstance`

``` purescript
newRdsDbInstance :: RdsDbInstance
```

Constructs RdsDbInstance from required parameters

#### `newRdsDbInstance'`

``` purescript
newRdsDbInstance' :: ({ "RdsDbInstanceArn" :: Maybe (String), "DbInstanceIdentifier" :: Maybe (String), "DbUser" :: Maybe (String), "DbPassword" :: Maybe (String), "Region" :: Maybe (String), "Address" :: Maybe (String), "Engine" :: Maybe (String), "StackId" :: Maybe (String), "MissingOnRds" :: Maybe (Boolean) } -> { "RdsDbInstanceArn" :: Maybe (String), "DbInstanceIdentifier" :: Maybe (String), "DbUser" :: Maybe (String), "DbPassword" :: Maybe (String), "Region" :: Maybe (String), "Address" :: Maybe (String), "Engine" :: Maybe (String), "StackId" :: Maybe (String), "MissingOnRds" :: Maybe (Boolean) }) -> RdsDbInstance
```

Constructs RdsDbInstance's fields from required parameters

#### `RdsDbInstances`

``` purescript
newtype RdsDbInstances
  = RdsDbInstances (Array RdsDbInstance)
```

##### Instances
``` purescript
Newtype RdsDbInstances _
Generic RdsDbInstances _
Show RdsDbInstances
Decode RdsDbInstances
Encode RdsDbInstances
```

#### `RebootInstanceRequest`

``` purescript
newtype RebootInstanceRequest
  = RebootInstanceRequest { "InstanceId" :: String }
```

##### Instances
``` purescript
Newtype RebootInstanceRequest _
Generic RebootInstanceRequest _
Show RebootInstanceRequest
Decode RebootInstanceRequest
Encode RebootInstanceRequest
```

#### `newRebootInstanceRequest`

``` purescript
newRebootInstanceRequest :: String -> RebootInstanceRequest
```

Constructs RebootInstanceRequest from required parameters

#### `newRebootInstanceRequest'`

``` purescript
newRebootInstanceRequest' :: String -> ({ "InstanceId" :: String } -> { "InstanceId" :: String }) -> RebootInstanceRequest
```

Constructs RebootInstanceRequest's fields from required parameters

#### `Recipes`

``` purescript
newtype Recipes
  = Recipes { "Setup" :: Maybe (Strings), "Configure" :: Maybe (Strings), "Deploy" :: Maybe (Strings), "Undeploy" :: Maybe (Strings), "Shutdown" :: Maybe (Strings) }
```

<p>AWS OpsWorks Stacks supports five lifecycle events: <b>setup</b>, <b>configuration</b>, <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>. For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. In addition, you can provide custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the standard recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a particular layer to be run in response to each of the five events. </p> <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the .rb extension. For example: phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's phpapp2 folder.</p>

##### Instances
``` purescript
Newtype Recipes _
Generic Recipes _
Show Recipes
Decode Recipes
Encode Recipes
```

#### `newRecipes`

``` purescript
newRecipes :: Recipes
```

Constructs Recipes from required parameters

#### `newRecipes'`

``` purescript
newRecipes' :: ({ "Setup" :: Maybe (Strings), "Configure" :: Maybe (Strings), "Deploy" :: Maybe (Strings), "Undeploy" :: Maybe (Strings), "Shutdown" :: Maybe (Strings) } -> { "Setup" :: Maybe (Strings), "Configure" :: Maybe (Strings), "Deploy" :: Maybe (Strings), "Undeploy" :: Maybe (Strings), "Shutdown" :: Maybe (Strings) }) -> Recipes
```

Constructs Recipes's fields from required parameters

#### `RegisterEcsClusterRequest`

``` purescript
newtype RegisterEcsClusterRequest
  = RegisterEcsClusterRequest { "EcsClusterArn" :: String, "StackId" :: String }
```

##### Instances
``` purescript
Newtype RegisterEcsClusterRequest _
Generic RegisterEcsClusterRequest _
Show RegisterEcsClusterRequest
Decode RegisterEcsClusterRequest
Encode RegisterEcsClusterRequest
```

#### `newRegisterEcsClusterRequest`

``` purescript
newRegisterEcsClusterRequest :: String -> String -> RegisterEcsClusterRequest
```

Constructs RegisterEcsClusterRequest from required parameters

#### `newRegisterEcsClusterRequest'`

``` purescript
newRegisterEcsClusterRequest' :: String -> String -> ({ "EcsClusterArn" :: String, "StackId" :: String } -> { "EcsClusterArn" :: String, "StackId" :: String }) -> RegisterEcsClusterRequest
```

Constructs RegisterEcsClusterRequest's fields from required parameters

#### `RegisterEcsClusterResult`

``` purescript
newtype RegisterEcsClusterResult
  = RegisterEcsClusterResult { "EcsClusterArn" :: Maybe (String) }
```

<p>Contains the response to a <code>RegisterEcsCluster</code> request.</p>

##### Instances
``` purescript
Newtype RegisterEcsClusterResult _
Generic RegisterEcsClusterResult _
Show RegisterEcsClusterResult
Decode RegisterEcsClusterResult
Encode RegisterEcsClusterResult
```

#### `newRegisterEcsClusterResult`

``` purescript
newRegisterEcsClusterResult :: RegisterEcsClusterResult
```

Constructs RegisterEcsClusterResult from required parameters

#### `newRegisterEcsClusterResult'`

``` purescript
newRegisterEcsClusterResult' :: ({ "EcsClusterArn" :: Maybe (String) } -> { "EcsClusterArn" :: Maybe (String) }) -> RegisterEcsClusterResult
```

Constructs RegisterEcsClusterResult's fields from required parameters

#### `RegisterElasticIpRequest`

``` purescript
newtype RegisterElasticIpRequest
  = RegisterElasticIpRequest { "ElasticIp" :: String, "StackId" :: String }
```

##### Instances
``` purescript
Newtype RegisterElasticIpRequest _
Generic RegisterElasticIpRequest _
Show RegisterElasticIpRequest
Decode RegisterElasticIpRequest
Encode RegisterElasticIpRequest
```

#### `newRegisterElasticIpRequest`

``` purescript
newRegisterElasticIpRequest :: String -> String -> RegisterElasticIpRequest
```

Constructs RegisterElasticIpRequest from required parameters

#### `newRegisterElasticIpRequest'`

``` purescript
newRegisterElasticIpRequest' :: String -> String -> ({ "ElasticIp" :: String, "StackId" :: String } -> { "ElasticIp" :: String, "StackId" :: String }) -> RegisterElasticIpRequest
```

Constructs RegisterElasticIpRequest's fields from required parameters

#### `RegisterElasticIpResult`

``` purescript
newtype RegisterElasticIpResult
  = RegisterElasticIpResult { "ElasticIp" :: Maybe (String) }
```

<p>Contains the response to a <code>RegisterElasticIp</code> request.</p>

##### Instances
``` purescript
Newtype RegisterElasticIpResult _
Generic RegisterElasticIpResult _
Show RegisterElasticIpResult
Decode RegisterElasticIpResult
Encode RegisterElasticIpResult
```

#### `newRegisterElasticIpResult`

``` purescript
newRegisterElasticIpResult :: RegisterElasticIpResult
```

Constructs RegisterElasticIpResult from required parameters

#### `newRegisterElasticIpResult'`

``` purescript
newRegisterElasticIpResult' :: ({ "ElasticIp" :: Maybe (String) } -> { "ElasticIp" :: Maybe (String) }) -> RegisterElasticIpResult
```

Constructs RegisterElasticIpResult's fields from required parameters

#### `RegisterInstanceRequest`

``` purescript
newtype RegisterInstanceRequest
  = RegisterInstanceRequest { "StackId" :: String, "Hostname" :: Maybe (String), "PublicIp" :: Maybe (String), "PrivateIp" :: Maybe (String), "RsaPublicKey" :: Maybe (String), "RsaPublicKeyFingerprint" :: Maybe (String), "InstanceIdentity" :: Maybe (InstanceIdentity) }
```

##### Instances
``` purescript
Newtype RegisterInstanceRequest _
Generic RegisterInstanceRequest _
Show RegisterInstanceRequest
Decode RegisterInstanceRequest
Encode RegisterInstanceRequest
```

#### `newRegisterInstanceRequest`

``` purescript
newRegisterInstanceRequest :: String -> RegisterInstanceRequest
```

Constructs RegisterInstanceRequest from required parameters

#### `newRegisterInstanceRequest'`

``` purescript
newRegisterInstanceRequest' :: String -> ({ "StackId" :: String, "Hostname" :: Maybe (String), "PublicIp" :: Maybe (String), "PrivateIp" :: Maybe (String), "RsaPublicKey" :: Maybe (String), "RsaPublicKeyFingerprint" :: Maybe (String), "InstanceIdentity" :: Maybe (InstanceIdentity) } -> { "StackId" :: String, "Hostname" :: Maybe (String), "PublicIp" :: Maybe (String), "PrivateIp" :: Maybe (String), "RsaPublicKey" :: Maybe (String), "RsaPublicKeyFingerprint" :: Maybe (String), "InstanceIdentity" :: Maybe (InstanceIdentity) }) -> RegisterInstanceRequest
```

Constructs RegisterInstanceRequest's fields from required parameters

#### `RegisterInstanceResult`

``` purescript
newtype RegisterInstanceResult
  = RegisterInstanceResult { "InstanceId" :: Maybe (String) }
```

<p>Contains the response to a <code>RegisterInstanceResult</code> request.</p>

##### Instances
``` purescript
Newtype RegisterInstanceResult _
Generic RegisterInstanceResult _
Show RegisterInstanceResult
Decode RegisterInstanceResult
Encode RegisterInstanceResult
```

#### `newRegisterInstanceResult`

``` purescript
newRegisterInstanceResult :: RegisterInstanceResult
```

Constructs RegisterInstanceResult from required parameters

#### `newRegisterInstanceResult'`

``` purescript
newRegisterInstanceResult' :: ({ "InstanceId" :: Maybe (String) } -> { "InstanceId" :: Maybe (String) }) -> RegisterInstanceResult
```

Constructs RegisterInstanceResult's fields from required parameters

#### `RegisterRdsDbInstanceRequest`

``` purescript
newtype RegisterRdsDbInstanceRequest
  = RegisterRdsDbInstanceRequest { "StackId" :: String, "RdsDbInstanceArn" :: String, "DbUser" :: String, "DbPassword" :: String }
```

##### Instances
``` purescript
Newtype RegisterRdsDbInstanceRequest _
Generic RegisterRdsDbInstanceRequest _
Show RegisterRdsDbInstanceRequest
Decode RegisterRdsDbInstanceRequest
Encode RegisterRdsDbInstanceRequest
```

#### `newRegisterRdsDbInstanceRequest`

``` purescript
newRegisterRdsDbInstanceRequest :: String -> String -> String -> String -> RegisterRdsDbInstanceRequest
```

Constructs RegisterRdsDbInstanceRequest from required parameters

#### `newRegisterRdsDbInstanceRequest'`

``` purescript
newRegisterRdsDbInstanceRequest' :: String -> String -> String -> String -> ({ "StackId" :: String, "RdsDbInstanceArn" :: String, "DbUser" :: String, "DbPassword" :: String } -> { "StackId" :: String, "RdsDbInstanceArn" :: String, "DbUser" :: String, "DbPassword" :: String }) -> RegisterRdsDbInstanceRequest
```

Constructs RegisterRdsDbInstanceRequest's fields from required parameters

#### `RegisterVolumeRequest`

``` purescript
newtype RegisterVolumeRequest
  = RegisterVolumeRequest { "Ec2VolumeId" :: Maybe (String), "StackId" :: String }
```

##### Instances
``` purescript
Newtype RegisterVolumeRequest _
Generic RegisterVolumeRequest _
Show RegisterVolumeRequest
Decode RegisterVolumeRequest
Encode RegisterVolumeRequest
```

#### `newRegisterVolumeRequest`

``` purescript
newRegisterVolumeRequest :: String -> RegisterVolumeRequest
```

Constructs RegisterVolumeRequest from required parameters

#### `newRegisterVolumeRequest'`

``` purescript
newRegisterVolumeRequest' :: String -> ({ "Ec2VolumeId" :: Maybe (String), "StackId" :: String } -> { "Ec2VolumeId" :: Maybe (String), "StackId" :: String }) -> RegisterVolumeRequest
```

Constructs RegisterVolumeRequest's fields from required parameters

#### `RegisterVolumeResult`

``` purescript
newtype RegisterVolumeResult
  = RegisterVolumeResult { "VolumeId" :: Maybe (String) }
```

<p>Contains the response to a <code>RegisterVolume</code> request.</p>

##### Instances
``` purescript
Newtype RegisterVolumeResult _
Generic RegisterVolumeResult _
Show RegisterVolumeResult
Decode RegisterVolumeResult
Encode RegisterVolumeResult
```

#### `newRegisterVolumeResult`

``` purescript
newRegisterVolumeResult :: RegisterVolumeResult
```

Constructs RegisterVolumeResult from required parameters

#### `newRegisterVolumeResult'`

``` purescript
newRegisterVolumeResult' :: ({ "VolumeId" :: Maybe (String) } -> { "VolumeId" :: Maybe (String) }) -> RegisterVolumeResult
```

Constructs RegisterVolumeResult's fields from required parameters

#### `ReportedOs`

``` purescript
newtype ReportedOs
  = ReportedOs { "Family" :: Maybe (String), "Name" :: Maybe (String), "Version" :: Maybe (String) }
```

<p>A registered instance's reported operating system.</p>

##### Instances
``` purescript
Newtype ReportedOs _
Generic ReportedOs _
Show ReportedOs
Decode ReportedOs
Encode ReportedOs
```

#### `newReportedOs`

``` purescript
newReportedOs :: ReportedOs
```

Constructs ReportedOs from required parameters

#### `newReportedOs'`

``` purescript
newReportedOs' :: ({ "Family" :: Maybe (String), "Name" :: Maybe (String), "Version" :: Maybe (String) } -> { "Family" :: Maybe (String), "Name" :: Maybe (String), "Version" :: Maybe (String) }) -> ReportedOs
```

Constructs ReportedOs's fields from required parameters

#### `ResourceArn`

``` purescript
newtype ResourceArn
  = ResourceArn String
```

##### Instances
``` purescript
Newtype ResourceArn _
Generic ResourceArn _
Show ResourceArn
Decode ResourceArn
Encode ResourceArn
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: Maybe (String) }
```

<p>Indicates that a resource was not found.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `RootDeviceType`

``` purescript
newtype RootDeviceType
  = RootDeviceType String
```

##### Instances
``` purescript
Newtype RootDeviceType _
Generic RootDeviceType _
Show RootDeviceType
Decode RootDeviceType
Encode RootDeviceType
```

#### `SelfUserProfile`

``` purescript
newtype SelfUserProfile
  = SelfUserProfile { "IamUserArn" :: Maybe (String), "Name" :: Maybe (String), "SshUsername" :: Maybe (String), "SshPublicKey" :: Maybe (String) }
```

<p>Describes a user's SSH information.</p>

##### Instances
``` purescript
Newtype SelfUserProfile _
Generic SelfUserProfile _
Show SelfUserProfile
Decode SelfUserProfile
Encode SelfUserProfile
```

#### `newSelfUserProfile`

``` purescript
newSelfUserProfile :: SelfUserProfile
```

Constructs SelfUserProfile from required parameters

#### `newSelfUserProfile'`

``` purescript
newSelfUserProfile' :: ({ "IamUserArn" :: Maybe (String), "Name" :: Maybe (String), "SshUsername" :: Maybe (String), "SshPublicKey" :: Maybe (String) } -> { "IamUserArn" :: Maybe (String), "Name" :: Maybe (String), "SshUsername" :: Maybe (String), "SshPublicKey" :: Maybe (String) }) -> SelfUserProfile
```

Constructs SelfUserProfile's fields from required parameters

#### `ServiceError`

``` purescript
newtype ServiceError
  = ServiceError { "ServiceErrorId" :: Maybe (String), "StackId" :: Maybe (String), "InstanceId" :: Maybe (String), "Type" :: Maybe (String), "Message" :: Maybe (String), "CreatedAt" :: Maybe (DateTime) }
```

<p>Describes an AWS OpsWorks Stacks service error.</p>

##### Instances
``` purescript
Newtype ServiceError _
Generic ServiceError _
Show ServiceError
Decode ServiceError
Encode ServiceError
```

#### `newServiceError`

``` purescript
newServiceError :: ServiceError
```

Constructs ServiceError from required parameters

#### `newServiceError'`

``` purescript
newServiceError' :: ({ "ServiceErrorId" :: Maybe (String), "StackId" :: Maybe (String), "InstanceId" :: Maybe (String), "Type" :: Maybe (String), "Message" :: Maybe (String), "CreatedAt" :: Maybe (DateTime) } -> { "ServiceErrorId" :: Maybe (String), "StackId" :: Maybe (String), "InstanceId" :: Maybe (String), "Type" :: Maybe (String), "Message" :: Maybe (String), "CreatedAt" :: Maybe (DateTime) }) -> ServiceError
```

Constructs ServiceError's fields from required parameters

#### `ServiceErrors`

``` purescript
newtype ServiceErrors
  = ServiceErrors (Array ServiceError)
```

##### Instances
``` purescript
Newtype ServiceErrors _
Generic ServiceErrors _
Show ServiceErrors
Decode ServiceErrors
Encode ServiceErrors
```

#### `SetLoadBasedAutoScalingRequest`

``` purescript
newtype SetLoadBasedAutoScalingRequest
  = SetLoadBasedAutoScalingRequest { "LayerId" :: String, "Enable" :: Maybe (Boolean), "UpScaling" :: Maybe (AutoScalingThresholds), "DownScaling" :: Maybe (AutoScalingThresholds) }
```

##### Instances
``` purescript
Newtype SetLoadBasedAutoScalingRequest _
Generic SetLoadBasedAutoScalingRequest _
Show SetLoadBasedAutoScalingRequest
Decode SetLoadBasedAutoScalingRequest
Encode SetLoadBasedAutoScalingRequest
```

#### `newSetLoadBasedAutoScalingRequest`

``` purescript
newSetLoadBasedAutoScalingRequest :: String -> SetLoadBasedAutoScalingRequest
```

Constructs SetLoadBasedAutoScalingRequest from required parameters

#### `newSetLoadBasedAutoScalingRequest'`

``` purescript
newSetLoadBasedAutoScalingRequest' :: String -> ({ "LayerId" :: String, "Enable" :: Maybe (Boolean), "UpScaling" :: Maybe (AutoScalingThresholds), "DownScaling" :: Maybe (AutoScalingThresholds) } -> { "LayerId" :: String, "Enable" :: Maybe (Boolean), "UpScaling" :: Maybe (AutoScalingThresholds), "DownScaling" :: Maybe (AutoScalingThresholds) }) -> SetLoadBasedAutoScalingRequest
```

Constructs SetLoadBasedAutoScalingRequest's fields from required parameters

#### `SetPermissionRequest`

``` purescript
newtype SetPermissionRequest
  = SetPermissionRequest { "StackId" :: String, "IamUserArn" :: String, "AllowSsh" :: Maybe (Boolean), "AllowSudo" :: Maybe (Boolean), "Level" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype SetPermissionRequest _
Generic SetPermissionRequest _
Show SetPermissionRequest
Decode SetPermissionRequest
Encode SetPermissionRequest
```

#### `newSetPermissionRequest`

``` purescript
newSetPermissionRequest :: String -> String -> SetPermissionRequest
```

Constructs SetPermissionRequest from required parameters

#### `newSetPermissionRequest'`

``` purescript
newSetPermissionRequest' :: String -> String -> ({ "StackId" :: String, "IamUserArn" :: String, "AllowSsh" :: Maybe (Boolean), "AllowSudo" :: Maybe (Boolean), "Level" :: Maybe (String) } -> { "StackId" :: String, "IamUserArn" :: String, "AllowSsh" :: Maybe (Boolean), "AllowSudo" :: Maybe (Boolean), "Level" :: Maybe (String) }) -> SetPermissionRequest
```

Constructs SetPermissionRequest's fields from required parameters

#### `SetTimeBasedAutoScalingRequest`

``` purescript
newtype SetTimeBasedAutoScalingRequest
  = SetTimeBasedAutoScalingRequest { "InstanceId" :: String, "AutoScalingSchedule" :: Maybe (WeeklyAutoScalingSchedule) }
```

##### Instances
``` purescript
Newtype SetTimeBasedAutoScalingRequest _
Generic SetTimeBasedAutoScalingRequest _
Show SetTimeBasedAutoScalingRequest
Decode SetTimeBasedAutoScalingRequest
Encode SetTimeBasedAutoScalingRequest
```

#### `newSetTimeBasedAutoScalingRequest`

``` purescript
newSetTimeBasedAutoScalingRequest :: String -> SetTimeBasedAutoScalingRequest
```

Constructs SetTimeBasedAutoScalingRequest from required parameters

#### `newSetTimeBasedAutoScalingRequest'`

``` purescript
newSetTimeBasedAutoScalingRequest' :: String -> ({ "InstanceId" :: String, "AutoScalingSchedule" :: Maybe (WeeklyAutoScalingSchedule) } -> { "InstanceId" :: String, "AutoScalingSchedule" :: Maybe (WeeklyAutoScalingSchedule) }) -> SetTimeBasedAutoScalingRequest
```

Constructs SetTimeBasedAutoScalingRequest's fields from required parameters

#### `ShutdownEventConfiguration`

``` purescript
newtype ShutdownEventConfiguration
  = ShutdownEventConfiguration { "ExecutionTimeout" :: Maybe (Int), "DelayUntilElbConnectionsDrained" :: Maybe (Boolean) }
```

<p>The Shutdown event configuration.</p>

##### Instances
``` purescript
Newtype ShutdownEventConfiguration _
Generic ShutdownEventConfiguration _
Show ShutdownEventConfiguration
Decode ShutdownEventConfiguration
Encode ShutdownEventConfiguration
```

#### `newShutdownEventConfiguration`

``` purescript
newShutdownEventConfiguration :: ShutdownEventConfiguration
```

Constructs ShutdownEventConfiguration from required parameters

#### `newShutdownEventConfiguration'`

``` purescript
newShutdownEventConfiguration' :: ({ "ExecutionTimeout" :: Maybe (Int), "DelayUntilElbConnectionsDrained" :: Maybe (Boolean) } -> { "ExecutionTimeout" :: Maybe (Int), "DelayUntilElbConnectionsDrained" :: Maybe (Boolean) }) -> ShutdownEventConfiguration
```

Constructs ShutdownEventConfiguration's fields from required parameters

#### `Source`

``` purescript
newtype Source
  = Source { "Type" :: Maybe (SourceType), "Url" :: Maybe (String), "Username" :: Maybe (String), "Password" :: Maybe (String), "SshKey" :: Maybe (String), "Revision" :: Maybe (String) }
```

<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a> or <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Custom Recipes and Cookbooks</a>.</p>

##### Instances
``` purescript
Newtype Source _
Generic Source _
Show Source
Decode Source
Encode Source
```

#### `newSource`

``` purescript
newSource :: Source
```

Constructs Source from required parameters

#### `newSource'`

``` purescript
newSource' :: ({ "Type" :: Maybe (SourceType), "Url" :: Maybe (String), "Username" :: Maybe (String), "Password" :: Maybe (String), "SshKey" :: Maybe (String), "Revision" :: Maybe (String) } -> { "Type" :: Maybe (SourceType), "Url" :: Maybe (String), "Username" :: Maybe (String), "Password" :: Maybe (String), "SshKey" :: Maybe (String), "Revision" :: Maybe (String) }) -> Source
```

Constructs Source's fields from required parameters

#### `SourceType`

``` purescript
newtype SourceType
  = SourceType String
```

##### Instances
``` purescript
Newtype SourceType _
Generic SourceType _
Show SourceType
Decode SourceType
Encode SourceType
```

#### `SslConfiguration`

``` purescript
newtype SslConfiguration
  = SslConfiguration { "Certificate" :: String, "PrivateKey" :: String, "Chain" :: Maybe (String) }
```

<p>Describes an app's SSL configuration.</p>

##### Instances
``` purescript
Newtype SslConfiguration _
Generic SslConfiguration _
Show SslConfiguration
Decode SslConfiguration
Encode SslConfiguration
```

#### `newSslConfiguration`

``` purescript
newSslConfiguration :: String -> String -> SslConfiguration
```

Constructs SslConfiguration from required parameters

#### `newSslConfiguration'`

``` purescript
newSslConfiguration' :: String -> String -> ({ "Certificate" :: String, "PrivateKey" :: String, "Chain" :: Maybe (String) } -> { "Certificate" :: String, "PrivateKey" :: String, "Chain" :: Maybe (String) }) -> SslConfiguration
```

Constructs SslConfiguration's fields from required parameters

#### `Stack`

``` purescript
newtype Stack
  = Stack { "StackId" :: Maybe (String), "Name" :: Maybe (String), "Arn" :: Maybe (String), "Region" :: Maybe (String), "VpcId" :: Maybe (String), "Attributes" :: Maybe (StackAttributes), "ServiceRoleArn" :: Maybe (String), "DefaultInstanceProfileArn" :: Maybe (String), "DefaultOs" :: Maybe (String), "HostnameTheme" :: Maybe (String), "DefaultAvailabilityZone" :: Maybe (String), "DefaultSubnetId" :: Maybe (String), "CustomJson" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager), "ChefConfiguration" :: Maybe (ChefConfiguration), "UseCustomCookbooks" :: Maybe (Boolean), "UseOpsworksSecurityGroups" :: Maybe (Boolean), "CustomCookbooksSource" :: Maybe (Source), "DefaultSshKeyName" :: Maybe (String), "CreatedAt" :: Maybe (DateTime), "DefaultRootDeviceType" :: Maybe (RootDeviceType), "AgentVersion" :: Maybe (String) }
```

<p>Describes a stack.</p>

##### Instances
``` purescript
Newtype Stack _
Generic Stack _
Show Stack
Decode Stack
Encode Stack
```

#### `newStack`

``` purescript
newStack :: Stack
```

Constructs Stack from required parameters

#### `newStack'`

``` purescript
newStack' :: ({ "StackId" :: Maybe (String), "Name" :: Maybe (String), "Arn" :: Maybe (String), "Region" :: Maybe (String), "VpcId" :: Maybe (String), "Attributes" :: Maybe (StackAttributes), "ServiceRoleArn" :: Maybe (String), "DefaultInstanceProfileArn" :: Maybe (String), "DefaultOs" :: Maybe (String), "HostnameTheme" :: Maybe (String), "DefaultAvailabilityZone" :: Maybe (String), "DefaultSubnetId" :: Maybe (String), "CustomJson" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager), "ChefConfiguration" :: Maybe (ChefConfiguration), "UseCustomCookbooks" :: Maybe (Boolean), "UseOpsworksSecurityGroups" :: Maybe (Boolean), "CustomCookbooksSource" :: Maybe (Source), "DefaultSshKeyName" :: Maybe (String), "CreatedAt" :: Maybe (DateTime), "DefaultRootDeviceType" :: Maybe (RootDeviceType), "AgentVersion" :: Maybe (String) } -> { "StackId" :: Maybe (String), "Name" :: Maybe (String), "Arn" :: Maybe (String), "Region" :: Maybe (String), "VpcId" :: Maybe (String), "Attributes" :: Maybe (StackAttributes), "ServiceRoleArn" :: Maybe (String), "DefaultInstanceProfileArn" :: Maybe (String), "DefaultOs" :: Maybe (String), "HostnameTheme" :: Maybe (String), "DefaultAvailabilityZone" :: Maybe (String), "DefaultSubnetId" :: Maybe (String), "CustomJson" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager), "ChefConfiguration" :: Maybe (ChefConfiguration), "UseCustomCookbooks" :: Maybe (Boolean), "UseOpsworksSecurityGroups" :: Maybe (Boolean), "CustomCookbooksSource" :: Maybe (Source), "DefaultSshKeyName" :: Maybe (String), "CreatedAt" :: Maybe (DateTime), "DefaultRootDeviceType" :: Maybe (RootDeviceType), "AgentVersion" :: Maybe (String) }) -> Stack
```

Constructs Stack's fields from required parameters

#### `StackAttributes`

``` purescript
newtype StackAttributes
  = StackAttributes (StrMap String)
```

##### Instances
``` purescript
Newtype StackAttributes _
Generic StackAttributes _
Show StackAttributes
Decode StackAttributes
Encode StackAttributes
```

#### `StackAttributesKeys`

``` purescript
newtype StackAttributesKeys
  = StackAttributesKeys String
```

##### Instances
``` purescript
Newtype StackAttributesKeys _
Generic StackAttributesKeys _
Show StackAttributesKeys
Decode StackAttributesKeys
Encode StackAttributesKeys
```

#### `StackConfigurationManager`

``` purescript
newtype StackConfigurationManager
  = StackConfigurationManager { "Name" :: Maybe (String), "Version" :: Maybe (String) }
```

<p>Describes the configuration manager.</p>

##### Instances
``` purescript
Newtype StackConfigurationManager _
Generic StackConfigurationManager _
Show StackConfigurationManager
Decode StackConfigurationManager
Encode StackConfigurationManager
```

#### `newStackConfigurationManager`

``` purescript
newStackConfigurationManager :: StackConfigurationManager
```

Constructs StackConfigurationManager from required parameters

#### `newStackConfigurationManager'`

``` purescript
newStackConfigurationManager' :: ({ "Name" :: Maybe (String), "Version" :: Maybe (String) } -> { "Name" :: Maybe (String), "Version" :: Maybe (String) }) -> StackConfigurationManager
```

Constructs StackConfigurationManager's fields from required parameters

#### `StackSummary`

``` purescript
newtype StackSummary
  = StackSummary { "StackId" :: Maybe (String), "Name" :: Maybe (String), "Arn" :: Maybe (String), "LayersCount" :: Maybe (Int), "AppsCount" :: Maybe (Int), "InstancesCount" :: Maybe (InstancesCount) }
```

<p>Summarizes the number of layers, instances, and apps in a stack.</p>

##### Instances
``` purescript
Newtype StackSummary _
Generic StackSummary _
Show StackSummary
Decode StackSummary
Encode StackSummary
```

#### `newStackSummary`

``` purescript
newStackSummary :: StackSummary
```

Constructs StackSummary from required parameters

#### `newStackSummary'`

``` purescript
newStackSummary' :: ({ "StackId" :: Maybe (String), "Name" :: Maybe (String), "Arn" :: Maybe (String), "LayersCount" :: Maybe (Int), "AppsCount" :: Maybe (Int), "InstancesCount" :: Maybe (InstancesCount) } -> { "StackId" :: Maybe (String), "Name" :: Maybe (String), "Arn" :: Maybe (String), "LayersCount" :: Maybe (Int), "AppsCount" :: Maybe (Int), "InstancesCount" :: Maybe (InstancesCount) }) -> StackSummary
```

Constructs StackSummary's fields from required parameters

#### `Stacks`

``` purescript
newtype Stacks
  = Stacks (Array Stack)
```

##### Instances
``` purescript
Newtype Stacks _
Generic Stacks _
Show Stacks
Decode Stacks
Encode Stacks
```

#### `StartInstanceRequest`

``` purescript
newtype StartInstanceRequest
  = StartInstanceRequest { "InstanceId" :: String }
```

##### Instances
``` purescript
Newtype StartInstanceRequest _
Generic StartInstanceRequest _
Show StartInstanceRequest
Decode StartInstanceRequest
Encode StartInstanceRequest
```

#### `newStartInstanceRequest`

``` purescript
newStartInstanceRequest :: String -> StartInstanceRequest
```

Constructs StartInstanceRequest from required parameters

#### `newStartInstanceRequest'`

``` purescript
newStartInstanceRequest' :: String -> ({ "InstanceId" :: String } -> { "InstanceId" :: String }) -> StartInstanceRequest
```

Constructs StartInstanceRequest's fields from required parameters

#### `StartStackRequest`

``` purescript
newtype StartStackRequest
  = StartStackRequest { "StackId" :: String }
```

##### Instances
``` purescript
Newtype StartStackRequest _
Generic StartStackRequest _
Show StartStackRequest
Decode StartStackRequest
Encode StartStackRequest
```

#### `newStartStackRequest`

``` purescript
newStartStackRequest :: String -> StartStackRequest
```

Constructs StartStackRequest from required parameters

#### `newStartStackRequest'`

``` purescript
newStartStackRequest' :: String -> ({ "StackId" :: String } -> { "StackId" :: String }) -> StartStackRequest
```

Constructs StartStackRequest's fields from required parameters

#### `StopInstanceRequest`

``` purescript
newtype StopInstanceRequest
  = StopInstanceRequest { "InstanceId" :: String, "Force" :: Maybe (Boolean) }
```

##### Instances
``` purescript
Newtype StopInstanceRequest _
Generic StopInstanceRequest _
Show StopInstanceRequest
Decode StopInstanceRequest
Encode StopInstanceRequest
```

#### `newStopInstanceRequest`

``` purescript
newStopInstanceRequest :: String -> StopInstanceRequest
```

Constructs StopInstanceRequest from required parameters

#### `newStopInstanceRequest'`

``` purescript
newStopInstanceRequest' :: String -> ({ "InstanceId" :: String, "Force" :: Maybe (Boolean) } -> { "InstanceId" :: String, "Force" :: Maybe (Boolean) }) -> StopInstanceRequest
```

Constructs StopInstanceRequest's fields from required parameters

#### `StopStackRequest`

``` purescript
newtype StopStackRequest
  = StopStackRequest { "StackId" :: String }
```

##### Instances
``` purescript
Newtype StopStackRequest _
Generic StopStackRequest _
Show StopStackRequest
Decode StopStackRequest
Encode StopStackRequest
```

#### `newStopStackRequest`

``` purescript
newStopStackRequest :: String -> StopStackRequest
```

Constructs StopStackRequest from required parameters

#### `newStopStackRequest'`

``` purescript
newStopStackRequest' :: String -> ({ "StackId" :: String } -> { "StackId" :: String }) -> StopStackRequest
```

Constructs StopStackRequest's fields from required parameters

#### `Strings`

``` purescript
newtype Strings
  = Strings (Array String)
```

##### Instances
``` purescript
Newtype Strings _
Generic Strings _
Show Strings
Decode Strings
Encode Strings
```

#### `Switch`

``` purescript
newtype Switch
  = Switch String
```

##### Instances
``` purescript
Newtype Switch _
Generic Switch _
Show Switch
Decode Switch
Encode Switch
```

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeys`

``` purescript
newtype TagKeys
  = TagKeys (Array TagKey)
```

##### Instances
``` purescript
Newtype TagKeys _
Generic TagKeys _
Show TagKeys
Decode TagKeys
Encode TagKeys
```

#### `TagResourceRequest`

``` purescript
newtype TagResourceRequest
  = TagResourceRequest { "ResourceArn" :: ResourceArn, "Tags" :: Tags }
```

##### Instances
``` purescript
Newtype TagResourceRequest _
Generic TagResourceRequest _
Show TagResourceRequest
Decode TagResourceRequest
Encode TagResourceRequest
```

#### `newTagResourceRequest`

``` purescript
newTagResourceRequest :: ResourceArn -> Tags -> TagResourceRequest
```

Constructs TagResourceRequest from required parameters

#### `newTagResourceRequest'`

``` purescript
newTagResourceRequest' :: ResourceArn -> Tags -> ({ "ResourceArn" :: ResourceArn, "Tags" :: Tags } -> { "ResourceArn" :: ResourceArn, "Tags" :: Tags }) -> TagResourceRequest
```

Constructs TagResourceRequest's fields from required parameters

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `Tags`

``` purescript
newtype Tags
  = Tags (StrMap TagValue)
```

##### Instances
``` purescript
Newtype Tags _
Generic Tags _
Show Tags
Decode Tags
Encode Tags
```

#### `TemporaryCredential`

``` purescript
newtype TemporaryCredential
  = TemporaryCredential { "Username" :: Maybe (String), "Password" :: Maybe (String), "ValidForInMinutes" :: Maybe (Int), "InstanceId" :: Maybe (String) }
```

<p>Contains the data needed by RDP clients such as the Microsoft Remote Desktop Connection to log in to the instance.</p>

##### Instances
``` purescript
Newtype TemporaryCredential _
Generic TemporaryCredential _
Show TemporaryCredential
Decode TemporaryCredential
Encode TemporaryCredential
```

#### `newTemporaryCredential`

``` purescript
newTemporaryCredential :: TemporaryCredential
```

Constructs TemporaryCredential from required parameters

#### `newTemporaryCredential'`

``` purescript
newTemporaryCredential' :: ({ "Username" :: Maybe (String), "Password" :: Maybe (String), "ValidForInMinutes" :: Maybe (Int), "InstanceId" :: Maybe (String) } -> { "Username" :: Maybe (String), "Password" :: Maybe (String), "ValidForInMinutes" :: Maybe (Int), "InstanceId" :: Maybe (String) }) -> TemporaryCredential
```

Constructs TemporaryCredential's fields from required parameters

#### `TimeBasedAutoScalingConfiguration`

``` purescript
newtype TimeBasedAutoScalingConfiguration
  = TimeBasedAutoScalingConfiguration { "InstanceId" :: Maybe (String), "AutoScalingSchedule" :: Maybe (WeeklyAutoScalingSchedule) }
```

<p>Describes an instance's time-based auto scaling configuration.</p>

##### Instances
``` purescript
Newtype TimeBasedAutoScalingConfiguration _
Generic TimeBasedAutoScalingConfiguration _
Show TimeBasedAutoScalingConfiguration
Decode TimeBasedAutoScalingConfiguration
Encode TimeBasedAutoScalingConfiguration
```

#### `newTimeBasedAutoScalingConfiguration`

``` purescript
newTimeBasedAutoScalingConfiguration :: TimeBasedAutoScalingConfiguration
```

Constructs TimeBasedAutoScalingConfiguration from required parameters

#### `newTimeBasedAutoScalingConfiguration'`

``` purescript
newTimeBasedAutoScalingConfiguration' :: ({ "InstanceId" :: Maybe (String), "AutoScalingSchedule" :: Maybe (WeeklyAutoScalingSchedule) } -> { "InstanceId" :: Maybe (String), "AutoScalingSchedule" :: Maybe (WeeklyAutoScalingSchedule) }) -> TimeBasedAutoScalingConfiguration
```

Constructs TimeBasedAutoScalingConfiguration's fields from required parameters

#### `TimeBasedAutoScalingConfigurations`

``` purescript
newtype TimeBasedAutoScalingConfigurations
  = TimeBasedAutoScalingConfigurations (Array TimeBasedAutoScalingConfiguration)
```

##### Instances
``` purescript
Newtype TimeBasedAutoScalingConfigurations _
Generic TimeBasedAutoScalingConfigurations _
Show TimeBasedAutoScalingConfigurations
Decode TimeBasedAutoScalingConfigurations
Encode TimeBasedAutoScalingConfigurations
```

#### `UnassignInstanceRequest`

``` purescript
newtype UnassignInstanceRequest
  = UnassignInstanceRequest { "InstanceId" :: String }
```

##### Instances
``` purescript
Newtype UnassignInstanceRequest _
Generic UnassignInstanceRequest _
Show UnassignInstanceRequest
Decode UnassignInstanceRequest
Encode UnassignInstanceRequest
```

#### `newUnassignInstanceRequest`

``` purescript
newUnassignInstanceRequest :: String -> UnassignInstanceRequest
```

Constructs UnassignInstanceRequest from required parameters

#### `newUnassignInstanceRequest'`

``` purescript
newUnassignInstanceRequest' :: String -> ({ "InstanceId" :: String } -> { "InstanceId" :: String }) -> UnassignInstanceRequest
```

Constructs UnassignInstanceRequest's fields from required parameters

#### `UnassignVolumeRequest`

``` purescript
newtype UnassignVolumeRequest
  = UnassignVolumeRequest { "VolumeId" :: String }
```

##### Instances
``` purescript
Newtype UnassignVolumeRequest _
Generic UnassignVolumeRequest _
Show UnassignVolumeRequest
Decode UnassignVolumeRequest
Encode UnassignVolumeRequest
```

#### `newUnassignVolumeRequest`

``` purescript
newUnassignVolumeRequest :: String -> UnassignVolumeRequest
```

Constructs UnassignVolumeRequest from required parameters

#### `newUnassignVolumeRequest'`

``` purescript
newUnassignVolumeRequest' :: String -> ({ "VolumeId" :: String } -> { "VolumeId" :: String }) -> UnassignVolumeRequest
```

Constructs UnassignVolumeRequest's fields from required parameters

#### `UntagResourceRequest`

``` purescript
newtype UntagResourceRequest
  = UntagResourceRequest { "ResourceArn" :: ResourceArn, "TagKeys" :: TagKeys }
```

##### Instances
``` purescript
Newtype UntagResourceRequest _
Generic UntagResourceRequest _
Show UntagResourceRequest
Decode UntagResourceRequest
Encode UntagResourceRequest
```

#### `newUntagResourceRequest`

``` purescript
newUntagResourceRequest :: ResourceArn -> TagKeys -> UntagResourceRequest
```

Constructs UntagResourceRequest from required parameters

#### `newUntagResourceRequest'`

``` purescript
newUntagResourceRequest' :: ResourceArn -> TagKeys -> ({ "ResourceArn" :: ResourceArn, "TagKeys" :: TagKeys } -> { "ResourceArn" :: ResourceArn, "TagKeys" :: TagKeys }) -> UntagResourceRequest
```

Constructs UntagResourceRequest's fields from required parameters

#### `UpdateAppRequest`

``` purescript
newtype UpdateAppRequest
  = UpdateAppRequest { "AppId" :: String, "Name" :: Maybe (String), "Description" :: Maybe (String), "DataSources" :: Maybe (DataSources), "Type" :: Maybe (AppType), "AppSource" :: Maybe (Source), "Domains" :: Maybe (Strings), "EnableSsl" :: Maybe (Boolean), "SslConfiguration" :: Maybe (SslConfiguration), "Attributes" :: Maybe (AppAttributes), "Environment" :: Maybe (EnvironmentVariables) }
```

##### Instances
``` purescript
Newtype UpdateAppRequest _
Generic UpdateAppRequest _
Show UpdateAppRequest
Decode UpdateAppRequest
Encode UpdateAppRequest
```

#### `newUpdateAppRequest`

``` purescript
newUpdateAppRequest :: String -> UpdateAppRequest
```

Constructs UpdateAppRequest from required parameters

#### `newUpdateAppRequest'`

``` purescript
newUpdateAppRequest' :: String -> ({ "AppId" :: String, "Name" :: Maybe (String), "Description" :: Maybe (String), "DataSources" :: Maybe (DataSources), "Type" :: Maybe (AppType), "AppSource" :: Maybe (Source), "Domains" :: Maybe (Strings), "EnableSsl" :: Maybe (Boolean), "SslConfiguration" :: Maybe (SslConfiguration), "Attributes" :: Maybe (AppAttributes), "Environment" :: Maybe (EnvironmentVariables) } -> { "AppId" :: String, "Name" :: Maybe (String), "Description" :: Maybe (String), "DataSources" :: Maybe (DataSources), "Type" :: Maybe (AppType), "AppSource" :: Maybe (Source), "Domains" :: Maybe (Strings), "EnableSsl" :: Maybe (Boolean), "SslConfiguration" :: Maybe (SslConfiguration), "Attributes" :: Maybe (AppAttributes), "Environment" :: Maybe (EnvironmentVariables) }) -> UpdateAppRequest
```

Constructs UpdateAppRequest's fields from required parameters

#### `UpdateElasticIpRequest`

``` purescript
newtype UpdateElasticIpRequest
  = UpdateElasticIpRequest { "ElasticIp" :: String, "Name" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype UpdateElasticIpRequest _
Generic UpdateElasticIpRequest _
Show UpdateElasticIpRequest
Decode UpdateElasticIpRequest
Encode UpdateElasticIpRequest
```

#### `newUpdateElasticIpRequest`

``` purescript
newUpdateElasticIpRequest :: String -> UpdateElasticIpRequest
```

Constructs UpdateElasticIpRequest from required parameters

#### `newUpdateElasticIpRequest'`

``` purescript
newUpdateElasticIpRequest' :: String -> ({ "ElasticIp" :: String, "Name" :: Maybe (String) } -> { "ElasticIp" :: String, "Name" :: Maybe (String) }) -> UpdateElasticIpRequest
```

Constructs UpdateElasticIpRequest's fields from required parameters

#### `UpdateInstanceRequest`

``` purescript
newtype UpdateInstanceRequest
  = UpdateInstanceRequest { "InstanceId" :: String, "LayerIds" :: Maybe (Strings), "InstanceType" :: Maybe (String), "AutoScalingType" :: Maybe (AutoScalingType), "Hostname" :: Maybe (String), "Os" :: Maybe (String), "AmiId" :: Maybe (String), "SshKeyName" :: Maybe (String), "Architecture" :: Maybe (Architecture), "InstallUpdatesOnBoot" :: Maybe (Boolean), "EbsOptimized" :: Maybe (Boolean), "AgentVersion" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype UpdateInstanceRequest _
Generic UpdateInstanceRequest _
Show UpdateInstanceRequest
Decode UpdateInstanceRequest
Encode UpdateInstanceRequest
```

#### `newUpdateInstanceRequest`

``` purescript
newUpdateInstanceRequest :: String -> UpdateInstanceRequest
```

Constructs UpdateInstanceRequest from required parameters

#### `newUpdateInstanceRequest'`

``` purescript
newUpdateInstanceRequest' :: String -> ({ "InstanceId" :: String, "LayerIds" :: Maybe (Strings), "InstanceType" :: Maybe (String), "AutoScalingType" :: Maybe (AutoScalingType), "Hostname" :: Maybe (String), "Os" :: Maybe (String), "AmiId" :: Maybe (String), "SshKeyName" :: Maybe (String), "Architecture" :: Maybe (Architecture), "InstallUpdatesOnBoot" :: Maybe (Boolean), "EbsOptimized" :: Maybe (Boolean), "AgentVersion" :: Maybe (String) } -> { "InstanceId" :: String, "LayerIds" :: Maybe (Strings), "InstanceType" :: Maybe (String), "AutoScalingType" :: Maybe (AutoScalingType), "Hostname" :: Maybe (String), "Os" :: Maybe (String), "AmiId" :: Maybe (String), "SshKeyName" :: Maybe (String), "Architecture" :: Maybe (Architecture), "InstallUpdatesOnBoot" :: Maybe (Boolean), "EbsOptimized" :: Maybe (Boolean), "AgentVersion" :: Maybe (String) }) -> UpdateInstanceRequest
```

Constructs UpdateInstanceRequest's fields from required parameters

#### `UpdateLayerRequest`

``` purescript
newtype UpdateLayerRequest
  = UpdateLayerRequest { "LayerId" :: String, "Name" :: Maybe (String), "Shortname" :: Maybe (String), "Attributes" :: Maybe (LayerAttributes), "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: Maybe (String), "CustomJson" :: Maybe (String), "CustomSecurityGroupIds" :: Maybe (Strings), "Packages" :: Maybe (Strings), "VolumeConfigurations" :: Maybe (VolumeConfigurations), "EnableAutoHealing" :: Maybe (Boolean), "AutoAssignElasticIps" :: Maybe (Boolean), "AutoAssignPublicIps" :: Maybe (Boolean), "CustomRecipes" :: Maybe (Recipes), "InstallUpdatesOnBoot" :: Maybe (Boolean), "UseEbsOptimizedInstances" :: Maybe (Boolean), "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) }
```

##### Instances
``` purescript
Newtype UpdateLayerRequest _
Generic UpdateLayerRequest _
Show UpdateLayerRequest
Decode UpdateLayerRequest
Encode UpdateLayerRequest
```

#### `newUpdateLayerRequest`

``` purescript
newUpdateLayerRequest :: String -> UpdateLayerRequest
```

Constructs UpdateLayerRequest from required parameters

#### `newUpdateLayerRequest'`

``` purescript
newUpdateLayerRequest' :: String -> ({ "LayerId" :: String, "Name" :: Maybe (String), "Shortname" :: Maybe (String), "Attributes" :: Maybe (LayerAttributes), "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: Maybe (String), "CustomJson" :: Maybe (String), "CustomSecurityGroupIds" :: Maybe (Strings), "Packages" :: Maybe (Strings), "VolumeConfigurations" :: Maybe (VolumeConfigurations), "EnableAutoHealing" :: Maybe (Boolean), "AutoAssignElasticIps" :: Maybe (Boolean), "AutoAssignPublicIps" :: Maybe (Boolean), "CustomRecipes" :: Maybe (Recipes), "InstallUpdatesOnBoot" :: Maybe (Boolean), "UseEbsOptimizedInstances" :: Maybe (Boolean), "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) } -> { "LayerId" :: String, "Name" :: Maybe (String), "Shortname" :: Maybe (String), "Attributes" :: Maybe (LayerAttributes), "CloudWatchLogsConfiguration" :: Maybe (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: Maybe (String), "CustomJson" :: Maybe (String), "CustomSecurityGroupIds" :: Maybe (Strings), "Packages" :: Maybe (Strings), "VolumeConfigurations" :: Maybe (VolumeConfigurations), "EnableAutoHealing" :: Maybe (Boolean), "AutoAssignElasticIps" :: Maybe (Boolean), "AutoAssignPublicIps" :: Maybe (Boolean), "CustomRecipes" :: Maybe (Recipes), "InstallUpdatesOnBoot" :: Maybe (Boolean), "UseEbsOptimizedInstances" :: Maybe (Boolean), "LifecycleEventConfiguration" :: Maybe (LifecycleEventConfiguration) }) -> UpdateLayerRequest
```

Constructs UpdateLayerRequest's fields from required parameters

#### `UpdateMyUserProfileRequest`

``` purescript
newtype UpdateMyUserProfileRequest
  = UpdateMyUserProfileRequest { "SshPublicKey" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype UpdateMyUserProfileRequest _
Generic UpdateMyUserProfileRequest _
Show UpdateMyUserProfileRequest
Decode UpdateMyUserProfileRequest
Encode UpdateMyUserProfileRequest
```

#### `newUpdateMyUserProfileRequest`

``` purescript
newUpdateMyUserProfileRequest :: UpdateMyUserProfileRequest
```

Constructs UpdateMyUserProfileRequest from required parameters

#### `newUpdateMyUserProfileRequest'`

``` purescript
newUpdateMyUserProfileRequest' :: ({ "SshPublicKey" :: Maybe (String) } -> { "SshPublicKey" :: Maybe (String) }) -> UpdateMyUserProfileRequest
```

Constructs UpdateMyUserProfileRequest's fields from required parameters

#### `UpdateRdsDbInstanceRequest`

``` purescript
newtype UpdateRdsDbInstanceRequest
  = UpdateRdsDbInstanceRequest { "RdsDbInstanceArn" :: String, "DbUser" :: Maybe (String), "DbPassword" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype UpdateRdsDbInstanceRequest _
Generic UpdateRdsDbInstanceRequest _
Show UpdateRdsDbInstanceRequest
Decode UpdateRdsDbInstanceRequest
Encode UpdateRdsDbInstanceRequest
```

#### `newUpdateRdsDbInstanceRequest`

``` purescript
newUpdateRdsDbInstanceRequest :: String -> UpdateRdsDbInstanceRequest
```

Constructs UpdateRdsDbInstanceRequest from required parameters

#### `newUpdateRdsDbInstanceRequest'`

``` purescript
newUpdateRdsDbInstanceRequest' :: String -> ({ "RdsDbInstanceArn" :: String, "DbUser" :: Maybe (String), "DbPassword" :: Maybe (String) } -> { "RdsDbInstanceArn" :: String, "DbUser" :: Maybe (String), "DbPassword" :: Maybe (String) }) -> UpdateRdsDbInstanceRequest
```

Constructs UpdateRdsDbInstanceRequest's fields from required parameters

#### `UpdateStackRequest`

``` purescript
newtype UpdateStackRequest
  = UpdateStackRequest { "StackId" :: String, "Name" :: Maybe (String), "Attributes" :: Maybe (StackAttributes), "ServiceRoleArn" :: Maybe (String), "DefaultInstanceProfileArn" :: Maybe (String), "DefaultOs" :: Maybe (String), "HostnameTheme" :: Maybe (String), "DefaultAvailabilityZone" :: Maybe (String), "DefaultSubnetId" :: Maybe (String), "CustomJson" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager), "ChefConfiguration" :: Maybe (ChefConfiguration), "UseCustomCookbooks" :: Maybe (Boolean), "CustomCookbooksSource" :: Maybe (Source), "DefaultSshKeyName" :: Maybe (String), "DefaultRootDeviceType" :: Maybe (RootDeviceType), "UseOpsworksSecurityGroups" :: Maybe (Boolean), "AgentVersion" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype UpdateStackRequest _
Generic UpdateStackRequest _
Show UpdateStackRequest
Decode UpdateStackRequest
Encode UpdateStackRequest
```

#### `newUpdateStackRequest`

``` purescript
newUpdateStackRequest :: String -> UpdateStackRequest
```

Constructs UpdateStackRequest from required parameters

#### `newUpdateStackRequest'`

``` purescript
newUpdateStackRequest' :: String -> ({ "StackId" :: String, "Name" :: Maybe (String), "Attributes" :: Maybe (StackAttributes), "ServiceRoleArn" :: Maybe (String), "DefaultInstanceProfileArn" :: Maybe (String), "DefaultOs" :: Maybe (String), "HostnameTheme" :: Maybe (String), "DefaultAvailabilityZone" :: Maybe (String), "DefaultSubnetId" :: Maybe (String), "CustomJson" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager), "ChefConfiguration" :: Maybe (ChefConfiguration), "UseCustomCookbooks" :: Maybe (Boolean), "CustomCookbooksSource" :: Maybe (Source), "DefaultSshKeyName" :: Maybe (String), "DefaultRootDeviceType" :: Maybe (RootDeviceType), "UseOpsworksSecurityGroups" :: Maybe (Boolean), "AgentVersion" :: Maybe (String) } -> { "StackId" :: String, "Name" :: Maybe (String), "Attributes" :: Maybe (StackAttributes), "ServiceRoleArn" :: Maybe (String), "DefaultInstanceProfileArn" :: Maybe (String), "DefaultOs" :: Maybe (String), "HostnameTheme" :: Maybe (String), "DefaultAvailabilityZone" :: Maybe (String), "DefaultSubnetId" :: Maybe (String), "CustomJson" :: Maybe (String), "ConfigurationManager" :: Maybe (StackConfigurationManager), "ChefConfiguration" :: Maybe (ChefConfiguration), "UseCustomCookbooks" :: Maybe (Boolean), "CustomCookbooksSource" :: Maybe (Source), "DefaultSshKeyName" :: Maybe (String), "DefaultRootDeviceType" :: Maybe (RootDeviceType), "UseOpsworksSecurityGroups" :: Maybe (Boolean), "AgentVersion" :: Maybe (String) }) -> UpdateStackRequest
```

Constructs UpdateStackRequest's fields from required parameters

#### `UpdateUserProfileRequest`

``` purescript
newtype UpdateUserProfileRequest
  = UpdateUserProfileRequest { "IamUserArn" :: String, "SshUsername" :: Maybe (String), "SshPublicKey" :: Maybe (String), "AllowSelfManagement" :: Maybe (Boolean) }
```

##### Instances
``` purescript
Newtype UpdateUserProfileRequest _
Generic UpdateUserProfileRequest _
Show UpdateUserProfileRequest
Decode UpdateUserProfileRequest
Encode UpdateUserProfileRequest
```

#### `newUpdateUserProfileRequest`

``` purescript
newUpdateUserProfileRequest :: String -> UpdateUserProfileRequest
```

Constructs UpdateUserProfileRequest from required parameters

#### `newUpdateUserProfileRequest'`

``` purescript
newUpdateUserProfileRequest' :: String -> ({ "IamUserArn" :: String, "SshUsername" :: Maybe (String), "SshPublicKey" :: Maybe (String), "AllowSelfManagement" :: Maybe (Boolean) } -> { "IamUserArn" :: String, "SshUsername" :: Maybe (String), "SshPublicKey" :: Maybe (String), "AllowSelfManagement" :: Maybe (Boolean) }) -> UpdateUserProfileRequest
```

Constructs UpdateUserProfileRequest's fields from required parameters

#### `UpdateVolumeRequest`

``` purescript
newtype UpdateVolumeRequest
  = UpdateVolumeRequest { "VolumeId" :: String, "Name" :: Maybe (String), "MountPoint" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype UpdateVolumeRequest _
Generic UpdateVolumeRequest _
Show UpdateVolumeRequest
Decode UpdateVolumeRequest
Encode UpdateVolumeRequest
```

#### `newUpdateVolumeRequest`

``` purescript
newUpdateVolumeRequest :: String -> UpdateVolumeRequest
```

Constructs UpdateVolumeRequest from required parameters

#### `newUpdateVolumeRequest'`

``` purescript
newUpdateVolumeRequest' :: String -> ({ "VolumeId" :: String, "Name" :: Maybe (String), "MountPoint" :: Maybe (String) } -> { "VolumeId" :: String, "Name" :: Maybe (String), "MountPoint" :: Maybe (String) }) -> UpdateVolumeRequest
```

Constructs UpdateVolumeRequest's fields from required parameters

#### `UserProfile`

``` purescript
newtype UserProfile
  = UserProfile { "IamUserArn" :: Maybe (String), "Name" :: Maybe (String), "SshUsername" :: Maybe (String), "SshPublicKey" :: Maybe (String), "AllowSelfManagement" :: Maybe (Boolean) }
```

<p>Describes a user's SSH information.</p>

##### Instances
``` purescript
Newtype UserProfile _
Generic UserProfile _
Show UserProfile
Decode UserProfile
Encode UserProfile
```

#### `newUserProfile`

``` purescript
newUserProfile :: UserProfile
```

Constructs UserProfile from required parameters

#### `newUserProfile'`

``` purescript
newUserProfile' :: ({ "IamUserArn" :: Maybe (String), "Name" :: Maybe (String), "SshUsername" :: Maybe (String), "SshPublicKey" :: Maybe (String), "AllowSelfManagement" :: Maybe (Boolean) } -> { "IamUserArn" :: Maybe (String), "Name" :: Maybe (String), "SshUsername" :: Maybe (String), "SshPublicKey" :: Maybe (String), "AllowSelfManagement" :: Maybe (Boolean) }) -> UserProfile
```

Constructs UserProfile's fields from required parameters

#### `UserProfiles`

``` purescript
newtype UserProfiles
  = UserProfiles (Array UserProfile)
```

##### Instances
``` purescript
Newtype UserProfiles _
Generic UserProfiles _
Show UserProfiles
Decode UserProfiles
Encode UserProfiles
```

#### `ValidForInMinutes`

``` purescript
newtype ValidForInMinutes
  = ValidForInMinutes Int
```

##### Instances
``` purescript
Newtype ValidForInMinutes _
Generic ValidForInMinutes _
Show ValidForInMinutes
Decode ValidForInMinutes
Encode ValidForInMinutes
```

#### `ValidationException`

``` purescript
newtype ValidationException
  = ValidationException { message :: Maybe (String) }
```

<p>Indicates that a request was not valid.</p>

##### Instances
``` purescript
Newtype ValidationException _
Generic ValidationException _
Show ValidationException
Decode ValidationException
Encode ValidationException
```

#### `newValidationException`

``` purescript
newValidationException :: ValidationException
```

Constructs ValidationException from required parameters

#### `newValidationException'`

``` purescript
newValidationException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> ValidationException
```

Constructs ValidationException's fields from required parameters

#### `VirtualizationType`

``` purescript
newtype VirtualizationType
  = VirtualizationType String
```

##### Instances
``` purescript
Newtype VirtualizationType _
Generic VirtualizationType _
Show VirtualizationType
Decode VirtualizationType
Encode VirtualizationType
```

#### `Volume`

``` purescript
newtype Volume
  = Volume { "VolumeId" :: Maybe (String), "Ec2VolumeId" :: Maybe (String), "Name" :: Maybe (String), "RaidArrayId" :: Maybe (String), "InstanceId" :: Maybe (String), "Status" :: Maybe (String), "Size" :: Maybe (Int), "Device" :: Maybe (String), "MountPoint" :: Maybe (String), "Region" :: Maybe (String), "AvailabilityZone" :: Maybe (String), "VolumeType" :: Maybe (String), "Iops" :: Maybe (Int), "Encrypted" :: Maybe (Boolean) }
```

<p>Describes an instance's Amazon EBS volume.</p>

##### Instances
``` purescript
Newtype Volume _
Generic Volume _
Show Volume
Decode Volume
Encode Volume
```

#### `newVolume`

``` purescript
newVolume :: Volume
```

Constructs Volume from required parameters

#### `newVolume'`

``` purescript
newVolume' :: ({ "VolumeId" :: Maybe (String), "Ec2VolumeId" :: Maybe (String), "Name" :: Maybe (String), "RaidArrayId" :: Maybe (String), "InstanceId" :: Maybe (String), "Status" :: Maybe (String), "Size" :: Maybe (Int), "Device" :: Maybe (String), "MountPoint" :: Maybe (String), "Region" :: Maybe (String), "AvailabilityZone" :: Maybe (String), "VolumeType" :: Maybe (String), "Iops" :: Maybe (Int), "Encrypted" :: Maybe (Boolean) } -> { "VolumeId" :: Maybe (String), "Ec2VolumeId" :: Maybe (String), "Name" :: Maybe (String), "RaidArrayId" :: Maybe (String), "InstanceId" :: Maybe (String), "Status" :: Maybe (String), "Size" :: Maybe (Int), "Device" :: Maybe (String), "MountPoint" :: Maybe (String), "Region" :: Maybe (String), "AvailabilityZone" :: Maybe (String), "VolumeType" :: Maybe (String), "Iops" :: Maybe (Int), "Encrypted" :: Maybe (Boolean) }) -> Volume
```

Constructs Volume's fields from required parameters

#### `VolumeConfiguration`

``` purescript
newtype VolumeConfiguration
  = VolumeConfiguration { "MountPoint" :: String, "RaidLevel" :: Maybe (Int), "NumberOfDisks" :: Int, "Size" :: Int, "VolumeType" :: Maybe (String), "Iops" :: Maybe (Int), "Encrypted" :: Maybe (Boolean) }
```

<p>Describes an Amazon EBS volume configuration.</p>

##### Instances
``` purescript
Newtype VolumeConfiguration _
Generic VolumeConfiguration _
Show VolumeConfiguration
Decode VolumeConfiguration
Encode VolumeConfiguration
```

#### `newVolumeConfiguration`

``` purescript
newVolumeConfiguration :: String -> Int -> Int -> VolumeConfiguration
```

Constructs VolumeConfiguration from required parameters

#### `newVolumeConfiguration'`

``` purescript
newVolumeConfiguration' :: String -> Int -> Int -> ({ "MountPoint" :: String, "RaidLevel" :: Maybe (Int), "NumberOfDisks" :: Int, "Size" :: Int, "VolumeType" :: Maybe (String), "Iops" :: Maybe (Int), "Encrypted" :: Maybe (Boolean) } -> { "MountPoint" :: String, "RaidLevel" :: Maybe (Int), "NumberOfDisks" :: Int, "Size" :: Int, "VolumeType" :: Maybe (String), "Iops" :: Maybe (Int), "Encrypted" :: Maybe (Boolean) }) -> VolumeConfiguration
```

Constructs VolumeConfiguration's fields from required parameters

#### `VolumeConfigurations`

``` purescript
newtype VolumeConfigurations
  = VolumeConfigurations (Array VolumeConfiguration)
```

##### Instances
``` purescript
Newtype VolumeConfigurations _
Generic VolumeConfigurations _
Show VolumeConfigurations
Decode VolumeConfigurations
Encode VolumeConfigurations
```

#### `VolumeType`

``` purescript
newtype VolumeType
  = VolumeType String
```

##### Instances
``` purescript
Newtype VolumeType _
Generic VolumeType _
Show VolumeType
Decode VolumeType
Encode VolumeType
```

#### `Volumes`

``` purescript
newtype Volumes
  = Volumes (Array Volume)
```

##### Instances
``` purescript
Newtype Volumes _
Generic Volumes _
Show Volumes
Decode Volumes
Encode Volumes
```

#### `WeeklyAutoScalingSchedule`

``` purescript
newtype WeeklyAutoScalingSchedule
  = WeeklyAutoScalingSchedule { "Monday" :: Maybe (DailyAutoScalingSchedule), "Tuesday" :: Maybe (DailyAutoScalingSchedule), "Wednesday" :: Maybe (DailyAutoScalingSchedule), "Thursday" :: Maybe (DailyAutoScalingSchedule), "Friday" :: Maybe (DailyAutoScalingSchedule), "Saturday" :: Maybe (DailyAutoScalingSchedule), "Sunday" :: Maybe (DailyAutoScalingSchedule) }
```

<p>Describes a time-based instance's auto scaling schedule. The schedule consists of a set of key-value pairs.</p> <ul> <li> <p>The key is the time period (a UTC hour) and must be an integer from 0 - 23.</p> </li> <li> <p>The value indicates whether the instance should be online or offline for the specified period, and must be set to "on" or "off"</p> </li> </ul> <p>The default setting for all time periods is off, so you use the following parameters primarily to specify the online periods. You don't have to explicitly specify offline periods unless you want to change an online period to an offline period.</p> <p>The following example specifies that the instance should be online for four hours, from UTC 1200 - 1600. It will be off for the remainder of the day.</p> <p> <code> { "12":"on", "13":"on", "14":"on", "15":"on" } </code> </p>

##### Instances
``` purescript
Newtype WeeklyAutoScalingSchedule _
Generic WeeklyAutoScalingSchedule _
Show WeeklyAutoScalingSchedule
Decode WeeklyAutoScalingSchedule
Encode WeeklyAutoScalingSchedule
```

#### `newWeeklyAutoScalingSchedule`

``` purescript
newWeeklyAutoScalingSchedule :: WeeklyAutoScalingSchedule
```

Constructs WeeklyAutoScalingSchedule from required parameters

#### `newWeeklyAutoScalingSchedule'`

``` purescript
newWeeklyAutoScalingSchedule' :: ({ "Monday" :: Maybe (DailyAutoScalingSchedule), "Tuesday" :: Maybe (DailyAutoScalingSchedule), "Wednesday" :: Maybe (DailyAutoScalingSchedule), "Thursday" :: Maybe (DailyAutoScalingSchedule), "Friday" :: Maybe (DailyAutoScalingSchedule), "Saturday" :: Maybe (DailyAutoScalingSchedule), "Sunday" :: Maybe (DailyAutoScalingSchedule) } -> { "Monday" :: Maybe (DailyAutoScalingSchedule), "Tuesday" :: Maybe (DailyAutoScalingSchedule), "Wednesday" :: Maybe (DailyAutoScalingSchedule), "Thursday" :: Maybe (DailyAutoScalingSchedule), "Friday" :: Maybe (DailyAutoScalingSchedule), "Saturday" :: Maybe (DailyAutoScalingSchedule), "Sunday" :: Maybe (DailyAutoScalingSchedule) }) -> WeeklyAutoScalingSchedule
```

Constructs WeeklyAutoScalingSchedule's fields from required parameters


