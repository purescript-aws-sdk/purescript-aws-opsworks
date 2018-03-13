## Module AWS.OpsWorks

<fullname>AWS OpsWorks</fullname> <p>Welcome to the <i>AWS OpsWorks Stacks API Reference</i>. This guide provides descriptions, syntax, and usage examples for AWS OpsWorks Stacks actions and data types, including common parameters and error codes. </p> <p>AWS OpsWorks Stacks is an application management service that provides an integrated experience for overseeing the complete application lifecycle. For information about this product, go to the <a href="http://aws.amazon.com/opsworks/">AWS OpsWorks</a> details page. </p> <p> <b>SDKs and CLI</b> </p> <p>The most common way to use the AWS OpsWorks Stacks API is by using the AWS Command Line Interface (CLI) or by using one of the AWS SDKs to implement applications in your preferred language. For more information, see:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html">AWS CLI</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html">AWS SDK for Java</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm">AWS SDK for .NET</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html">AWS SDK for PHP 2</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/sdkforruby/api/">AWS SDK for Ruby</a> </p> </li> <li> <p> <a href="http://aws.amazon.com/documentation/sdkforjavascript/">AWS SDK for Node.js</a> </p> </li> <li> <p> <a href="http://docs.pythonboto.org/en/latest/ref/opsworks.html">AWS SDK for Python(Boto)</a> </p> </li> </ul> <p> <b>Endpoints</b> </p> <p>AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Stacks can only be accessed or managed within the endpoint in which they are created.</p> <ul> <li> <p>opsworks.us-east-1.amazonaws.com</p> </li> <li> <p>opsworks.us-east-2.amazonaws.com</p> </li> <li> <p>opsworks.us-west-1.amazonaws.com</p> </li> <li> <p>opsworks.us-west-2.amazonaws.com</p> </li> <li> <p>opsworks.ca-central-1.amazonaws.com (API only; not available in the AWS console)</p> </li> <li> <p>opsworks.eu-west-1.amazonaws.com</p> </li> <li> <p>opsworks.eu-west-2.amazonaws.com</p> </li> <li> <p>opsworks.eu-west-3.amazonaws.com</p> </li> <li> <p>opsworks.eu-central-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-northeast-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-northeast-2.amazonaws.com</p> </li> <li> <p>opsworks.ap-south-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-southeast-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-southeast-2.amazonaws.com</p> </li> <li> <p>opsworks.sa-east-1.amazonaws.com</p> </li> </ul> <p> <b>Chef Versions</b> </p> <p>When you call <a>CreateStack</a>, <a>CloneStack</a>, or <a>UpdateStack</a> we recommend you use the <code>ConfigurationManager</code> parameter to specify the Chef version. The recommended and default value for Linux stacks is currently 12. Windows stacks use Chef 12.2. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html">Chef Versions</a>.</p> <note> <p>You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We recommend migrating your existing Linux stacks to Chef 12 as soon as possible.</p> </note>

#### `assignInstance`

``` purescript
assignInstance :: forall eff. AssignInstanceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Assign a registered instance to a layer.</p> <ul> <li> <p>You can assign registered on-premises instances to any layer type.</p> </li> <li> <p>You can assign registered Amazon EC2 instances only to custom layers.</p> </li> <li> <p>You cannot use this action with instances that were created with AWS OpsWorks Stacks.</p> </li> </ul> <p> <b>Required Permissions</b>: To use this action, an AWS Identity and Access Management (IAM) user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `assignVolume`

``` purescript
assignVolume :: forall eff. AssignVolumeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Assigns one of the stack's registered Amazon EBS volumes to a specified instance. The volume must first be registered with the stack by calling <a>RegisterVolume</a>. After you register the volume, you must call <a>UpdateVolume</a> to specify a mount point before calling <code>AssignVolume</code>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `associateElasticIp`

``` purescript
associateElasticIp :: forall eff. AssociateElasticIpRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Associates one of the stack's registered Elastic IP addresses with a specified instance. The address must first be registered with the stack by calling <a>RegisterElasticIp</a>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `attachElasticLoadBalancer`

``` purescript
attachElasticLoadBalancer :: forall eff. AttachElasticLoadBalancerRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Attaches an Elastic Load Balancing load balancer to a specified layer. AWS OpsWorks Stacks does not support Application Load Balancer. You can only use Classic Load Balancer with AWS OpsWorks Stacks. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html">Elastic Load Balancing</a>.</p> <note> <p>You must create the Elastic Load Balancing instance separately, by using the Elastic Load Balancing console, API, or CLI. For more information, see <a href="http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html"> Elastic Load Balancing Developer Guide</a>.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `cloneStack`

``` purescript
cloneStack :: forall eff. CloneStackRequest -> Aff (exception :: EXCEPTION | eff) CloneStackResult
```

<p>Creates a clone of a specified stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html">Clone a Stack</a>. By default, all parameters are set to the values used by the parent stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `createApp`

``` purescript
createApp :: forall eff. CreateAppRequest -> Aff (exception :: EXCEPTION | eff) CreateAppResult
```

<p>Creates an app for a specified stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `createDeployment`

``` purescript
createDeployment :: forall eff. CreateDeploymentRequest -> Aff (exception :: EXCEPTION | eff) CreateDeploymentResult
```

<p>Runs deployment or stack commands. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html">Deploying Apps</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html">Run Stack Commands</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `createInstance`

``` purescript
createInstance :: forall eff. CreateInstanceRequest -> Aff (exception :: EXCEPTION | eff) CreateInstanceResult
```

<p>Creates an instance in a specified stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">Adding an Instance to a Layer</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `createLayer`

``` purescript
createLayer :: forall eff. CreateLayerRequest -> Aff (exception :: EXCEPTION | eff) CreateLayerResult
```

<p>Creates a layer. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html">How to Create a Layer</a>.</p> <note> <p>You should use <b>CreateLayer</b> for noncustom layer types such as PHP App Server only if the stack does not have an existing layer of that type. A stack can have at most one instance of each noncustom layer; if you attempt to create a second instance, <b>CreateLayer</b> fails. A stack can have an arbitrary number of custom layers, so you can call <b>CreateLayer</b> as many times as you like for that layer type.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `createStack`

``` purescript
createStack :: forall eff. CreateStackRequest -> Aff (exception :: EXCEPTION | eff) CreateStackResult
```

<p>Creates a new stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html">Create a New Stack</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `createUserProfile`

``` purescript
createUserProfile :: forall eff. CreateUserProfileRequest -> Aff (exception :: EXCEPTION | eff) CreateUserProfileResult
```

<p>Creates a new user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `deleteApp`

``` purescript
deleteApp :: forall eff. DeleteAppRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a specified app.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `deleteInstance`

``` purescript
deleteInstance :: forall eff. DeleteInstanceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a specified instance, which terminates the associated Amazon EC2 instance. You must stop an instance before you can delete it.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html">Deleting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `deleteLayer`

``` purescript
deleteLayer :: forall eff. DeleteLayerRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a specified layer. You must first stop and then delete all associated instances or unassign registered instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html">How to Delete a Layer</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `deleteStack`

``` purescript
deleteStack :: forall eff. DeleteStackRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a specified stack. You must first delete all instances, layers, and apps or deregister registered instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html">Shut Down a Stack</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `deleteUserProfile`

``` purescript
deleteUserProfile :: forall eff. DeleteUserProfileRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `deregisterEcsCluster`

``` purescript
deregisterEcsCluster :: forall eff. DeregisterEcsClusterRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deregisters a specified Amazon ECS cluster from a stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete"> Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html</a>.</p>

#### `deregisterElasticIp`

``` purescript
deregisterElasticIp :: forall eff. DeregisterElasticIpRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deregisters a specified Elastic IP address. The address can then be registered by another stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `deregisterInstance`

``` purescript
deregisterInstance :: forall eff. DeregisterInstanceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deregister a registered Amazon EC2 or on-premises instance. This action removes the instance from the stack and returns it to your control. This action can not be used with instances that were created with AWS OpsWorks Stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `deregisterRdsDbInstance`

``` purescript
deregisterRdsDbInstance :: forall eff. DeregisterRdsDbInstanceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deregisters an Amazon RDS instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `deregisterVolume`

``` purescript
deregisterVolume :: forall eff. DeregisterVolumeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deregisters an Amazon EBS volume. The volume can then be registered by another stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeAgentVersions`

``` purescript
describeAgentVersions :: forall eff. DescribeAgentVersionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeAgentVersionsResult
```

<p>Describes the available AWS OpsWorks Stacks agent versions. You must specify a stack ID or a configuration manager. <code>DescribeAgentVersions</code> returns a list of available agent versions for the specified stack or configuration manager.</p>

#### `describeApps`

``` purescript
describeApps :: forall eff. DescribeAppsRequest -> Aff (exception :: EXCEPTION | eff) DescribeAppsResult
```

<p>Requests a description of a specified set of apps.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeCommands`

``` purescript
describeCommands :: forall eff. DescribeCommandsRequest -> Aff (exception :: EXCEPTION | eff) DescribeCommandsResult
```

<p>Describes the results of specified commands.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeDeployments`

``` purescript
describeDeployments :: forall eff. DescribeDeploymentsRequest -> Aff (exception :: EXCEPTION | eff) DescribeDeploymentsResult
```

<p>Requests a description of a specified set of deployments.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeEcsClusters`

``` purescript
describeEcsClusters :: forall eff. DescribeEcsClustersRequest -> Aff (exception :: EXCEPTION | eff) DescribeEcsClustersResult
```

<p>Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID, you can use the <code>MaxResults</code> and <code>NextToken</code> parameters to paginate the response. However, AWS OpsWorks Stacks currently supports only one cluster per layer, so the result set has a maximum of one element.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permission. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>

#### `describeElasticIps`

``` purescript
describeElasticIps :: forall eff. DescribeElasticIpsRequest -> Aff (exception :: EXCEPTION | eff) DescribeElasticIpsResult
```

<p>Describes <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP addresses</a>.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeElasticLoadBalancers`

``` purescript
describeElasticLoadBalancers :: forall eff. DescribeElasticLoadBalancersRequest -> Aff (exception :: EXCEPTION | eff) DescribeElasticLoadBalancersResult
```

<p>Describes a stack's Elastic Load Balancing instances.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeInstances`

``` purescript
describeInstances :: forall eff. DescribeInstancesRequest -> Aff (exception :: EXCEPTION | eff) DescribeInstancesResult
```

<p>Requests a description of a set of instances.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeLayers`

``` purescript
describeLayers :: forall eff. DescribeLayersRequest -> Aff (exception :: EXCEPTION | eff) DescribeLayersResult
```

<p>Requests a description of one or more layers in a specified stack.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeLoadBasedAutoScaling`

``` purescript
describeLoadBasedAutoScaling :: forall eff. DescribeLoadBasedAutoScalingRequest -> Aff (exception :: EXCEPTION | eff) DescribeLoadBasedAutoScalingResult
```

<p>Describes load-based auto scaling configurations for specified layers.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeMyUserProfile`

``` purescript
describeMyUserProfile :: forall eff. Aff (exception :: EXCEPTION | eff) DescribeMyUserProfileResult
```

<p>Describes a user's SSH information.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeOperatingSystems`

``` purescript
describeOperatingSystems :: forall eff. Aff (exception :: EXCEPTION | eff) DescribeOperatingSystemsResponse
```

<p>Describes the operating systems that are supported by AWS OpsWorks Stacks.</p>

#### `describePermissions`

``` purescript
describePermissions :: forall eff. DescribePermissionsRequest -> Aff (exception :: EXCEPTION | eff) DescribePermissionsResult
```

<p>Describes the permissions for a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeRaidArrays`

``` purescript
describeRaidArrays :: forall eff. DescribeRaidArraysRequest -> Aff (exception :: EXCEPTION | eff) DescribeRaidArraysResult
```

<p>Describe an instance's RAID arrays.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeRdsDbInstances`

``` purescript
describeRdsDbInstances :: forall eff. DescribeRdsDbInstancesRequest -> Aff (exception :: EXCEPTION | eff) DescribeRdsDbInstancesResult
```

<p>Describes Amazon RDS instances.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>

#### `describeServiceErrors`

``` purescript
describeServiceErrors :: forall eff. DescribeServiceErrorsRequest -> Aff (exception :: EXCEPTION | eff) DescribeServiceErrorsResult
```

<p>Describes AWS OpsWorks Stacks service errors.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>

#### `describeStackProvisioningParameters`

``` purescript
describeStackProvisioningParameters :: forall eff. DescribeStackProvisioningParametersRequest -> Aff (exception :: EXCEPTION | eff) DescribeStackProvisioningParametersResult
```

<p>Requests a description of a stack's provisioning parameters.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeStackSummary`

``` purescript
describeStackSummary :: forall eff. DescribeStackSummaryRequest -> Aff (exception :: EXCEPTION | eff) DescribeStackSummaryResult
```

<p>Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as <code>running_setup</code> or <code>online</code>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeStacks`

``` purescript
describeStacks :: forall eff. DescribeStacksRequest -> Aff (exception :: EXCEPTION | eff) DescribeStacksResult
```

<p>Requests a description of one or more stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeTimeBasedAutoScaling`

``` purescript
describeTimeBasedAutoScaling :: forall eff. DescribeTimeBasedAutoScalingRequest -> Aff (exception :: EXCEPTION | eff) DescribeTimeBasedAutoScalingResult
```

<p>Describes time-based auto scaling configurations for specified instances.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeUserProfiles`

``` purescript
describeUserProfiles :: forall eff. DescribeUserProfilesRequest -> Aff (exception :: EXCEPTION | eff) DescribeUserProfilesResult
```

<p>Describe specified users.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `describeVolumes`

``` purescript
describeVolumes :: forall eff. DescribeVolumesRequest -> Aff (exception :: EXCEPTION | eff) DescribeVolumesResult
```

<p>Describes an instance's Amazon EBS volumes.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `detachElasticLoadBalancer`

``` purescript
detachElasticLoadBalancer :: forall eff. DetachElasticLoadBalancerRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Detaches a specified Elastic Load Balancing instance from its layer.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `disassociateElasticIp`

``` purescript
disassociateElasticIp :: forall eff. DisassociateElasticIpRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Disassociates an Elastic IP address from its instance. The address remains registered with the stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `getHostnameSuggestion`

``` purescript
getHostnameSuggestion :: forall eff. GetHostnameSuggestionRequest -> Aff (exception :: EXCEPTION | eff) GetHostnameSuggestionResult
```

<p>Gets a generated host name for the specified layer, based on the current host name theme.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `grantAccess`

``` purescript
grantAccess :: forall eff. GrantAccessRequest -> Aff (exception :: EXCEPTION | eff) GrantAccessResult
```

<note> <p>This action can be used only with Windows stacks.</p> </note> <p>Grants RDP access to a Windows instance for a specified time period.</p>

#### `listTags`

``` purescript
listTags :: forall eff. ListTagsRequest -> Aff (exception :: EXCEPTION | eff) ListTagsResult
```

<p>Returns a list of tags that are applied to the specified stack or layer.</p>

#### `rebootInstance`

``` purescript
rebootInstance :: forall eff. RebootInstanceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Reboots a specified instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `registerEcsCluster`

``` purescript
registerEcsCluster :: forall eff. RegisterEcsClusterRequest -> Aff (exception :: EXCEPTION | eff) RegisterEcsClusterResult
```

<p>Registers a specified Amazon ECS cluster with a stack. You can register only one cluster with a stack. A cluster can be registered with only one stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html"> Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html"> Managing User Permissions</a>.</p>

#### `registerElasticIp`

``` purescript
registerElasticIp :: forall eff. RegisterElasticIpRequest -> Aff (exception :: EXCEPTION | eff) RegisterElasticIpResult
```

<p>Registers an Elastic IP address with a specified stack. An address can be registered with only one stack at a time. If the address is already registered, you must first deregister it by calling <a>DeregisterElasticIp</a>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `registerInstance`

``` purescript
registerInstance :: forall eff. RegisterInstanceRequest -> Aff (exception :: EXCEPTION | eff) RegisterInstanceResult
```

<p>Registers instances that were created outside of AWS OpsWorks Stacks with a specified stack.</p> <note> <p>We do not recommend using this action to register instances. The complete registration operation includes two tasks: installing the AWS OpsWorks Stacks agent on the instance, and registering the instance with the stack. <code>RegisterInstance</code> handles only the second step. You should instead use the AWS CLI <code>register</code> command, which performs the entire registration operation. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html"> Registering an Instance with an AWS OpsWorks Stacks Stack</a>.</p> </note> <p>Registered instances have the same requirements as instances that are created by using the <a>CreateInstance</a> API. For example, registered instances must be running a supported Linux-based operating system, and they must have a supported instance type. For more information about requirements for instances that you want to register, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html"> Preparing the Instance</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `registerRdsDbInstance`

``` purescript
registerRdsDbInstance :: forall eff. RegisterRdsDbInstanceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Registers an Amazon RDS instance with a stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `registerVolume`

``` purescript
registerVolume :: forall eff. RegisterVolumeRequest -> Aff (exception :: EXCEPTION | eff) RegisterVolumeResult
```

<p>Registers an Amazon EBS volume with a specified stack. A volume can be registered with only one stack at a time. If the volume is already registered, you must first deregister it by calling <a>DeregisterVolume</a>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `setLoadBasedAutoScaling`

``` purescript
setLoadBasedAutoScaling :: forall eff. SetLoadBasedAutoScalingRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Specify the load-based auto scaling configuration for a specified layer. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing Load with Time-based and Load-based Instances</a>.</p> <note> <p>To use load-based auto scaling, you must create a set of load-based auto scaling instances. Load-based auto scaling operates only on the instances from that set, so you must ensure that you have created enough instances to handle the maximum anticipated load.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `setPermission`

``` purescript
setPermission :: forall eff. SetPermissionRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Specifies a user's permissions. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html">Security and Permissions</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `setTimeBasedAutoScaling`

``` purescript
setTimeBasedAutoScaling :: forall eff. SetTimeBasedAutoScalingRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Specify the time-based auto scaling configuration for a specified instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing Load with Time-based and Load-based Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `startInstance`

``` purescript
startInstance :: forall eff. StartInstanceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Starts a specified instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `startStack`

``` purescript
startStack :: forall eff. StartStackRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Starts a stack's instances.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `stopInstance`

``` purescript
stopInstance :: forall eff. StopInstanceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Stops a specified instance. When you stop a standard instance, the data disappears and must be reinstalled when you restart the instance. You can stop an Amazon EBS-backed instance without losing data. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `stopStack`

``` purescript
stopStack :: forall eff. StopStackRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Stops a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `tagResource`

``` purescript
tagResource :: forall eff. TagResourceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks. For more information about how tagging works, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html">Tags</a> in the AWS OpsWorks User Guide.</p>

#### `unassignInstance`

``` purescript
unassignInstance :: forall eff. UnassignInstanceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Unassigns a registered instance from all of it's layers. The instance remains in the stack as an unassigned instance and can be assigned to another layer, as needed. You cannot use this action with instances that were created with AWS OpsWorks Stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `unassignVolume`

``` purescript
unassignVolume :: forall eff. UnassignVolumeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Unassigns an assigned Amazon EBS volume. The volume remains registered with the stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `untagResource`

``` purescript
untagResource :: forall eff. UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Removes tags from a specified stack or layer.</p>

#### `updateApp`

``` purescript
updateApp :: forall eff. UpdateAppRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates a specified app.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `updateElasticIp`

``` purescript
updateElasticIp :: forall eff. UpdateElasticIpRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates a registered Elastic IP address's name. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `updateInstance`

``` purescript
updateInstance :: forall eff. UpdateInstanceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates a specified instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `updateLayer`

``` purescript
updateLayer :: forall eff. UpdateLayerRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates a specified layer.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `updateMyUserProfile`

``` purescript
updateMyUserProfile :: forall eff. UpdateMyUserProfileRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates a user's SSH public key.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `updateRdsDbInstance`

``` purescript
updateRdsDbInstance :: forall eff. UpdateRdsDbInstanceRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates an Amazon RDS instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `updateStack`

``` purescript
updateStack :: forall eff. UpdateStackRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `updateUserProfile`

``` purescript
updateUserProfile :: forall eff. UpdateUserProfileRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates a specified user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `updateVolume`

``` purescript
updateVolume :: forall eff. UpdateVolumeRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Updates an Amazon EBS volume's name or mount point. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

#### `AgentVersion`

``` purescript
newtype AgentVersion
  = AgentVersion { "Version" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager) }
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
newAgentVersion' :: ({ "Version" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager) } -> { "Version" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager) }) -> AgentVersion
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
  = App { "AppId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "Shortname" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "DataSources" :: NullOrUndefined (DataSources), "Type" :: NullOrUndefined (AppType), "AppSource" :: NullOrUndefined (Source), "Domains" :: NullOrUndefined (Strings), "EnableSsl" :: NullOrUndefined (Boolean), "SslConfiguration" :: NullOrUndefined (SslConfiguration), "Attributes" :: NullOrUndefined (AppAttributes), "CreatedAt" :: NullOrUndefined (String), "Environment" :: NullOrUndefined (EnvironmentVariables) }
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
newApp' :: ({ "AppId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "Shortname" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "DataSources" :: NullOrUndefined (DataSources), "Type" :: NullOrUndefined (AppType), "AppSource" :: NullOrUndefined (Source), "Domains" :: NullOrUndefined (Strings), "EnableSsl" :: NullOrUndefined (Boolean), "SslConfiguration" :: NullOrUndefined (SslConfiguration), "Attributes" :: NullOrUndefined (AppAttributes), "CreatedAt" :: NullOrUndefined (String), "Environment" :: NullOrUndefined (EnvironmentVariables) } -> { "AppId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "Shortname" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "DataSources" :: NullOrUndefined (DataSources), "Type" :: NullOrUndefined (AppType), "AppSource" :: NullOrUndefined (Source), "Domains" :: NullOrUndefined (Strings), "EnableSsl" :: NullOrUndefined (Boolean), "SslConfiguration" :: NullOrUndefined (SslConfiguration), "Attributes" :: NullOrUndefined (AppAttributes), "CreatedAt" :: NullOrUndefined (String), "Environment" :: NullOrUndefined (EnvironmentVariables) }) -> App
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
  = AssignVolumeRequest { "VolumeId" :: String, "InstanceId" :: NullOrUndefined (String) }
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
newAssignVolumeRequest' :: String -> ({ "VolumeId" :: String, "InstanceId" :: NullOrUndefined (String) } -> { "VolumeId" :: String, "InstanceId" :: NullOrUndefined (String) }) -> AssignVolumeRequest
```

Constructs AssignVolumeRequest's fields from required parameters

#### `AssociateElasticIpRequest`

``` purescript
newtype AssociateElasticIpRequest
  = AssociateElasticIpRequest { "ElasticIp" :: String, "InstanceId" :: NullOrUndefined (String) }
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
newAssociateElasticIpRequest' :: String -> ({ "ElasticIp" :: String, "InstanceId" :: NullOrUndefined (String) } -> { "ElasticIp" :: String, "InstanceId" :: NullOrUndefined (String) }) -> AssociateElasticIpRequest
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
  = AutoScalingThresholds { "InstanceCount" :: NullOrUndefined (Int), "ThresholdsWaitTime" :: NullOrUndefined (Minute), "IgnoreMetricsTime" :: NullOrUndefined (Minute), "CpuThreshold" :: NullOrUndefined (Number), "MemoryThreshold" :: NullOrUndefined (Number), "LoadThreshold" :: NullOrUndefined (Number), "Alarms" :: NullOrUndefined (Strings) }
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
newAutoScalingThresholds' :: ({ "InstanceCount" :: NullOrUndefined (Int), "ThresholdsWaitTime" :: NullOrUndefined (Minute), "IgnoreMetricsTime" :: NullOrUndefined (Minute), "CpuThreshold" :: NullOrUndefined (Number), "MemoryThreshold" :: NullOrUndefined (Number), "LoadThreshold" :: NullOrUndefined (Number), "Alarms" :: NullOrUndefined (Strings) } -> { "InstanceCount" :: NullOrUndefined (Int), "ThresholdsWaitTime" :: NullOrUndefined (Minute), "IgnoreMetricsTime" :: NullOrUndefined (Minute), "CpuThreshold" :: NullOrUndefined (Number), "MemoryThreshold" :: NullOrUndefined (Number), "LoadThreshold" :: NullOrUndefined (Number), "Alarms" :: NullOrUndefined (Strings) }) -> AutoScalingThresholds
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
  = BlockDeviceMapping { "DeviceName" :: NullOrUndefined (String), "NoDevice" :: NullOrUndefined (String), "VirtualName" :: NullOrUndefined (String), "Ebs" :: NullOrUndefined (EbsBlockDevice) }
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
newBlockDeviceMapping' :: ({ "DeviceName" :: NullOrUndefined (String), "NoDevice" :: NullOrUndefined (String), "VirtualName" :: NullOrUndefined (String), "Ebs" :: NullOrUndefined (EbsBlockDevice) } -> { "DeviceName" :: NullOrUndefined (String), "NoDevice" :: NullOrUndefined (String), "VirtualName" :: NullOrUndefined (String), "Ebs" :: NullOrUndefined (EbsBlockDevice) }) -> BlockDeviceMapping
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
  = ChefConfiguration { "ManageBerkshelf" :: NullOrUndefined (Boolean), "BerkshelfVersion" :: NullOrUndefined (String) }
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
newChefConfiguration' :: ({ "ManageBerkshelf" :: NullOrUndefined (Boolean), "BerkshelfVersion" :: NullOrUndefined (String) } -> { "ManageBerkshelf" :: NullOrUndefined (Boolean), "BerkshelfVersion" :: NullOrUndefined (String) }) -> ChefConfiguration
```

Constructs ChefConfiguration's fields from required parameters

#### `CloneStackRequest`

``` purescript
newtype CloneStackRequest
  = CloneStackRequest { "SourceStackId" :: String, "Name" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "VpcId" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (StackAttributes), "ServiceRoleArn" :: String, "DefaultInstanceProfileArn" :: NullOrUndefined (String), "DefaultOs" :: NullOrUndefined (String), "HostnameTheme" :: NullOrUndefined (String), "DefaultAvailabilityZone" :: NullOrUndefined (String), "DefaultSubnetId" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager), "ChefConfiguration" :: NullOrUndefined (ChefConfiguration), "UseCustomCookbooks" :: NullOrUndefined (Boolean), "UseOpsworksSecurityGroups" :: NullOrUndefined (Boolean), "CustomCookbooksSource" :: NullOrUndefined (Source), "DefaultSshKeyName" :: NullOrUndefined (String), "ClonePermissions" :: NullOrUndefined (Boolean), "CloneAppIds" :: NullOrUndefined (Strings), "DefaultRootDeviceType" :: NullOrUndefined (RootDeviceType), "AgentVersion" :: NullOrUndefined (String) }
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
newCloneStackRequest' :: String -> String -> ({ "SourceStackId" :: String, "Name" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "VpcId" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (StackAttributes), "ServiceRoleArn" :: String, "DefaultInstanceProfileArn" :: NullOrUndefined (String), "DefaultOs" :: NullOrUndefined (String), "HostnameTheme" :: NullOrUndefined (String), "DefaultAvailabilityZone" :: NullOrUndefined (String), "DefaultSubnetId" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager), "ChefConfiguration" :: NullOrUndefined (ChefConfiguration), "UseCustomCookbooks" :: NullOrUndefined (Boolean), "UseOpsworksSecurityGroups" :: NullOrUndefined (Boolean), "CustomCookbooksSource" :: NullOrUndefined (Source), "DefaultSshKeyName" :: NullOrUndefined (String), "ClonePermissions" :: NullOrUndefined (Boolean), "CloneAppIds" :: NullOrUndefined (Strings), "DefaultRootDeviceType" :: NullOrUndefined (RootDeviceType), "AgentVersion" :: NullOrUndefined (String) } -> { "SourceStackId" :: String, "Name" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "VpcId" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (StackAttributes), "ServiceRoleArn" :: String, "DefaultInstanceProfileArn" :: NullOrUndefined (String), "DefaultOs" :: NullOrUndefined (String), "HostnameTheme" :: NullOrUndefined (String), "DefaultAvailabilityZone" :: NullOrUndefined (String), "DefaultSubnetId" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager), "ChefConfiguration" :: NullOrUndefined (ChefConfiguration), "UseCustomCookbooks" :: NullOrUndefined (Boolean), "UseOpsworksSecurityGroups" :: NullOrUndefined (Boolean), "CustomCookbooksSource" :: NullOrUndefined (Source), "DefaultSshKeyName" :: NullOrUndefined (String), "ClonePermissions" :: NullOrUndefined (Boolean), "CloneAppIds" :: NullOrUndefined (Strings), "DefaultRootDeviceType" :: NullOrUndefined (RootDeviceType), "AgentVersion" :: NullOrUndefined (String) }) -> CloneStackRequest
```

Constructs CloneStackRequest's fields from required parameters

#### `CloneStackResult`

``` purescript
newtype CloneStackResult
  = CloneStackResult { "StackId" :: NullOrUndefined (String) }
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
newCloneStackResult' :: ({ "StackId" :: NullOrUndefined (String) } -> { "StackId" :: NullOrUndefined (String) }) -> CloneStackResult
```

Constructs CloneStackResult's fields from required parameters

#### `CloudWatchLogsConfiguration`

``` purescript
newtype CloudWatchLogsConfiguration
  = CloudWatchLogsConfiguration { "Enabled" :: NullOrUndefined (Boolean), "LogStreams" :: NullOrUndefined (CloudWatchLogsLogStreams) }
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
newCloudWatchLogsConfiguration' :: ({ "Enabled" :: NullOrUndefined (Boolean), "LogStreams" :: NullOrUndefined (CloudWatchLogsLogStreams) } -> { "Enabled" :: NullOrUndefined (Boolean), "LogStreams" :: NullOrUndefined (CloudWatchLogsLogStreams) }) -> CloudWatchLogsConfiguration
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
  = CloudWatchLogsLogStream { "LogGroupName" :: NullOrUndefined (String), "DatetimeFormat" :: NullOrUndefined (String), "TimeZone" :: NullOrUndefined (CloudWatchLogsTimeZone), "File" :: NullOrUndefined (String), "FileFingerprintLines" :: NullOrUndefined (String), "MultiLineStartPattern" :: NullOrUndefined (String), "InitialPosition" :: NullOrUndefined (CloudWatchLogsInitialPosition), "Encoding" :: NullOrUndefined (CloudWatchLogsEncoding), "BufferDuration" :: NullOrUndefined (Int), "BatchCount" :: NullOrUndefined (Int), "BatchSize" :: NullOrUndefined (Int) }
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
newCloudWatchLogsLogStream' :: ({ "LogGroupName" :: NullOrUndefined (String), "DatetimeFormat" :: NullOrUndefined (String), "TimeZone" :: NullOrUndefined (CloudWatchLogsTimeZone), "File" :: NullOrUndefined (String), "FileFingerprintLines" :: NullOrUndefined (String), "MultiLineStartPattern" :: NullOrUndefined (String), "InitialPosition" :: NullOrUndefined (CloudWatchLogsInitialPosition), "Encoding" :: NullOrUndefined (CloudWatchLogsEncoding), "BufferDuration" :: NullOrUndefined (Int), "BatchCount" :: NullOrUndefined (Int), "BatchSize" :: NullOrUndefined (Int) } -> { "LogGroupName" :: NullOrUndefined (String), "DatetimeFormat" :: NullOrUndefined (String), "TimeZone" :: NullOrUndefined (CloudWatchLogsTimeZone), "File" :: NullOrUndefined (String), "FileFingerprintLines" :: NullOrUndefined (String), "MultiLineStartPattern" :: NullOrUndefined (String), "InitialPosition" :: NullOrUndefined (CloudWatchLogsInitialPosition), "Encoding" :: NullOrUndefined (CloudWatchLogsEncoding), "BufferDuration" :: NullOrUndefined (Int), "BatchCount" :: NullOrUndefined (Int), "BatchSize" :: NullOrUndefined (Int) }) -> CloudWatchLogsLogStream
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
  = Command { "CommandId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "DeploymentId" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime), "AcknowledgedAt" :: NullOrUndefined (DateTime), "CompletedAt" :: NullOrUndefined (DateTime), "Status" :: NullOrUndefined (String), "ExitCode" :: NullOrUndefined (Int), "LogUrl" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String) }
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
newCommand' :: ({ "CommandId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "DeploymentId" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime), "AcknowledgedAt" :: NullOrUndefined (DateTime), "CompletedAt" :: NullOrUndefined (DateTime), "Status" :: NullOrUndefined (String), "ExitCode" :: NullOrUndefined (Int), "LogUrl" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String) } -> { "CommandId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "DeploymentId" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime), "AcknowledgedAt" :: NullOrUndefined (DateTime), "CompletedAt" :: NullOrUndefined (DateTime), "Status" :: NullOrUndefined (String), "ExitCode" :: NullOrUndefined (Int), "LogUrl" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String) }) -> Command
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
  = CreateAppRequest { "StackId" :: String, "Shortname" :: NullOrUndefined (String), "Name" :: String, "Description" :: NullOrUndefined (String), "DataSources" :: NullOrUndefined (DataSources), "Type" :: AppType, "AppSource" :: NullOrUndefined (Source), "Domains" :: NullOrUndefined (Strings), "EnableSsl" :: NullOrUndefined (Boolean), "SslConfiguration" :: NullOrUndefined (SslConfiguration), "Attributes" :: NullOrUndefined (AppAttributes), "Environment" :: NullOrUndefined (EnvironmentVariables) }
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
newCreateAppRequest' :: String -> String -> AppType -> ({ "StackId" :: String, "Shortname" :: NullOrUndefined (String), "Name" :: String, "Description" :: NullOrUndefined (String), "DataSources" :: NullOrUndefined (DataSources), "Type" :: AppType, "AppSource" :: NullOrUndefined (Source), "Domains" :: NullOrUndefined (Strings), "EnableSsl" :: NullOrUndefined (Boolean), "SslConfiguration" :: NullOrUndefined (SslConfiguration), "Attributes" :: NullOrUndefined (AppAttributes), "Environment" :: NullOrUndefined (EnvironmentVariables) } -> { "StackId" :: String, "Shortname" :: NullOrUndefined (String), "Name" :: String, "Description" :: NullOrUndefined (String), "DataSources" :: NullOrUndefined (DataSources), "Type" :: AppType, "AppSource" :: NullOrUndefined (Source), "Domains" :: NullOrUndefined (Strings), "EnableSsl" :: NullOrUndefined (Boolean), "SslConfiguration" :: NullOrUndefined (SslConfiguration), "Attributes" :: NullOrUndefined (AppAttributes), "Environment" :: NullOrUndefined (EnvironmentVariables) }) -> CreateAppRequest
```

Constructs CreateAppRequest's fields from required parameters

#### `CreateAppResult`

``` purescript
newtype CreateAppResult
  = CreateAppResult { "AppId" :: NullOrUndefined (String) }
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
newCreateAppResult' :: ({ "AppId" :: NullOrUndefined (String) } -> { "AppId" :: NullOrUndefined (String) }) -> CreateAppResult
```

Constructs CreateAppResult's fields from required parameters

#### `CreateDeploymentRequest`

``` purescript
newtype CreateDeploymentRequest
  = CreateDeploymentRequest { "StackId" :: String, "AppId" :: NullOrUndefined (String), "InstanceIds" :: NullOrUndefined (Strings), "LayerIds" :: NullOrUndefined (Strings), "Command" :: DeploymentCommand, "Comment" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String) }
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
newCreateDeploymentRequest' :: DeploymentCommand -> String -> ({ "StackId" :: String, "AppId" :: NullOrUndefined (String), "InstanceIds" :: NullOrUndefined (Strings), "LayerIds" :: NullOrUndefined (Strings), "Command" :: DeploymentCommand, "Comment" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String) } -> { "StackId" :: String, "AppId" :: NullOrUndefined (String), "InstanceIds" :: NullOrUndefined (Strings), "LayerIds" :: NullOrUndefined (Strings), "Command" :: DeploymentCommand, "Comment" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String) }) -> CreateDeploymentRequest
```

Constructs CreateDeploymentRequest's fields from required parameters

#### `CreateDeploymentResult`

``` purescript
newtype CreateDeploymentResult
  = CreateDeploymentResult { "DeploymentId" :: NullOrUndefined (String) }
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
newCreateDeploymentResult' :: ({ "DeploymentId" :: NullOrUndefined (String) } -> { "DeploymentId" :: NullOrUndefined (String) }) -> CreateDeploymentResult
```

Constructs CreateDeploymentResult's fields from required parameters

#### `CreateInstanceRequest`

``` purescript
newtype CreateInstanceRequest
  = CreateInstanceRequest { "StackId" :: String, "LayerIds" :: Strings, "InstanceType" :: String, "AutoScalingType" :: NullOrUndefined (AutoScalingType), "Hostname" :: NullOrUndefined (String), "Os" :: NullOrUndefined (String), "AmiId" :: NullOrUndefined (String), "SshKeyName" :: NullOrUndefined (String), "AvailabilityZone" :: NullOrUndefined (String), "VirtualizationType" :: NullOrUndefined (String), "SubnetId" :: NullOrUndefined (String), "Architecture" :: NullOrUndefined (Architecture), "RootDeviceType" :: NullOrUndefined (RootDeviceType), "BlockDeviceMappings" :: NullOrUndefined (BlockDeviceMappings), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "EbsOptimized" :: NullOrUndefined (Boolean), "AgentVersion" :: NullOrUndefined (String), "Tenancy" :: NullOrUndefined (String) }
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
newCreateInstanceRequest' :: String -> Strings -> String -> ({ "StackId" :: String, "LayerIds" :: Strings, "InstanceType" :: String, "AutoScalingType" :: NullOrUndefined (AutoScalingType), "Hostname" :: NullOrUndefined (String), "Os" :: NullOrUndefined (String), "AmiId" :: NullOrUndefined (String), "SshKeyName" :: NullOrUndefined (String), "AvailabilityZone" :: NullOrUndefined (String), "VirtualizationType" :: NullOrUndefined (String), "SubnetId" :: NullOrUndefined (String), "Architecture" :: NullOrUndefined (Architecture), "RootDeviceType" :: NullOrUndefined (RootDeviceType), "BlockDeviceMappings" :: NullOrUndefined (BlockDeviceMappings), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "EbsOptimized" :: NullOrUndefined (Boolean), "AgentVersion" :: NullOrUndefined (String), "Tenancy" :: NullOrUndefined (String) } -> { "StackId" :: String, "LayerIds" :: Strings, "InstanceType" :: String, "AutoScalingType" :: NullOrUndefined (AutoScalingType), "Hostname" :: NullOrUndefined (String), "Os" :: NullOrUndefined (String), "AmiId" :: NullOrUndefined (String), "SshKeyName" :: NullOrUndefined (String), "AvailabilityZone" :: NullOrUndefined (String), "VirtualizationType" :: NullOrUndefined (String), "SubnetId" :: NullOrUndefined (String), "Architecture" :: NullOrUndefined (Architecture), "RootDeviceType" :: NullOrUndefined (RootDeviceType), "BlockDeviceMappings" :: NullOrUndefined (BlockDeviceMappings), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "EbsOptimized" :: NullOrUndefined (Boolean), "AgentVersion" :: NullOrUndefined (String), "Tenancy" :: NullOrUndefined (String) }) -> CreateInstanceRequest
```

Constructs CreateInstanceRequest's fields from required parameters

#### `CreateInstanceResult`

``` purescript
newtype CreateInstanceResult
  = CreateInstanceResult { "InstanceId" :: NullOrUndefined (String) }
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
newCreateInstanceResult' :: ({ "InstanceId" :: NullOrUndefined (String) } -> { "InstanceId" :: NullOrUndefined (String) }) -> CreateInstanceResult
```

Constructs CreateInstanceResult's fields from required parameters

#### `CreateLayerRequest`

``` purescript
newtype CreateLayerRequest
  = CreateLayerRequest { "StackId" :: String, "Type" :: LayerType, "Name" :: String, "Shortname" :: String, "Attributes" :: NullOrUndefined (LayerAttributes), "CloudWatchLogsConfiguration" :: NullOrUndefined (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "CustomSecurityGroupIds" :: NullOrUndefined (Strings), "Packages" :: NullOrUndefined (Strings), "VolumeConfigurations" :: NullOrUndefined (VolumeConfigurations), "EnableAutoHealing" :: NullOrUndefined (Boolean), "AutoAssignElasticIps" :: NullOrUndefined (Boolean), "AutoAssignPublicIps" :: NullOrUndefined (Boolean), "CustomRecipes" :: NullOrUndefined (Recipes), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "UseEbsOptimizedInstances" :: NullOrUndefined (Boolean), "LifecycleEventConfiguration" :: NullOrUndefined (LifecycleEventConfiguration) }
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
newCreateLayerRequest' :: String -> String -> String -> LayerType -> ({ "StackId" :: String, "Type" :: LayerType, "Name" :: String, "Shortname" :: String, "Attributes" :: NullOrUndefined (LayerAttributes), "CloudWatchLogsConfiguration" :: NullOrUndefined (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "CustomSecurityGroupIds" :: NullOrUndefined (Strings), "Packages" :: NullOrUndefined (Strings), "VolumeConfigurations" :: NullOrUndefined (VolumeConfigurations), "EnableAutoHealing" :: NullOrUndefined (Boolean), "AutoAssignElasticIps" :: NullOrUndefined (Boolean), "AutoAssignPublicIps" :: NullOrUndefined (Boolean), "CustomRecipes" :: NullOrUndefined (Recipes), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "UseEbsOptimizedInstances" :: NullOrUndefined (Boolean), "LifecycleEventConfiguration" :: NullOrUndefined (LifecycleEventConfiguration) } -> { "StackId" :: String, "Type" :: LayerType, "Name" :: String, "Shortname" :: String, "Attributes" :: NullOrUndefined (LayerAttributes), "CloudWatchLogsConfiguration" :: NullOrUndefined (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "CustomSecurityGroupIds" :: NullOrUndefined (Strings), "Packages" :: NullOrUndefined (Strings), "VolumeConfigurations" :: NullOrUndefined (VolumeConfigurations), "EnableAutoHealing" :: NullOrUndefined (Boolean), "AutoAssignElasticIps" :: NullOrUndefined (Boolean), "AutoAssignPublicIps" :: NullOrUndefined (Boolean), "CustomRecipes" :: NullOrUndefined (Recipes), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "UseEbsOptimizedInstances" :: NullOrUndefined (Boolean), "LifecycleEventConfiguration" :: NullOrUndefined (LifecycleEventConfiguration) }) -> CreateLayerRequest
```

Constructs CreateLayerRequest's fields from required parameters

#### `CreateLayerResult`

``` purescript
newtype CreateLayerResult
  = CreateLayerResult { "LayerId" :: NullOrUndefined (String) }
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
newCreateLayerResult' :: ({ "LayerId" :: NullOrUndefined (String) } -> { "LayerId" :: NullOrUndefined (String) }) -> CreateLayerResult
```

Constructs CreateLayerResult's fields from required parameters

#### `CreateStackRequest`

``` purescript
newtype CreateStackRequest
  = CreateStackRequest { "Name" :: String, "Region" :: String, "VpcId" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (StackAttributes), "ServiceRoleArn" :: String, "DefaultInstanceProfileArn" :: String, "DefaultOs" :: NullOrUndefined (String), "HostnameTheme" :: NullOrUndefined (String), "DefaultAvailabilityZone" :: NullOrUndefined (String), "DefaultSubnetId" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager), "ChefConfiguration" :: NullOrUndefined (ChefConfiguration), "UseCustomCookbooks" :: NullOrUndefined (Boolean), "UseOpsworksSecurityGroups" :: NullOrUndefined (Boolean), "CustomCookbooksSource" :: NullOrUndefined (Source), "DefaultSshKeyName" :: NullOrUndefined (String), "DefaultRootDeviceType" :: NullOrUndefined (RootDeviceType), "AgentVersion" :: NullOrUndefined (String) }
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
newCreateStackRequest' :: String -> String -> String -> String -> ({ "Name" :: String, "Region" :: String, "VpcId" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (StackAttributes), "ServiceRoleArn" :: String, "DefaultInstanceProfileArn" :: String, "DefaultOs" :: NullOrUndefined (String), "HostnameTheme" :: NullOrUndefined (String), "DefaultAvailabilityZone" :: NullOrUndefined (String), "DefaultSubnetId" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager), "ChefConfiguration" :: NullOrUndefined (ChefConfiguration), "UseCustomCookbooks" :: NullOrUndefined (Boolean), "UseOpsworksSecurityGroups" :: NullOrUndefined (Boolean), "CustomCookbooksSource" :: NullOrUndefined (Source), "DefaultSshKeyName" :: NullOrUndefined (String), "DefaultRootDeviceType" :: NullOrUndefined (RootDeviceType), "AgentVersion" :: NullOrUndefined (String) } -> { "Name" :: String, "Region" :: String, "VpcId" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (StackAttributes), "ServiceRoleArn" :: String, "DefaultInstanceProfileArn" :: String, "DefaultOs" :: NullOrUndefined (String), "HostnameTheme" :: NullOrUndefined (String), "DefaultAvailabilityZone" :: NullOrUndefined (String), "DefaultSubnetId" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager), "ChefConfiguration" :: NullOrUndefined (ChefConfiguration), "UseCustomCookbooks" :: NullOrUndefined (Boolean), "UseOpsworksSecurityGroups" :: NullOrUndefined (Boolean), "CustomCookbooksSource" :: NullOrUndefined (Source), "DefaultSshKeyName" :: NullOrUndefined (String), "DefaultRootDeviceType" :: NullOrUndefined (RootDeviceType), "AgentVersion" :: NullOrUndefined (String) }) -> CreateStackRequest
```

Constructs CreateStackRequest's fields from required parameters

#### `CreateStackResult`

``` purescript
newtype CreateStackResult
  = CreateStackResult { "StackId" :: NullOrUndefined (String) }
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
newCreateStackResult' :: ({ "StackId" :: NullOrUndefined (String) } -> { "StackId" :: NullOrUndefined (String) }) -> CreateStackResult
```

Constructs CreateStackResult's fields from required parameters

#### `CreateUserProfileRequest`

``` purescript
newtype CreateUserProfileRequest
  = CreateUserProfileRequest { "IamUserArn" :: String, "SshUsername" :: NullOrUndefined (String), "SshPublicKey" :: NullOrUndefined (String), "AllowSelfManagement" :: NullOrUndefined (Boolean) }
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
newCreateUserProfileRequest' :: String -> ({ "IamUserArn" :: String, "SshUsername" :: NullOrUndefined (String), "SshPublicKey" :: NullOrUndefined (String), "AllowSelfManagement" :: NullOrUndefined (Boolean) } -> { "IamUserArn" :: String, "SshUsername" :: NullOrUndefined (String), "SshPublicKey" :: NullOrUndefined (String), "AllowSelfManagement" :: NullOrUndefined (Boolean) }) -> CreateUserProfileRequest
```

Constructs CreateUserProfileRequest's fields from required parameters

#### `CreateUserProfileResult`

``` purescript
newtype CreateUserProfileResult
  = CreateUserProfileResult { "IamUserArn" :: NullOrUndefined (String) }
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
newCreateUserProfileResult' :: ({ "IamUserArn" :: NullOrUndefined (String) } -> { "IamUserArn" :: NullOrUndefined (String) }) -> CreateUserProfileResult
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
  = DataSource { "Type" :: NullOrUndefined (String), "Arn" :: NullOrUndefined (String), "DatabaseName" :: NullOrUndefined (String) }
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
newDataSource' :: ({ "Type" :: NullOrUndefined (String), "Arn" :: NullOrUndefined (String), "DatabaseName" :: NullOrUndefined (String) } -> { "Type" :: NullOrUndefined (String), "Arn" :: NullOrUndefined (String), "DatabaseName" :: NullOrUndefined (String) }) -> DataSource
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
  = DeleteInstanceRequest { "InstanceId" :: String, "DeleteElasticIp" :: NullOrUndefined (Boolean), "DeleteVolumes" :: NullOrUndefined (Boolean) }
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
newDeleteInstanceRequest' :: String -> ({ "InstanceId" :: String, "DeleteElasticIp" :: NullOrUndefined (Boolean), "DeleteVolumes" :: NullOrUndefined (Boolean) } -> { "InstanceId" :: String, "DeleteElasticIp" :: NullOrUndefined (Boolean), "DeleteVolumes" :: NullOrUndefined (Boolean) }) -> DeleteInstanceRequest
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
  = Deployment { "DeploymentId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "AppId" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime), "CompletedAt" :: NullOrUndefined (DateTime), "Duration" :: NullOrUndefined (Int), "IamUserArn" :: NullOrUndefined (String), "Comment" :: NullOrUndefined (String), "Command" :: NullOrUndefined (DeploymentCommand), "Status" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "InstanceIds" :: NullOrUndefined (Strings) }
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
newDeployment' :: ({ "DeploymentId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "AppId" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime), "CompletedAt" :: NullOrUndefined (DateTime), "Duration" :: NullOrUndefined (Int), "IamUserArn" :: NullOrUndefined (String), "Comment" :: NullOrUndefined (String), "Command" :: NullOrUndefined (DeploymentCommand), "Status" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "InstanceIds" :: NullOrUndefined (Strings) } -> { "DeploymentId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "AppId" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime), "CompletedAt" :: NullOrUndefined (DateTime), "Duration" :: NullOrUndefined (Int), "IamUserArn" :: NullOrUndefined (String), "Comment" :: NullOrUndefined (String), "Command" :: NullOrUndefined (DeploymentCommand), "Status" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "InstanceIds" :: NullOrUndefined (Strings) }) -> Deployment
```

Constructs Deployment's fields from required parameters

#### `DeploymentCommand`

``` purescript
newtype DeploymentCommand
  = DeploymentCommand { "Name" :: DeploymentCommandName, "Args" :: NullOrUndefined (DeploymentCommandArgs) }
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
newDeploymentCommand' :: DeploymentCommandName -> ({ "Name" :: DeploymentCommandName, "Args" :: NullOrUndefined (DeploymentCommandArgs) } -> { "Name" :: DeploymentCommandName, "Args" :: NullOrUndefined (DeploymentCommandArgs) }) -> DeploymentCommand
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
  = DescribeAgentVersionsRequest { "StackId" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager) }
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
newDescribeAgentVersionsRequest' :: ({ "StackId" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager) } -> { "StackId" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager) }) -> DescribeAgentVersionsRequest
```

Constructs DescribeAgentVersionsRequest's fields from required parameters

#### `DescribeAgentVersionsResult`

``` purescript
newtype DescribeAgentVersionsResult
  = DescribeAgentVersionsResult { "AgentVersions" :: NullOrUndefined (AgentVersions) }
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
newDescribeAgentVersionsResult' :: ({ "AgentVersions" :: NullOrUndefined (AgentVersions) } -> { "AgentVersions" :: NullOrUndefined (AgentVersions) }) -> DescribeAgentVersionsResult
```

Constructs DescribeAgentVersionsResult's fields from required parameters

#### `DescribeAppsRequest`

``` purescript
newtype DescribeAppsRequest
  = DescribeAppsRequest { "StackId" :: NullOrUndefined (String), "AppIds" :: NullOrUndefined (Strings) }
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
newDescribeAppsRequest' :: ({ "StackId" :: NullOrUndefined (String), "AppIds" :: NullOrUndefined (Strings) } -> { "StackId" :: NullOrUndefined (String), "AppIds" :: NullOrUndefined (Strings) }) -> DescribeAppsRequest
```

Constructs DescribeAppsRequest's fields from required parameters

#### `DescribeAppsResult`

``` purescript
newtype DescribeAppsResult
  = DescribeAppsResult { "Apps" :: NullOrUndefined (Apps) }
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
newDescribeAppsResult' :: ({ "Apps" :: NullOrUndefined (Apps) } -> { "Apps" :: NullOrUndefined (Apps) }) -> DescribeAppsResult
```

Constructs DescribeAppsResult's fields from required parameters

#### `DescribeCommandsRequest`

``` purescript
newtype DescribeCommandsRequest
  = DescribeCommandsRequest { "DeploymentId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "CommandIds" :: NullOrUndefined (Strings) }
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
newDescribeCommandsRequest' :: ({ "DeploymentId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "CommandIds" :: NullOrUndefined (Strings) } -> { "DeploymentId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "CommandIds" :: NullOrUndefined (Strings) }) -> DescribeCommandsRequest
```

Constructs DescribeCommandsRequest's fields from required parameters

#### `DescribeCommandsResult`

``` purescript
newtype DescribeCommandsResult
  = DescribeCommandsResult { "Commands" :: NullOrUndefined (Commands) }
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
newDescribeCommandsResult' :: ({ "Commands" :: NullOrUndefined (Commands) } -> { "Commands" :: NullOrUndefined (Commands) }) -> DescribeCommandsResult
```

Constructs DescribeCommandsResult's fields from required parameters

#### `DescribeDeploymentsRequest`

``` purescript
newtype DescribeDeploymentsRequest
  = DescribeDeploymentsRequest { "StackId" :: NullOrUndefined (String), "AppId" :: NullOrUndefined (String), "DeploymentIds" :: NullOrUndefined (Strings) }
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
newDescribeDeploymentsRequest' :: ({ "StackId" :: NullOrUndefined (String), "AppId" :: NullOrUndefined (String), "DeploymentIds" :: NullOrUndefined (Strings) } -> { "StackId" :: NullOrUndefined (String), "AppId" :: NullOrUndefined (String), "DeploymentIds" :: NullOrUndefined (Strings) }) -> DescribeDeploymentsRequest
```

Constructs DescribeDeploymentsRequest's fields from required parameters

#### `DescribeDeploymentsResult`

``` purescript
newtype DescribeDeploymentsResult
  = DescribeDeploymentsResult { "Deployments" :: NullOrUndefined (Deployments) }
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
newDescribeDeploymentsResult' :: ({ "Deployments" :: NullOrUndefined (Deployments) } -> { "Deployments" :: NullOrUndefined (Deployments) }) -> DescribeDeploymentsResult
```

Constructs DescribeDeploymentsResult's fields from required parameters

#### `DescribeEcsClustersRequest`

``` purescript
newtype DescribeEcsClustersRequest
  = DescribeEcsClustersRequest { "EcsClusterArns" :: NullOrUndefined (Strings), "StackId" :: NullOrUndefined (String), "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (Int) }
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
newDescribeEcsClustersRequest' :: ({ "EcsClusterArns" :: NullOrUndefined (Strings), "StackId" :: NullOrUndefined (String), "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (Int) } -> { "EcsClusterArns" :: NullOrUndefined (Strings), "StackId" :: NullOrUndefined (String), "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (Int) }) -> DescribeEcsClustersRequest
```

Constructs DescribeEcsClustersRequest's fields from required parameters

#### `DescribeEcsClustersResult`

``` purescript
newtype DescribeEcsClustersResult
  = DescribeEcsClustersResult { "EcsClusters" :: NullOrUndefined (EcsClusters), "NextToken" :: NullOrUndefined (String) }
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
newDescribeEcsClustersResult' :: ({ "EcsClusters" :: NullOrUndefined (EcsClusters), "NextToken" :: NullOrUndefined (String) } -> { "EcsClusters" :: NullOrUndefined (EcsClusters), "NextToken" :: NullOrUndefined (String) }) -> DescribeEcsClustersResult
```

Constructs DescribeEcsClustersResult's fields from required parameters

#### `DescribeElasticIpsRequest`

``` purescript
newtype DescribeElasticIpsRequest
  = DescribeElasticIpsRequest { "InstanceId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "Ips" :: NullOrUndefined (Strings) }
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
newDescribeElasticIpsRequest' :: ({ "InstanceId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "Ips" :: NullOrUndefined (Strings) } -> { "InstanceId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "Ips" :: NullOrUndefined (Strings) }) -> DescribeElasticIpsRequest
```

Constructs DescribeElasticIpsRequest's fields from required parameters

#### `DescribeElasticIpsResult`

``` purescript
newtype DescribeElasticIpsResult
  = DescribeElasticIpsResult { "ElasticIps" :: NullOrUndefined (ElasticIps) }
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
newDescribeElasticIpsResult' :: ({ "ElasticIps" :: NullOrUndefined (ElasticIps) } -> { "ElasticIps" :: NullOrUndefined (ElasticIps) }) -> DescribeElasticIpsResult
```

Constructs DescribeElasticIpsResult's fields from required parameters

#### `DescribeElasticLoadBalancersRequest`

``` purescript
newtype DescribeElasticLoadBalancersRequest
  = DescribeElasticLoadBalancersRequest { "StackId" :: NullOrUndefined (String), "LayerIds" :: NullOrUndefined (Strings) }
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
newDescribeElasticLoadBalancersRequest' :: ({ "StackId" :: NullOrUndefined (String), "LayerIds" :: NullOrUndefined (Strings) } -> { "StackId" :: NullOrUndefined (String), "LayerIds" :: NullOrUndefined (Strings) }) -> DescribeElasticLoadBalancersRequest
```

Constructs DescribeElasticLoadBalancersRequest's fields from required parameters

#### `DescribeElasticLoadBalancersResult`

``` purescript
newtype DescribeElasticLoadBalancersResult
  = DescribeElasticLoadBalancersResult { "ElasticLoadBalancers" :: NullOrUndefined (ElasticLoadBalancers) }
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
newDescribeElasticLoadBalancersResult' :: ({ "ElasticLoadBalancers" :: NullOrUndefined (ElasticLoadBalancers) } -> { "ElasticLoadBalancers" :: NullOrUndefined (ElasticLoadBalancers) }) -> DescribeElasticLoadBalancersResult
```

Constructs DescribeElasticLoadBalancersResult's fields from required parameters

#### `DescribeInstancesRequest`

``` purescript
newtype DescribeInstancesRequest
  = DescribeInstancesRequest { "StackId" :: NullOrUndefined (String), "LayerId" :: NullOrUndefined (String), "InstanceIds" :: NullOrUndefined (Strings) }
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
newDescribeInstancesRequest' :: ({ "StackId" :: NullOrUndefined (String), "LayerId" :: NullOrUndefined (String), "InstanceIds" :: NullOrUndefined (Strings) } -> { "StackId" :: NullOrUndefined (String), "LayerId" :: NullOrUndefined (String), "InstanceIds" :: NullOrUndefined (Strings) }) -> DescribeInstancesRequest
```

Constructs DescribeInstancesRequest's fields from required parameters

#### `DescribeInstancesResult`

``` purescript
newtype DescribeInstancesResult
  = DescribeInstancesResult { "Instances" :: NullOrUndefined (Instances) }
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
newDescribeInstancesResult' :: ({ "Instances" :: NullOrUndefined (Instances) } -> { "Instances" :: NullOrUndefined (Instances) }) -> DescribeInstancesResult
```

Constructs DescribeInstancesResult's fields from required parameters

#### `DescribeLayersRequest`

``` purescript
newtype DescribeLayersRequest
  = DescribeLayersRequest { "StackId" :: NullOrUndefined (String), "LayerIds" :: NullOrUndefined (Strings) }
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
newDescribeLayersRequest' :: ({ "StackId" :: NullOrUndefined (String), "LayerIds" :: NullOrUndefined (Strings) } -> { "StackId" :: NullOrUndefined (String), "LayerIds" :: NullOrUndefined (Strings) }) -> DescribeLayersRequest
```

Constructs DescribeLayersRequest's fields from required parameters

#### `DescribeLayersResult`

``` purescript
newtype DescribeLayersResult
  = DescribeLayersResult { "Layers" :: NullOrUndefined (Layers) }
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
newDescribeLayersResult' :: ({ "Layers" :: NullOrUndefined (Layers) } -> { "Layers" :: NullOrUndefined (Layers) }) -> DescribeLayersResult
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
  = DescribeLoadBasedAutoScalingResult { "LoadBasedAutoScalingConfigurations" :: NullOrUndefined (LoadBasedAutoScalingConfigurations) }
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
newDescribeLoadBasedAutoScalingResult' :: ({ "LoadBasedAutoScalingConfigurations" :: NullOrUndefined (LoadBasedAutoScalingConfigurations) } -> { "LoadBasedAutoScalingConfigurations" :: NullOrUndefined (LoadBasedAutoScalingConfigurations) }) -> DescribeLoadBasedAutoScalingResult
```

Constructs DescribeLoadBasedAutoScalingResult's fields from required parameters

#### `DescribeMyUserProfileResult`

``` purescript
newtype DescribeMyUserProfileResult
  = DescribeMyUserProfileResult { "UserProfile" :: NullOrUndefined (SelfUserProfile) }
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
newDescribeMyUserProfileResult' :: ({ "UserProfile" :: NullOrUndefined (SelfUserProfile) } -> { "UserProfile" :: NullOrUndefined (SelfUserProfile) }) -> DescribeMyUserProfileResult
```

Constructs DescribeMyUserProfileResult's fields from required parameters

#### `DescribeOperatingSystemsResponse`

``` purescript
newtype DescribeOperatingSystemsResponse
  = DescribeOperatingSystemsResponse { "OperatingSystems" :: NullOrUndefined (OperatingSystems) }
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
newDescribeOperatingSystemsResponse' :: ({ "OperatingSystems" :: NullOrUndefined (OperatingSystems) } -> { "OperatingSystems" :: NullOrUndefined (OperatingSystems) }) -> DescribeOperatingSystemsResponse
```

Constructs DescribeOperatingSystemsResponse's fields from required parameters

#### `DescribePermissionsRequest`

``` purescript
newtype DescribePermissionsRequest
  = DescribePermissionsRequest { "IamUserArn" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String) }
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
newDescribePermissionsRequest' :: ({ "IamUserArn" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String) } -> { "IamUserArn" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String) }) -> DescribePermissionsRequest
```

Constructs DescribePermissionsRequest's fields from required parameters

#### `DescribePermissionsResult`

``` purescript
newtype DescribePermissionsResult
  = DescribePermissionsResult { "Permissions" :: NullOrUndefined (Permissions) }
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
newDescribePermissionsResult' :: ({ "Permissions" :: NullOrUndefined (Permissions) } -> { "Permissions" :: NullOrUndefined (Permissions) }) -> DescribePermissionsResult
```

Constructs DescribePermissionsResult's fields from required parameters

#### `DescribeRaidArraysRequest`

``` purescript
newtype DescribeRaidArraysRequest
  = DescribeRaidArraysRequest { "InstanceId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "RaidArrayIds" :: NullOrUndefined (Strings) }
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
newDescribeRaidArraysRequest' :: ({ "InstanceId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "RaidArrayIds" :: NullOrUndefined (Strings) } -> { "InstanceId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "RaidArrayIds" :: NullOrUndefined (Strings) }) -> DescribeRaidArraysRequest
```

Constructs DescribeRaidArraysRequest's fields from required parameters

#### `DescribeRaidArraysResult`

``` purescript
newtype DescribeRaidArraysResult
  = DescribeRaidArraysResult { "RaidArrays" :: NullOrUndefined (RaidArrays) }
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
newDescribeRaidArraysResult' :: ({ "RaidArrays" :: NullOrUndefined (RaidArrays) } -> { "RaidArrays" :: NullOrUndefined (RaidArrays) }) -> DescribeRaidArraysResult
```

Constructs DescribeRaidArraysResult's fields from required parameters

#### `DescribeRdsDbInstancesRequest`

``` purescript
newtype DescribeRdsDbInstancesRequest
  = DescribeRdsDbInstancesRequest { "StackId" :: String, "RdsDbInstanceArns" :: NullOrUndefined (Strings) }
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
newDescribeRdsDbInstancesRequest' :: String -> ({ "StackId" :: String, "RdsDbInstanceArns" :: NullOrUndefined (Strings) } -> { "StackId" :: String, "RdsDbInstanceArns" :: NullOrUndefined (Strings) }) -> DescribeRdsDbInstancesRequest
```

Constructs DescribeRdsDbInstancesRequest's fields from required parameters

#### `DescribeRdsDbInstancesResult`

``` purescript
newtype DescribeRdsDbInstancesResult
  = DescribeRdsDbInstancesResult { "RdsDbInstances" :: NullOrUndefined (RdsDbInstances) }
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
newDescribeRdsDbInstancesResult' :: ({ "RdsDbInstances" :: NullOrUndefined (RdsDbInstances) } -> { "RdsDbInstances" :: NullOrUndefined (RdsDbInstances) }) -> DescribeRdsDbInstancesResult
```

Constructs DescribeRdsDbInstancesResult's fields from required parameters

#### `DescribeServiceErrorsRequest`

``` purescript
newtype DescribeServiceErrorsRequest
  = DescribeServiceErrorsRequest { "StackId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "ServiceErrorIds" :: NullOrUndefined (Strings) }
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
newDescribeServiceErrorsRequest' :: ({ "StackId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "ServiceErrorIds" :: NullOrUndefined (Strings) } -> { "StackId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "ServiceErrorIds" :: NullOrUndefined (Strings) }) -> DescribeServiceErrorsRequest
```

Constructs DescribeServiceErrorsRequest's fields from required parameters

#### `DescribeServiceErrorsResult`

``` purescript
newtype DescribeServiceErrorsResult
  = DescribeServiceErrorsResult { "ServiceErrors" :: NullOrUndefined (ServiceErrors) }
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
newDescribeServiceErrorsResult' :: ({ "ServiceErrors" :: NullOrUndefined (ServiceErrors) } -> { "ServiceErrors" :: NullOrUndefined (ServiceErrors) }) -> DescribeServiceErrorsResult
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
  = DescribeStackProvisioningParametersResult { "AgentInstallerUrl" :: NullOrUndefined (String), "Parameters" :: NullOrUndefined (Parameters) }
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
newDescribeStackProvisioningParametersResult' :: ({ "AgentInstallerUrl" :: NullOrUndefined (String), "Parameters" :: NullOrUndefined (Parameters) } -> { "AgentInstallerUrl" :: NullOrUndefined (String), "Parameters" :: NullOrUndefined (Parameters) }) -> DescribeStackProvisioningParametersResult
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
  = DescribeStackSummaryResult { "StackSummary" :: NullOrUndefined (StackSummary) }
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
newDescribeStackSummaryResult' :: ({ "StackSummary" :: NullOrUndefined (StackSummary) } -> { "StackSummary" :: NullOrUndefined (StackSummary) }) -> DescribeStackSummaryResult
```

Constructs DescribeStackSummaryResult's fields from required parameters

#### `DescribeStacksRequest`

``` purescript
newtype DescribeStacksRequest
  = DescribeStacksRequest { "StackIds" :: NullOrUndefined (Strings) }
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
newDescribeStacksRequest' :: ({ "StackIds" :: NullOrUndefined (Strings) } -> { "StackIds" :: NullOrUndefined (Strings) }) -> DescribeStacksRequest
```

Constructs DescribeStacksRequest's fields from required parameters

#### `DescribeStacksResult`

``` purescript
newtype DescribeStacksResult
  = DescribeStacksResult { "Stacks" :: NullOrUndefined (Stacks) }
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
newDescribeStacksResult' :: ({ "Stacks" :: NullOrUndefined (Stacks) } -> { "Stacks" :: NullOrUndefined (Stacks) }) -> DescribeStacksResult
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
  = DescribeTimeBasedAutoScalingResult { "TimeBasedAutoScalingConfigurations" :: NullOrUndefined (TimeBasedAutoScalingConfigurations) }
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
newDescribeTimeBasedAutoScalingResult' :: ({ "TimeBasedAutoScalingConfigurations" :: NullOrUndefined (TimeBasedAutoScalingConfigurations) } -> { "TimeBasedAutoScalingConfigurations" :: NullOrUndefined (TimeBasedAutoScalingConfigurations) }) -> DescribeTimeBasedAutoScalingResult
```

Constructs DescribeTimeBasedAutoScalingResult's fields from required parameters

#### `DescribeUserProfilesRequest`

``` purescript
newtype DescribeUserProfilesRequest
  = DescribeUserProfilesRequest { "IamUserArns" :: NullOrUndefined (Strings) }
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
newDescribeUserProfilesRequest' :: ({ "IamUserArns" :: NullOrUndefined (Strings) } -> { "IamUserArns" :: NullOrUndefined (Strings) }) -> DescribeUserProfilesRequest
```

Constructs DescribeUserProfilesRequest's fields from required parameters

#### `DescribeUserProfilesResult`

``` purescript
newtype DescribeUserProfilesResult
  = DescribeUserProfilesResult { "UserProfiles" :: NullOrUndefined (UserProfiles) }
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
newDescribeUserProfilesResult' :: ({ "UserProfiles" :: NullOrUndefined (UserProfiles) } -> { "UserProfiles" :: NullOrUndefined (UserProfiles) }) -> DescribeUserProfilesResult
```

Constructs DescribeUserProfilesResult's fields from required parameters

#### `DescribeVolumesRequest`

``` purescript
newtype DescribeVolumesRequest
  = DescribeVolumesRequest { "InstanceId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "RaidArrayId" :: NullOrUndefined (String), "VolumeIds" :: NullOrUndefined (Strings) }
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
newDescribeVolumesRequest' :: ({ "InstanceId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "RaidArrayId" :: NullOrUndefined (String), "VolumeIds" :: NullOrUndefined (Strings) } -> { "InstanceId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "RaidArrayId" :: NullOrUndefined (String), "VolumeIds" :: NullOrUndefined (Strings) }) -> DescribeVolumesRequest
```

Constructs DescribeVolumesRequest's fields from required parameters

#### `DescribeVolumesResult`

``` purescript
newtype DescribeVolumesResult
  = DescribeVolumesResult { "Volumes" :: NullOrUndefined (Volumes) }
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
newDescribeVolumesResult' :: ({ "Volumes" :: NullOrUndefined (Volumes) } -> { "Volumes" :: NullOrUndefined (Volumes) }) -> DescribeVolumesResult
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
  = EbsBlockDevice { "SnapshotId" :: NullOrUndefined (String), "Iops" :: NullOrUndefined (Int), "VolumeSize" :: NullOrUndefined (Int), "VolumeType" :: NullOrUndefined (VolumeType), "DeleteOnTermination" :: NullOrUndefined (Boolean) }
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
newEbsBlockDevice' :: ({ "SnapshotId" :: NullOrUndefined (String), "Iops" :: NullOrUndefined (Int), "VolumeSize" :: NullOrUndefined (Int), "VolumeType" :: NullOrUndefined (VolumeType), "DeleteOnTermination" :: NullOrUndefined (Boolean) } -> { "SnapshotId" :: NullOrUndefined (String), "Iops" :: NullOrUndefined (Int), "VolumeSize" :: NullOrUndefined (Int), "VolumeType" :: NullOrUndefined (VolumeType), "DeleteOnTermination" :: NullOrUndefined (Boolean) }) -> EbsBlockDevice
```

Constructs EbsBlockDevice's fields from required parameters

#### `EcsCluster`

``` purescript
newtype EcsCluster
  = EcsCluster { "EcsClusterArn" :: NullOrUndefined (String), "EcsClusterName" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "RegisteredAt" :: NullOrUndefined (DateTime) }
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
newEcsCluster' :: ({ "EcsClusterArn" :: NullOrUndefined (String), "EcsClusterName" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "RegisteredAt" :: NullOrUndefined (DateTime) } -> { "EcsClusterArn" :: NullOrUndefined (String), "EcsClusterName" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "RegisteredAt" :: NullOrUndefined (DateTime) }) -> EcsCluster
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
  = ElasticIp { "Ip" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Domain" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String) }
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
newElasticIp' :: ({ "Ip" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Domain" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String) } -> { "Ip" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Domain" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String) }) -> ElasticIp
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
  = ElasticLoadBalancer { "ElasticLoadBalancerName" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "DnsName" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "LayerId" :: NullOrUndefined (String), "VpcId" :: NullOrUndefined (String), "AvailabilityZones" :: NullOrUndefined (Strings), "SubnetIds" :: NullOrUndefined (Strings), "Ec2InstanceIds" :: NullOrUndefined (Strings) }
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
newElasticLoadBalancer' :: ({ "ElasticLoadBalancerName" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "DnsName" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "LayerId" :: NullOrUndefined (String), "VpcId" :: NullOrUndefined (String), "AvailabilityZones" :: NullOrUndefined (Strings), "SubnetIds" :: NullOrUndefined (Strings), "Ec2InstanceIds" :: NullOrUndefined (Strings) } -> { "ElasticLoadBalancerName" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "DnsName" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "LayerId" :: NullOrUndefined (String), "VpcId" :: NullOrUndefined (String), "AvailabilityZones" :: NullOrUndefined (Strings), "SubnetIds" :: NullOrUndefined (Strings), "Ec2InstanceIds" :: NullOrUndefined (Strings) }) -> ElasticLoadBalancer
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
  = EnvironmentVariable { "Key" :: String, "Value" :: String, "Secure" :: NullOrUndefined (Boolean) }
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
newEnvironmentVariable' :: String -> String -> ({ "Key" :: String, "Value" :: String, "Secure" :: NullOrUndefined (Boolean) } -> { "Key" :: String, "Value" :: String, "Secure" :: NullOrUndefined (Boolean) }) -> EnvironmentVariable
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
  = GetHostnameSuggestionResult { "LayerId" :: NullOrUndefined (String), "Hostname" :: NullOrUndefined (String) }
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
newGetHostnameSuggestionResult' :: ({ "LayerId" :: NullOrUndefined (String), "Hostname" :: NullOrUndefined (String) } -> { "LayerId" :: NullOrUndefined (String), "Hostname" :: NullOrUndefined (String) }) -> GetHostnameSuggestionResult
```

Constructs GetHostnameSuggestionResult's fields from required parameters

#### `GrantAccessRequest`

``` purescript
newtype GrantAccessRequest
  = GrantAccessRequest { "InstanceId" :: String, "ValidForInMinutes" :: NullOrUndefined (ValidForInMinutes) }
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
newGrantAccessRequest' :: String -> ({ "InstanceId" :: String, "ValidForInMinutes" :: NullOrUndefined (ValidForInMinutes) } -> { "InstanceId" :: String, "ValidForInMinutes" :: NullOrUndefined (ValidForInMinutes) }) -> GrantAccessRequest
```

Constructs GrantAccessRequest's fields from required parameters

#### `GrantAccessResult`

``` purescript
newtype GrantAccessResult
  = GrantAccessResult { "TemporaryCredential" :: NullOrUndefined (TemporaryCredential) }
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
newGrantAccessResult' :: ({ "TemporaryCredential" :: NullOrUndefined (TemporaryCredential) } -> { "TemporaryCredential" :: NullOrUndefined (TemporaryCredential) }) -> GrantAccessResult
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
  = Instance { "AgentVersion" :: NullOrUndefined (String), "AmiId" :: NullOrUndefined (String), "Architecture" :: NullOrUndefined (Architecture), "Arn" :: NullOrUndefined (String), "AutoScalingType" :: NullOrUndefined (AutoScalingType), "AvailabilityZone" :: NullOrUndefined (String), "BlockDeviceMappings" :: NullOrUndefined (BlockDeviceMappings), "CreatedAt" :: NullOrUndefined (DateTime), "EbsOptimized" :: NullOrUndefined (Boolean), "Ec2InstanceId" :: NullOrUndefined (String), "EcsClusterArn" :: NullOrUndefined (String), "EcsContainerInstanceArn" :: NullOrUndefined (String), "ElasticIp" :: NullOrUndefined (String), "Hostname" :: NullOrUndefined (String), "InfrastructureClass" :: NullOrUndefined (String), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "InstanceId" :: NullOrUndefined (String), "InstanceProfileArn" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (String), "LastServiceErrorId" :: NullOrUndefined (String), "LayerIds" :: NullOrUndefined (Strings), "Os" :: NullOrUndefined (String), "Platform" :: NullOrUndefined (String), "PrivateDns" :: NullOrUndefined (String), "PrivateIp" :: NullOrUndefined (String), "PublicDns" :: NullOrUndefined (String), "PublicIp" :: NullOrUndefined (String), "RegisteredBy" :: NullOrUndefined (String), "ReportedAgentVersion" :: NullOrUndefined (String), "ReportedOs" :: NullOrUndefined (ReportedOs), "RootDeviceType" :: NullOrUndefined (RootDeviceType), "RootDeviceVolumeId" :: NullOrUndefined (String), "SecurityGroupIds" :: NullOrUndefined (Strings), "SshHostDsaKeyFingerprint" :: NullOrUndefined (String), "SshHostRsaKeyFingerprint" :: NullOrUndefined (String), "SshKeyName" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "Status" :: NullOrUndefined (String), "SubnetId" :: NullOrUndefined (String), "Tenancy" :: NullOrUndefined (String), "VirtualizationType" :: NullOrUndefined (VirtualizationType) }
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
newInstance' :: ({ "AgentVersion" :: NullOrUndefined (String), "AmiId" :: NullOrUndefined (String), "Architecture" :: NullOrUndefined (Architecture), "Arn" :: NullOrUndefined (String), "AutoScalingType" :: NullOrUndefined (AutoScalingType), "AvailabilityZone" :: NullOrUndefined (String), "BlockDeviceMappings" :: NullOrUndefined (BlockDeviceMappings), "CreatedAt" :: NullOrUndefined (DateTime), "EbsOptimized" :: NullOrUndefined (Boolean), "Ec2InstanceId" :: NullOrUndefined (String), "EcsClusterArn" :: NullOrUndefined (String), "EcsContainerInstanceArn" :: NullOrUndefined (String), "ElasticIp" :: NullOrUndefined (String), "Hostname" :: NullOrUndefined (String), "InfrastructureClass" :: NullOrUndefined (String), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "InstanceId" :: NullOrUndefined (String), "InstanceProfileArn" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (String), "LastServiceErrorId" :: NullOrUndefined (String), "LayerIds" :: NullOrUndefined (Strings), "Os" :: NullOrUndefined (String), "Platform" :: NullOrUndefined (String), "PrivateDns" :: NullOrUndefined (String), "PrivateIp" :: NullOrUndefined (String), "PublicDns" :: NullOrUndefined (String), "PublicIp" :: NullOrUndefined (String), "RegisteredBy" :: NullOrUndefined (String), "ReportedAgentVersion" :: NullOrUndefined (String), "ReportedOs" :: NullOrUndefined (ReportedOs), "RootDeviceType" :: NullOrUndefined (RootDeviceType), "RootDeviceVolumeId" :: NullOrUndefined (String), "SecurityGroupIds" :: NullOrUndefined (Strings), "SshHostDsaKeyFingerprint" :: NullOrUndefined (String), "SshHostRsaKeyFingerprint" :: NullOrUndefined (String), "SshKeyName" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "Status" :: NullOrUndefined (String), "SubnetId" :: NullOrUndefined (String), "Tenancy" :: NullOrUndefined (String), "VirtualizationType" :: NullOrUndefined (VirtualizationType) } -> { "AgentVersion" :: NullOrUndefined (String), "AmiId" :: NullOrUndefined (String), "Architecture" :: NullOrUndefined (Architecture), "Arn" :: NullOrUndefined (String), "AutoScalingType" :: NullOrUndefined (AutoScalingType), "AvailabilityZone" :: NullOrUndefined (String), "BlockDeviceMappings" :: NullOrUndefined (BlockDeviceMappings), "CreatedAt" :: NullOrUndefined (DateTime), "EbsOptimized" :: NullOrUndefined (Boolean), "Ec2InstanceId" :: NullOrUndefined (String), "EcsClusterArn" :: NullOrUndefined (String), "EcsContainerInstanceArn" :: NullOrUndefined (String), "ElasticIp" :: NullOrUndefined (String), "Hostname" :: NullOrUndefined (String), "InfrastructureClass" :: NullOrUndefined (String), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "InstanceId" :: NullOrUndefined (String), "InstanceProfileArn" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (String), "LastServiceErrorId" :: NullOrUndefined (String), "LayerIds" :: NullOrUndefined (Strings), "Os" :: NullOrUndefined (String), "Platform" :: NullOrUndefined (String), "PrivateDns" :: NullOrUndefined (String), "PrivateIp" :: NullOrUndefined (String), "PublicDns" :: NullOrUndefined (String), "PublicIp" :: NullOrUndefined (String), "RegisteredBy" :: NullOrUndefined (String), "ReportedAgentVersion" :: NullOrUndefined (String), "ReportedOs" :: NullOrUndefined (ReportedOs), "RootDeviceType" :: NullOrUndefined (RootDeviceType), "RootDeviceVolumeId" :: NullOrUndefined (String), "SecurityGroupIds" :: NullOrUndefined (Strings), "SshHostDsaKeyFingerprint" :: NullOrUndefined (String), "SshHostRsaKeyFingerprint" :: NullOrUndefined (String), "SshKeyName" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "Status" :: NullOrUndefined (String), "SubnetId" :: NullOrUndefined (String), "Tenancy" :: NullOrUndefined (String), "VirtualizationType" :: NullOrUndefined (VirtualizationType) }) -> Instance
```

Constructs Instance's fields from required parameters

#### `InstanceIdentity`

``` purescript
newtype InstanceIdentity
  = InstanceIdentity { "Document" :: NullOrUndefined (String), "Signature" :: NullOrUndefined (String) }
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
newInstanceIdentity' :: ({ "Document" :: NullOrUndefined (String), "Signature" :: NullOrUndefined (String) } -> { "Document" :: NullOrUndefined (String), "Signature" :: NullOrUndefined (String) }) -> InstanceIdentity
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
  = InstancesCount { "Assigning" :: NullOrUndefined (Int), "Booting" :: NullOrUndefined (Int), "ConnectionLost" :: NullOrUndefined (Int), "Deregistering" :: NullOrUndefined (Int), "Online" :: NullOrUndefined (Int), "Pending" :: NullOrUndefined (Int), "Rebooting" :: NullOrUndefined (Int), "Registered" :: NullOrUndefined (Int), "Registering" :: NullOrUndefined (Int), "Requested" :: NullOrUndefined (Int), "RunningSetup" :: NullOrUndefined (Int), "SetupFailed" :: NullOrUndefined (Int), "ShuttingDown" :: NullOrUndefined (Int), "StartFailed" :: NullOrUndefined (Int), "StopFailed" :: NullOrUndefined (Int), "Stopped" :: NullOrUndefined (Int), "Stopping" :: NullOrUndefined (Int), "Terminated" :: NullOrUndefined (Int), "Terminating" :: NullOrUndefined (Int), "Unassigning" :: NullOrUndefined (Int) }
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
newInstancesCount' :: ({ "Assigning" :: NullOrUndefined (Int), "Booting" :: NullOrUndefined (Int), "ConnectionLost" :: NullOrUndefined (Int), "Deregistering" :: NullOrUndefined (Int), "Online" :: NullOrUndefined (Int), "Pending" :: NullOrUndefined (Int), "Rebooting" :: NullOrUndefined (Int), "Registered" :: NullOrUndefined (Int), "Registering" :: NullOrUndefined (Int), "Requested" :: NullOrUndefined (Int), "RunningSetup" :: NullOrUndefined (Int), "SetupFailed" :: NullOrUndefined (Int), "ShuttingDown" :: NullOrUndefined (Int), "StartFailed" :: NullOrUndefined (Int), "StopFailed" :: NullOrUndefined (Int), "Stopped" :: NullOrUndefined (Int), "Stopping" :: NullOrUndefined (Int), "Terminated" :: NullOrUndefined (Int), "Terminating" :: NullOrUndefined (Int), "Unassigning" :: NullOrUndefined (Int) } -> { "Assigning" :: NullOrUndefined (Int), "Booting" :: NullOrUndefined (Int), "ConnectionLost" :: NullOrUndefined (Int), "Deregistering" :: NullOrUndefined (Int), "Online" :: NullOrUndefined (Int), "Pending" :: NullOrUndefined (Int), "Rebooting" :: NullOrUndefined (Int), "Registered" :: NullOrUndefined (Int), "Registering" :: NullOrUndefined (Int), "Requested" :: NullOrUndefined (Int), "RunningSetup" :: NullOrUndefined (Int), "SetupFailed" :: NullOrUndefined (Int), "ShuttingDown" :: NullOrUndefined (Int), "StartFailed" :: NullOrUndefined (Int), "StopFailed" :: NullOrUndefined (Int), "Stopped" :: NullOrUndefined (Int), "Stopping" :: NullOrUndefined (Int), "Terminated" :: NullOrUndefined (Int), "Terminating" :: NullOrUndefined (Int), "Unassigning" :: NullOrUndefined (Int) }) -> InstancesCount
```

Constructs InstancesCount's fields from required parameters

#### `Layer`

``` purescript
newtype Layer
  = Layer { "Arn" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "LayerId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (LayerType), "Name" :: NullOrUndefined (String), "Shortname" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (LayerAttributes), "CloudWatchLogsConfiguration" :: NullOrUndefined (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "CustomSecurityGroupIds" :: NullOrUndefined (Strings), "DefaultSecurityGroupNames" :: NullOrUndefined (Strings), "Packages" :: NullOrUndefined (Strings), "VolumeConfigurations" :: NullOrUndefined (VolumeConfigurations), "EnableAutoHealing" :: NullOrUndefined (Boolean), "AutoAssignElasticIps" :: NullOrUndefined (Boolean), "AutoAssignPublicIps" :: NullOrUndefined (Boolean), "DefaultRecipes" :: NullOrUndefined (Recipes), "CustomRecipes" :: NullOrUndefined (Recipes), "CreatedAt" :: NullOrUndefined (DateTime), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "UseEbsOptimizedInstances" :: NullOrUndefined (Boolean), "LifecycleEventConfiguration" :: NullOrUndefined (LifecycleEventConfiguration) }
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
newLayer' :: ({ "Arn" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "LayerId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (LayerType), "Name" :: NullOrUndefined (String), "Shortname" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (LayerAttributes), "CloudWatchLogsConfiguration" :: NullOrUndefined (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "CustomSecurityGroupIds" :: NullOrUndefined (Strings), "DefaultSecurityGroupNames" :: NullOrUndefined (Strings), "Packages" :: NullOrUndefined (Strings), "VolumeConfigurations" :: NullOrUndefined (VolumeConfigurations), "EnableAutoHealing" :: NullOrUndefined (Boolean), "AutoAssignElasticIps" :: NullOrUndefined (Boolean), "AutoAssignPublicIps" :: NullOrUndefined (Boolean), "DefaultRecipes" :: NullOrUndefined (Recipes), "CustomRecipes" :: NullOrUndefined (Recipes), "CreatedAt" :: NullOrUndefined (DateTime), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "UseEbsOptimizedInstances" :: NullOrUndefined (Boolean), "LifecycleEventConfiguration" :: NullOrUndefined (LifecycleEventConfiguration) } -> { "Arn" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "LayerId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (LayerType), "Name" :: NullOrUndefined (String), "Shortname" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (LayerAttributes), "CloudWatchLogsConfiguration" :: NullOrUndefined (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "CustomSecurityGroupIds" :: NullOrUndefined (Strings), "DefaultSecurityGroupNames" :: NullOrUndefined (Strings), "Packages" :: NullOrUndefined (Strings), "VolumeConfigurations" :: NullOrUndefined (VolumeConfigurations), "EnableAutoHealing" :: NullOrUndefined (Boolean), "AutoAssignElasticIps" :: NullOrUndefined (Boolean), "AutoAssignPublicIps" :: NullOrUndefined (Boolean), "DefaultRecipes" :: NullOrUndefined (Recipes), "CustomRecipes" :: NullOrUndefined (Recipes), "CreatedAt" :: NullOrUndefined (DateTime), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "UseEbsOptimizedInstances" :: NullOrUndefined (Boolean), "LifecycleEventConfiguration" :: NullOrUndefined (LifecycleEventConfiguration) }) -> Layer
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
  = LifecycleEventConfiguration { "Shutdown" :: NullOrUndefined (ShutdownEventConfiguration) }
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
newLifecycleEventConfiguration' :: ({ "Shutdown" :: NullOrUndefined (ShutdownEventConfiguration) } -> { "Shutdown" :: NullOrUndefined (ShutdownEventConfiguration) }) -> LifecycleEventConfiguration
```

Constructs LifecycleEventConfiguration's fields from required parameters

#### `ListTagsRequest`

``` purescript
newtype ListTagsRequest
  = ListTagsRequest { "ResourceArn" :: ResourceArn, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }
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
newListTagsRequest' :: ResourceArn -> ({ "ResourceArn" :: ResourceArn, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) } -> { "ResourceArn" :: ResourceArn, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }) -> ListTagsRequest
```

Constructs ListTagsRequest's fields from required parameters

#### `ListTagsResult`

``` purescript
newtype ListTagsResult
  = ListTagsResult { "Tags" :: NullOrUndefined (Tags), "NextToken" :: NullOrUndefined (NextToken) }
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
newListTagsResult' :: ({ "Tags" :: NullOrUndefined (Tags), "NextToken" :: NullOrUndefined (NextToken) } -> { "Tags" :: NullOrUndefined (Tags), "NextToken" :: NullOrUndefined (NextToken) }) -> ListTagsResult
```

Constructs ListTagsResult's fields from required parameters

#### `LoadBasedAutoScalingConfiguration`

``` purescript
newtype LoadBasedAutoScalingConfiguration
  = LoadBasedAutoScalingConfiguration { "LayerId" :: NullOrUndefined (String), "Enable" :: NullOrUndefined (Boolean), "UpScaling" :: NullOrUndefined (AutoScalingThresholds), "DownScaling" :: NullOrUndefined (AutoScalingThresholds) }
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
newLoadBasedAutoScalingConfiguration' :: ({ "LayerId" :: NullOrUndefined (String), "Enable" :: NullOrUndefined (Boolean), "UpScaling" :: NullOrUndefined (AutoScalingThresholds), "DownScaling" :: NullOrUndefined (AutoScalingThresholds) } -> { "LayerId" :: NullOrUndefined (String), "Enable" :: NullOrUndefined (Boolean), "UpScaling" :: NullOrUndefined (AutoScalingThresholds), "DownScaling" :: NullOrUndefined (AutoScalingThresholds) }) -> LoadBasedAutoScalingConfiguration
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
  = OperatingSystem { "Name" :: NullOrUndefined (String), "Id" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String), "ConfigurationManagers" :: NullOrUndefined (OperatingSystemConfigurationManagers), "ReportedName" :: NullOrUndefined (String), "ReportedVersion" :: NullOrUndefined (String), "Supported" :: NullOrUndefined (Boolean) }
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
newOperatingSystem' :: ({ "Name" :: NullOrUndefined (String), "Id" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String), "ConfigurationManagers" :: NullOrUndefined (OperatingSystemConfigurationManagers), "ReportedName" :: NullOrUndefined (String), "ReportedVersion" :: NullOrUndefined (String), "Supported" :: NullOrUndefined (Boolean) } -> { "Name" :: NullOrUndefined (String), "Id" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String), "ConfigurationManagers" :: NullOrUndefined (OperatingSystemConfigurationManagers), "ReportedName" :: NullOrUndefined (String), "ReportedVersion" :: NullOrUndefined (String), "Supported" :: NullOrUndefined (Boolean) }) -> OperatingSystem
```

Constructs OperatingSystem's fields from required parameters

#### `OperatingSystemConfigurationManager`

``` purescript
newtype OperatingSystemConfigurationManager
  = OperatingSystemConfigurationManager { "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) }
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
newOperatingSystemConfigurationManager' :: ({ "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) } -> { "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) }) -> OperatingSystemConfigurationManager
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
  = Permission { "StackId" :: NullOrUndefined (String), "IamUserArn" :: NullOrUndefined (String), "AllowSsh" :: NullOrUndefined (Boolean), "AllowSudo" :: NullOrUndefined (Boolean), "Level" :: NullOrUndefined (String) }
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
newPermission' :: ({ "StackId" :: NullOrUndefined (String), "IamUserArn" :: NullOrUndefined (String), "AllowSsh" :: NullOrUndefined (Boolean), "AllowSudo" :: NullOrUndefined (Boolean), "Level" :: NullOrUndefined (String) } -> { "StackId" :: NullOrUndefined (String), "IamUserArn" :: NullOrUndefined (String), "AllowSsh" :: NullOrUndefined (Boolean), "AllowSudo" :: NullOrUndefined (Boolean), "Level" :: NullOrUndefined (String) }) -> Permission
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
  = RaidArray { "RaidArrayId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "RaidLevel" :: NullOrUndefined (Int), "NumberOfDisks" :: NullOrUndefined (Int), "Size" :: NullOrUndefined (Int), "Device" :: NullOrUndefined (String), "MountPoint" :: NullOrUndefined (String), "AvailabilityZone" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime), "StackId" :: NullOrUndefined (String), "VolumeType" :: NullOrUndefined (String), "Iops" :: NullOrUndefined (Int) }
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
newRaidArray' :: ({ "RaidArrayId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "RaidLevel" :: NullOrUndefined (Int), "NumberOfDisks" :: NullOrUndefined (Int), "Size" :: NullOrUndefined (Int), "Device" :: NullOrUndefined (String), "MountPoint" :: NullOrUndefined (String), "AvailabilityZone" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime), "StackId" :: NullOrUndefined (String), "VolumeType" :: NullOrUndefined (String), "Iops" :: NullOrUndefined (Int) } -> { "RaidArrayId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "RaidLevel" :: NullOrUndefined (Int), "NumberOfDisks" :: NullOrUndefined (Int), "Size" :: NullOrUndefined (Int), "Device" :: NullOrUndefined (String), "MountPoint" :: NullOrUndefined (String), "AvailabilityZone" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime), "StackId" :: NullOrUndefined (String), "VolumeType" :: NullOrUndefined (String), "Iops" :: NullOrUndefined (Int) }) -> RaidArray
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
  = RdsDbInstance { "RdsDbInstanceArn" :: NullOrUndefined (String), "DbInstanceIdentifier" :: NullOrUndefined (String), "DbUser" :: NullOrUndefined (String), "DbPassword" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "Address" :: NullOrUndefined (String), "Engine" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "MissingOnRds" :: NullOrUndefined (Boolean) }
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
newRdsDbInstance' :: ({ "RdsDbInstanceArn" :: NullOrUndefined (String), "DbInstanceIdentifier" :: NullOrUndefined (String), "DbUser" :: NullOrUndefined (String), "DbPassword" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "Address" :: NullOrUndefined (String), "Engine" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "MissingOnRds" :: NullOrUndefined (Boolean) } -> { "RdsDbInstanceArn" :: NullOrUndefined (String), "DbInstanceIdentifier" :: NullOrUndefined (String), "DbUser" :: NullOrUndefined (String), "DbPassword" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "Address" :: NullOrUndefined (String), "Engine" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "MissingOnRds" :: NullOrUndefined (Boolean) }) -> RdsDbInstance
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
  = Recipes { "Setup" :: NullOrUndefined (Strings), "Configure" :: NullOrUndefined (Strings), "Deploy" :: NullOrUndefined (Strings), "Undeploy" :: NullOrUndefined (Strings), "Shutdown" :: NullOrUndefined (Strings) }
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
newRecipes' :: ({ "Setup" :: NullOrUndefined (Strings), "Configure" :: NullOrUndefined (Strings), "Deploy" :: NullOrUndefined (Strings), "Undeploy" :: NullOrUndefined (Strings), "Shutdown" :: NullOrUndefined (Strings) } -> { "Setup" :: NullOrUndefined (Strings), "Configure" :: NullOrUndefined (Strings), "Deploy" :: NullOrUndefined (Strings), "Undeploy" :: NullOrUndefined (Strings), "Shutdown" :: NullOrUndefined (Strings) }) -> Recipes
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
  = RegisterEcsClusterResult { "EcsClusterArn" :: NullOrUndefined (String) }
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
newRegisterEcsClusterResult' :: ({ "EcsClusterArn" :: NullOrUndefined (String) } -> { "EcsClusterArn" :: NullOrUndefined (String) }) -> RegisterEcsClusterResult
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
  = RegisterElasticIpResult { "ElasticIp" :: NullOrUndefined (String) }
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
newRegisterElasticIpResult' :: ({ "ElasticIp" :: NullOrUndefined (String) } -> { "ElasticIp" :: NullOrUndefined (String) }) -> RegisterElasticIpResult
```

Constructs RegisterElasticIpResult's fields from required parameters

#### `RegisterInstanceRequest`

``` purescript
newtype RegisterInstanceRequest
  = RegisterInstanceRequest { "StackId" :: String, "Hostname" :: NullOrUndefined (String), "PublicIp" :: NullOrUndefined (String), "PrivateIp" :: NullOrUndefined (String), "RsaPublicKey" :: NullOrUndefined (String), "RsaPublicKeyFingerprint" :: NullOrUndefined (String), "InstanceIdentity" :: NullOrUndefined (InstanceIdentity) }
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
newRegisterInstanceRequest' :: String -> ({ "StackId" :: String, "Hostname" :: NullOrUndefined (String), "PublicIp" :: NullOrUndefined (String), "PrivateIp" :: NullOrUndefined (String), "RsaPublicKey" :: NullOrUndefined (String), "RsaPublicKeyFingerprint" :: NullOrUndefined (String), "InstanceIdentity" :: NullOrUndefined (InstanceIdentity) } -> { "StackId" :: String, "Hostname" :: NullOrUndefined (String), "PublicIp" :: NullOrUndefined (String), "PrivateIp" :: NullOrUndefined (String), "RsaPublicKey" :: NullOrUndefined (String), "RsaPublicKeyFingerprint" :: NullOrUndefined (String), "InstanceIdentity" :: NullOrUndefined (InstanceIdentity) }) -> RegisterInstanceRequest
```

Constructs RegisterInstanceRequest's fields from required parameters

#### `RegisterInstanceResult`

``` purescript
newtype RegisterInstanceResult
  = RegisterInstanceResult { "InstanceId" :: NullOrUndefined (String) }
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
newRegisterInstanceResult' :: ({ "InstanceId" :: NullOrUndefined (String) } -> { "InstanceId" :: NullOrUndefined (String) }) -> RegisterInstanceResult
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
  = RegisterVolumeRequest { "Ec2VolumeId" :: NullOrUndefined (String), "StackId" :: String }
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
newRegisterVolumeRequest' :: String -> ({ "Ec2VolumeId" :: NullOrUndefined (String), "StackId" :: String } -> { "Ec2VolumeId" :: NullOrUndefined (String), "StackId" :: String }) -> RegisterVolumeRequest
```

Constructs RegisterVolumeRequest's fields from required parameters

#### `RegisterVolumeResult`

``` purescript
newtype RegisterVolumeResult
  = RegisterVolumeResult { "VolumeId" :: NullOrUndefined (String) }
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
newRegisterVolumeResult' :: ({ "VolumeId" :: NullOrUndefined (String) } -> { "VolumeId" :: NullOrUndefined (String) }) -> RegisterVolumeResult
```

Constructs RegisterVolumeResult's fields from required parameters

#### `ReportedOs`

``` purescript
newtype ReportedOs
  = ReportedOs { "Family" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) }
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
newReportedOs' :: ({ "Family" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) } -> { "Family" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) }) -> ReportedOs
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
  = ResourceNotFoundException { message :: NullOrUndefined (String) }
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
newResourceNotFoundException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> ResourceNotFoundException
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
  = SelfUserProfile { "IamUserArn" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "SshUsername" :: NullOrUndefined (String), "SshPublicKey" :: NullOrUndefined (String) }
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
newSelfUserProfile' :: ({ "IamUserArn" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "SshUsername" :: NullOrUndefined (String), "SshPublicKey" :: NullOrUndefined (String) } -> { "IamUserArn" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "SshUsername" :: NullOrUndefined (String), "SshPublicKey" :: NullOrUndefined (String) }) -> SelfUserProfile
```

Constructs SelfUserProfile's fields from required parameters

#### `ServiceError`

``` purescript
newtype ServiceError
  = ServiceError { "ServiceErrorId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime) }
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
newServiceError' :: ({ "ServiceErrorId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime) } -> { "ServiceErrorId" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime) }) -> ServiceError
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
  = SetLoadBasedAutoScalingRequest { "LayerId" :: String, "Enable" :: NullOrUndefined (Boolean), "UpScaling" :: NullOrUndefined (AutoScalingThresholds), "DownScaling" :: NullOrUndefined (AutoScalingThresholds) }
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
newSetLoadBasedAutoScalingRequest' :: String -> ({ "LayerId" :: String, "Enable" :: NullOrUndefined (Boolean), "UpScaling" :: NullOrUndefined (AutoScalingThresholds), "DownScaling" :: NullOrUndefined (AutoScalingThresholds) } -> { "LayerId" :: String, "Enable" :: NullOrUndefined (Boolean), "UpScaling" :: NullOrUndefined (AutoScalingThresholds), "DownScaling" :: NullOrUndefined (AutoScalingThresholds) }) -> SetLoadBasedAutoScalingRequest
```

Constructs SetLoadBasedAutoScalingRequest's fields from required parameters

#### `SetPermissionRequest`

``` purescript
newtype SetPermissionRequest
  = SetPermissionRequest { "StackId" :: String, "IamUserArn" :: String, "AllowSsh" :: NullOrUndefined (Boolean), "AllowSudo" :: NullOrUndefined (Boolean), "Level" :: NullOrUndefined (String) }
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
newSetPermissionRequest' :: String -> String -> ({ "StackId" :: String, "IamUserArn" :: String, "AllowSsh" :: NullOrUndefined (Boolean), "AllowSudo" :: NullOrUndefined (Boolean), "Level" :: NullOrUndefined (String) } -> { "StackId" :: String, "IamUserArn" :: String, "AllowSsh" :: NullOrUndefined (Boolean), "AllowSudo" :: NullOrUndefined (Boolean), "Level" :: NullOrUndefined (String) }) -> SetPermissionRequest
```

Constructs SetPermissionRequest's fields from required parameters

#### `SetTimeBasedAutoScalingRequest`

``` purescript
newtype SetTimeBasedAutoScalingRequest
  = SetTimeBasedAutoScalingRequest { "InstanceId" :: String, "AutoScalingSchedule" :: NullOrUndefined (WeeklyAutoScalingSchedule) }
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
newSetTimeBasedAutoScalingRequest' :: String -> ({ "InstanceId" :: String, "AutoScalingSchedule" :: NullOrUndefined (WeeklyAutoScalingSchedule) } -> { "InstanceId" :: String, "AutoScalingSchedule" :: NullOrUndefined (WeeklyAutoScalingSchedule) }) -> SetTimeBasedAutoScalingRequest
```

Constructs SetTimeBasedAutoScalingRequest's fields from required parameters

#### `ShutdownEventConfiguration`

``` purescript
newtype ShutdownEventConfiguration
  = ShutdownEventConfiguration { "ExecutionTimeout" :: NullOrUndefined (Int), "DelayUntilElbConnectionsDrained" :: NullOrUndefined (Boolean) }
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
newShutdownEventConfiguration' :: ({ "ExecutionTimeout" :: NullOrUndefined (Int), "DelayUntilElbConnectionsDrained" :: NullOrUndefined (Boolean) } -> { "ExecutionTimeout" :: NullOrUndefined (Int), "DelayUntilElbConnectionsDrained" :: NullOrUndefined (Boolean) }) -> ShutdownEventConfiguration
```

Constructs ShutdownEventConfiguration's fields from required parameters

#### `Source`

``` purescript
newtype Source
  = Source { "Type" :: NullOrUndefined (SourceType), "Url" :: NullOrUndefined (String), "Username" :: NullOrUndefined (String), "Password" :: NullOrUndefined (String), "SshKey" :: NullOrUndefined (String), "Revision" :: NullOrUndefined (String) }
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
newSource' :: ({ "Type" :: NullOrUndefined (SourceType), "Url" :: NullOrUndefined (String), "Username" :: NullOrUndefined (String), "Password" :: NullOrUndefined (String), "SshKey" :: NullOrUndefined (String), "Revision" :: NullOrUndefined (String) } -> { "Type" :: NullOrUndefined (SourceType), "Url" :: NullOrUndefined (String), "Username" :: NullOrUndefined (String), "Password" :: NullOrUndefined (String), "SshKey" :: NullOrUndefined (String), "Revision" :: NullOrUndefined (String) }) -> Source
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
  = SslConfiguration { "Certificate" :: String, "PrivateKey" :: String, "Chain" :: NullOrUndefined (String) }
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
newSslConfiguration' :: String -> String -> ({ "Certificate" :: String, "PrivateKey" :: String, "Chain" :: NullOrUndefined (String) } -> { "Certificate" :: String, "PrivateKey" :: String, "Chain" :: NullOrUndefined (String) }) -> SslConfiguration
```

Constructs SslConfiguration's fields from required parameters

#### `Stack`

``` purescript
newtype Stack
  = Stack { "StackId" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Arn" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "VpcId" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (StackAttributes), "ServiceRoleArn" :: NullOrUndefined (String), "DefaultInstanceProfileArn" :: NullOrUndefined (String), "DefaultOs" :: NullOrUndefined (String), "HostnameTheme" :: NullOrUndefined (String), "DefaultAvailabilityZone" :: NullOrUndefined (String), "DefaultSubnetId" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager), "ChefConfiguration" :: NullOrUndefined (ChefConfiguration), "UseCustomCookbooks" :: NullOrUndefined (Boolean), "UseOpsworksSecurityGroups" :: NullOrUndefined (Boolean), "CustomCookbooksSource" :: NullOrUndefined (Source), "DefaultSshKeyName" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime), "DefaultRootDeviceType" :: NullOrUndefined (RootDeviceType), "AgentVersion" :: NullOrUndefined (String) }
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
newStack' :: ({ "StackId" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Arn" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "VpcId" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (StackAttributes), "ServiceRoleArn" :: NullOrUndefined (String), "DefaultInstanceProfileArn" :: NullOrUndefined (String), "DefaultOs" :: NullOrUndefined (String), "HostnameTheme" :: NullOrUndefined (String), "DefaultAvailabilityZone" :: NullOrUndefined (String), "DefaultSubnetId" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager), "ChefConfiguration" :: NullOrUndefined (ChefConfiguration), "UseCustomCookbooks" :: NullOrUndefined (Boolean), "UseOpsworksSecurityGroups" :: NullOrUndefined (Boolean), "CustomCookbooksSource" :: NullOrUndefined (Source), "DefaultSshKeyName" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime), "DefaultRootDeviceType" :: NullOrUndefined (RootDeviceType), "AgentVersion" :: NullOrUndefined (String) } -> { "StackId" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Arn" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "VpcId" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (StackAttributes), "ServiceRoleArn" :: NullOrUndefined (String), "DefaultInstanceProfileArn" :: NullOrUndefined (String), "DefaultOs" :: NullOrUndefined (String), "HostnameTheme" :: NullOrUndefined (String), "DefaultAvailabilityZone" :: NullOrUndefined (String), "DefaultSubnetId" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager), "ChefConfiguration" :: NullOrUndefined (ChefConfiguration), "UseCustomCookbooks" :: NullOrUndefined (Boolean), "UseOpsworksSecurityGroups" :: NullOrUndefined (Boolean), "CustomCookbooksSource" :: NullOrUndefined (Source), "DefaultSshKeyName" :: NullOrUndefined (String), "CreatedAt" :: NullOrUndefined (DateTime), "DefaultRootDeviceType" :: NullOrUndefined (RootDeviceType), "AgentVersion" :: NullOrUndefined (String) }) -> Stack
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
  = StackConfigurationManager { "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) }
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
newStackConfigurationManager' :: ({ "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) } -> { "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String) }) -> StackConfigurationManager
```

Constructs StackConfigurationManager's fields from required parameters

#### `StackSummary`

``` purescript
newtype StackSummary
  = StackSummary { "StackId" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Arn" :: NullOrUndefined (String), "LayersCount" :: NullOrUndefined (Int), "AppsCount" :: NullOrUndefined (Int), "InstancesCount" :: NullOrUndefined (InstancesCount) }
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
newStackSummary' :: ({ "StackId" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Arn" :: NullOrUndefined (String), "LayersCount" :: NullOrUndefined (Int), "AppsCount" :: NullOrUndefined (Int), "InstancesCount" :: NullOrUndefined (InstancesCount) } -> { "StackId" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "Arn" :: NullOrUndefined (String), "LayersCount" :: NullOrUndefined (Int), "AppsCount" :: NullOrUndefined (Int), "InstancesCount" :: NullOrUndefined (InstancesCount) }) -> StackSummary
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
  = StopInstanceRequest { "InstanceId" :: String, "Force" :: NullOrUndefined (Boolean) }
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
newStopInstanceRequest' :: String -> ({ "InstanceId" :: String, "Force" :: NullOrUndefined (Boolean) } -> { "InstanceId" :: String, "Force" :: NullOrUndefined (Boolean) }) -> StopInstanceRequest
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
  = TemporaryCredential { "Username" :: NullOrUndefined (String), "Password" :: NullOrUndefined (String), "ValidForInMinutes" :: NullOrUndefined (Int), "InstanceId" :: NullOrUndefined (String) }
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
newTemporaryCredential' :: ({ "Username" :: NullOrUndefined (String), "Password" :: NullOrUndefined (String), "ValidForInMinutes" :: NullOrUndefined (Int), "InstanceId" :: NullOrUndefined (String) } -> { "Username" :: NullOrUndefined (String), "Password" :: NullOrUndefined (String), "ValidForInMinutes" :: NullOrUndefined (Int), "InstanceId" :: NullOrUndefined (String) }) -> TemporaryCredential
```

Constructs TemporaryCredential's fields from required parameters

#### `TimeBasedAutoScalingConfiguration`

``` purescript
newtype TimeBasedAutoScalingConfiguration
  = TimeBasedAutoScalingConfiguration { "InstanceId" :: NullOrUndefined (String), "AutoScalingSchedule" :: NullOrUndefined (WeeklyAutoScalingSchedule) }
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
newTimeBasedAutoScalingConfiguration' :: ({ "InstanceId" :: NullOrUndefined (String), "AutoScalingSchedule" :: NullOrUndefined (WeeklyAutoScalingSchedule) } -> { "InstanceId" :: NullOrUndefined (String), "AutoScalingSchedule" :: NullOrUndefined (WeeklyAutoScalingSchedule) }) -> TimeBasedAutoScalingConfiguration
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
  = UpdateAppRequest { "AppId" :: String, "Name" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "DataSources" :: NullOrUndefined (DataSources), "Type" :: NullOrUndefined (AppType), "AppSource" :: NullOrUndefined (Source), "Domains" :: NullOrUndefined (Strings), "EnableSsl" :: NullOrUndefined (Boolean), "SslConfiguration" :: NullOrUndefined (SslConfiguration), "Attributes" :: NullOrUndefined (AppAttributes), "Environment" :: NullOrUndefined (EnvironmentVariables) }
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
newUpdateAppRequest' :: String -> ({ "AppId" :: String, "Name" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "DataSources" :: NullOrUndefined (DataSources), "Type" :: NullOrUndefined (AppType), "AppSource" :: NullOrUndefined (Source), "Domains" :: NullOrUndefined (Strings), "EnableSsl" :: NullOrUndefined (Boolean), "SslConfiguration" :: NullOrUndefined (SslConfiguration), "Attributes" :: NullOrUndefined (AppAttributes), "Environment" :: NullOrUndefined (EnvironmentVariables) } -> { "AppId" :: String, "Name" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "DataSources" :: NullOrUndefined (DataSources), "Type" :: NullOrUndefined (AppType), "AppSource" :: NullOrUndefined (Source), "Domains" :: NullOrUndefined (Strings), "EnableSsl" :: NullOrUndefined (Boolean), "SslConfiguration" :: NullOrUndefined (SslConfiguration), "Attributes" :: NullOrUndefined (AppAttributes), "Environment" :: NullOrUndefined (EnvironmentVariables) }) -> UpdateAppRequest
```

Constructs UpdateAppRequest's fields from required parameters

#### `UpdateElasticIpRequest`

``` purescript
newtype UpdateElasticIpRequest
  = UpdateElasticIpRequest { "ElasticIp" :: String, "Name" :: NullOrUndefined (String) }
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
newUpdateElasticIpRequest' :: String -> ({ "ElasticIp" :: String, "Name" :: NullOrUndefined (String) } -> { "ElasticIp" :: String, "Name" :: NullOrUndefined (String) }) -> UpdateElasticIpRequest
```

Constructs UpdateElasticIpRequest's fields from required parameters

#### `UpdateInstanceRequest`

``` purescript
newtype UpdateInstanceRequest
  = UpdateInstanceRequest { "InstanceId" :: String, "LayerIds" :: NullOrUndefined (Strings), "InstanceType" :: NullOrUndefined (String), "AutoScalingType" :: NullOrUndefined (AutoScalingType), "Hostname" :: NullOrUndefined (String), "Os" :: NullOrUndefined (String), "AmiId" :: NullOrUndefined (String), "SshKeyName" :: NullOrUndefined (String), "Architecture" :: NullOrUndefined (Architecture), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "EbsOptimized" :: NullOrUndefined (Boolean), "AgentVersion" :: NullOrUndefined (String) }
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
newUpdateInstanceRequest' :: String -> ({ "InstanceId" :: String, "LayerIds" :: NullOrUndefined (Strings), "InstanceType" :: NullOrUndefined (String), "AutoScalingType" :: NullOrUndefined (AutoScalingType), "Hostname" :: NullOrUndefined (String), "Os" :: NullOrUndefined (String), "AmiId" :: NullOrUndefined (String), "SshKeyName" :: NullOrUndefined (String), "Architecture" :: NullOrUndefined (Architecture), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "EbsOptimized" :: NullOrUndefined (Boolean), "AgentVersion" :: NullOrUndefined (String) } -> { "InstanceId" :: String, "LayerIds" :: NullOrUndefined (Strings), "InstanceType" :: NullOrUndefined (String), "AutoScalingType" :: NullOrUndefined (AutoScalingType), "Hostname" :: NullOrUndefined (String), "Os" :: NullOrUndefined (String), "AmiId" :: NullOrUndefined (String), "SshKeyName" :: NullOrUndefined (String), "Architecture" :: NullOrUndefined (Architecture), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "EbsOptimized" :: NullOrUndefined (Boolean), "AgentVersion" :: NullOrUndefined (String) }) -> UpdateInstanceRequest
```

Constructs UpdateInstanceRequest's fields from required parameters

#### `UpdateLayerRequest`

``` purescript
newtype UpdateLayerRequest
  = UpdateLayerRequest { "LayerId" :: String, "Name" :: NullOrUndefined (String), "Shortname" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (LayerAttributes), "CloudWatchLogsConfiguration" :: NullOrUndefined (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "CustomSecurityGroupIds" :: NullOrUndefined (Strings), "Packages" :: NullOrUndefined (Strings), "VolumeConfigurations" :: NullOrUndefined (VolumeConfigurations), "EnableAutoHealing" :: NullOrUndefined (Boolean), "AutoAssignElasticIps" :: NullOrUndefined (Boolean), "AutoAssignPublicIps" :: NullOrUndefined (Boolean), "CustomRecipes" :: NullOrUndefined (Recipes), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "UseEbsOptimizedInstances" :: NullOrUndefined (Boolean), "LifecycleEventConfiguration" :: NullOrUndefined (LifecycleEventConfiguration) }
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
newUpdateLayerRequest' :: String -> ({ "LayerId" :: String, "Name" :: NullOrUndefined (String), "Shortname" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (LayerAttributes), "CloudWatchLogsConfiguration" :: NullOrUndefined (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "CustomSecurityGroupIds" :: NullOrUndefined (Strings), "Packages" :: NullOrUndefined (Strings), "VolumeConfigurations" :: NullOrUndefined (VolumeConfigurations), "EnableAutoHealing" :: NullOrUndefined (Boolean), "AutoAssignElasticIps" :: NullOrUndefined (Boolean), "AutoAssignPublicIps" :: NullOrUndefined (Boolean), "CustomRecipes" :: NullOrUndefined (Recipes), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "UseEbsOptimizedInstances" :: NullOrUndefined (Boolean), "LifecycleEventConfiguration" :: NullOrUndefined (LifecycleEventConfiguration) } -> { "LayerId" :: String, "Name" :: NullOrUndefined (String), "Shortname" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (LayerAttributes), "CloudWatchLogsConfiguration" :: NullOrUndefined (CloudWatchLogsConfiguration), "CustomInstanceProfileArn" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "CustomSecurityGroupIds" :: NullOrUndefined (Strings), "Packages" :: NullOrUndefined (Strings), "VolumeConfigurations" :: NullOrUndefined (VolumeConfigurations), "EnableAutoHealing" :: NullOrUndefined (Boolean), "AutoAssignElasticIps" :: NullOrUndefined (Boolean), "AutoAssignPublicIps" :: NullOrUndefined (Boolean), "CustomRecipes" :: NullOrUndefined (Recipes), "InstallUpdatesOnBoot" :: NullOrUndefined (Boolean), "UseEbsOptimizedInstances" :: NullOrUndefined (Boolean), "LifecycleEventConfiguration" :: NullOrUndefined (LifecycleEventConfiguration) }) -> UpdateLayerRequest
```

Constructs UpdateLayerRequest's fields from required parameters

#### `UpdateMyUserProfileRequest`

``` purescript
newtype UpdateMyUserProfileRequest
  = UpdateMyUserProfileRequest { "SshPublicKey" :: NullOrUndefined (String) }
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
newUpdateMyUserProfileRequest' :: ({ "SshPublicKey" :: NullOrUndefined (String) } -> { "SshPublicKey" :: NullOrUndefined (String) }) -> UpdateMyUserProfileRequest
```

Constructs UpdateMyUserProfileRequest's fields from required parameters

#### `UpdateRdsDbInstanceRequest`

``` purescript
newtype UpdateRdsDbInstanceRequest
  = UpdateRdsDbInstanceRequest { "RdsDbInstanceArn" :: String, "DbUser" :: NullOrUndefined (String), "DbPassword" :: NullOrUndefined (String) }
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
newUpdateRdsDbInstanceRequest' :: String -> ({ "RdsDbInstanceArn" :: String, "DbUser" :: NullOrUndefined (String), "DbPassword" :: NullOrUndefined (String) } -> { "RdsDbInstanceArn" :: String, "DbUser" :: NullOrUndefined (String), "DbPassword" :: NullOrUndefined (String) }) -> UpdateRdsDbInstanceRequest
```

Constructs UpdateRdsDbInstanceRequest's fields from required parameters

#### `UpdateStackRequest`

``` purescript
newtype UpdateStackRequest
  = UpdateStackRequest { "StackId" :: String, "Name" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (StackAttributes), "ServiceRoleArn" :: NullOrUndefined (String), "DefaultInstanceProfileArn" :: NullOrUndefined (String), "DefaultOs" :: NullOrUndefined (String), "HostnameTheme" :: NullOrUndefined (String), "DefaultAvailabilityZone" :: NullOrUndefined (String), "DefaultSubnetId" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager), "ChefConfiguration" :: NullOrUndefined (ChefConfiguration), "UseCustomCookbooks" :: NullOrUndefined (Boolean), "CustomCookbooksSource" :: NullOrUndefined (Source), "DefaultSshKeyName" :: NullOrUndefined (String), "DefaultRootDeviceType" :: NullOrUndefined (RootDeviceType), "UseOpsworksSecurityGroups" :: NullOrUndefined (Boolean), "AgentVersion" :: NullOrUndefined (String) }
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
newUpdateStackRequest' :: String -> ({ "StackId" :: String, "Name" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (StackAttributes), "ServiceRoleArn" :: NullOrUndefined (String), "DefaultInstanceProfileArn" :: NullOrUndefined (String), "DefaultOs" :: NullOrUndefined (String), "HostnameTheme" :: NullOrUndefined (String), "DefaultAvailabilityZone" :: NullOrUndefined (String), "DefaultSubnetId" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager), "ChefConfiguration" :: NullOrUndefined (ChefConfiguration), "UseCustomCookbooks" :: NullOrUndefined (Boolean), "CustomCookbooksSource" :: NullOrUndefined (Source), "DefaultSshKeyName" :: NullOrUndefined (String), "DefaultRootDeviceType" :: NullOrUndefined (RootDeviceType), "UseOpsworksSecurityGroups" :: NullOrUndefined (Boolean), "AgentVersion" :: NullOrUndefined (String) } -> { "StackId" :: String, "Name" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (StackAttributes), "ServiceRoleArn" :: NullOrUndefined (String), "DefaultInstanceProfileArn" :: NullOrUndefined (String), "DefaultOs" :: NullOrUndefined (String), "HostnameTheme" :: NullOrUndefined (String), "DefaultAvailabilityZone" :: NullOrUndefined (String), "DefaultSubnetId" :: NullOrUndefined (String), "CustomJson" :: NullOrUndefined (String), "ConfigurationManager" :: NullOrUndefined (StackConfigurationManager), "ChefConfiguration" :: NullOrUndefined (ChefConfiguration), "UseCustomCookbooks" :: NullOrUndefined (Boolean), "CustomCookbooksSource" :: NullOrUndefined (Source), "DefaultSshKeyName" :: NullOrUndefined (String), "DefaultRootDeviceType" :: NullOrUndefined (RootDeviceType), "UseOpsworksSecurityGroups" :: NullOrUndefined (Boolean), "AgentVersion" :: NullOrUndefined (String) }) -> UpdateStackRequest
```

Constructs UpdateStackRequest's fields from required parameters

#### `UpdateUserProfileRequest`

``` purescript
newtype UpdateUserProfileRequest
  = UpdateUserProfileRequest { "IamUserArn" :: String, "SshUsername" :: NullOrUndefined (String), "SshPublicKey" :: NullOrUndefined (String), "AllowSelfManagement" :: NullOrUndefined (Boolean) }
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
newUpdateUserProfileRequest' :: String -> ({ "IamUserArn" :: String, "SshUsername" :: NullOrUndefined (String), "SshPublicKey" :: NullOrUndefined (String), "AllowSelfManagement" :: NullOrUndefined (Boolean) } -> { "IamUserArn" :: String, "SshUsername" :: NullOrUndefined (String), "SshPublicKey" :: NullOrUndefined (String), "AllowSelfManagement" :: NullOrUndefined (Boolean) }) -> UpdateUserProfileRequest
```

Constructs UpdateUserProfileRequest's fields from required parameters

#### `UpdateVolumeRequest`

``` purescript
newtype UpdateVolumeRequest
  = UpdateVolumeRequest { "VolumeId" :: String, "Name" :: NullOrUndefined (String), "MountPoint" :: NullOrUndefined (String) }
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
newUpdateVolumeRequest' :: String -> ({ "VolumeId" :: String, "Name" :: NullOrUndefined (String), "MountPoint" :: NullOrUndefined (String) } -> { "VolumeId" :: String, "Name" :: NullOrUndefined (String), "MountPoint" :: NullOrUndefined (String) }) -> UpdateVolumeRequest
```

Constructs UpdateVolumeRequest's fields from required parameters

#### `UserProfile`

``` purescript
newtype UserProfile
  = UserProfile { "IamUserArn" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "SshUsername" :: NullOrUndefined (String), "SshPublicKey" :: NullOrUndefined (String), "AllowSelfManagement" :: NullOrUndefined (Boolean) }
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
newUserProfile' :: ({ "IamUserArn" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "SshUsername" :: NullOrUndefined (String), "SshPublicKey" :: NullOrUndefined (String), "AllowSelfManagement" :: NullOrUndefined (Boolean) } -> { "IamUserArn" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "SshUsername" :: NullOrUndefined (String), "SshPublicKey" :: NullOrUndefined (String), "AllowSelfManagement" :: NullOrUndefined (Boolean) }) -> UserProfile
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
  = ValidationException { message :: NullOrUndefined (String) }
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
newValidationException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> ValidationException
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
  = Volume { "VolumeId" :: NullOrUndefined (String), "Ec2VolumeId" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "RaidArrayId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "Status" :: NullOrUndefined (String), "Size" :: NullOrUndefined (Int), "Device" :: NullOrUndefined (String), "MountPoint" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "AvailabilityZone" :: NullOrUndefined (String), "VolumeType" :: NullOrUndefined (String), "Iops" :: NullOrUndefined (Int), "Encrypted" :: NullOrUndefined (Boolean) }
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
newVolume' :: ({ "VolumeId" :: NullOrUndefined (String), "Ec2VolumeId" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "RaidArrayId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "Status" :: NullOrUndefined (String), "Size" :: NullOrUndefined (Int), "Device" :: NullOrUndefined (String), "MountPoint" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "AvailabilityZone" :: NullOrUndefined (String), "VolumeType" :: NullOrUndefined (String), "Iops" :: NullOrUndefined (Int), "Encrypted" :: NullOrUndefined (Boolean) } -> { "VolumeId" :: NullOrUndefined (String), "Ec2VolumeId" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "RaidArrayId" :: NullOrUndefined (String), "InstanceId" :: NullOrUndefined (String), "Status" :: NullOrUndefined (String), "Size" :: NullOrUndefined (Int), "Device" :: NullOrUndefined (String), "MountPoint" :: NullOrUndefined (String), "Region" :: NullOrUndefined (String), "AvailabilityZone" :: NullOrUndefined (String), "VolumeType" :: NullOrUndefined (String), "Iops" :: NullOrUndefined (Int), "Encrypted" :: NullOrUndefined (Boolean) }) -> Volume
```

Constructs Volume's fields from required parameters

#### `VolumeConfiguration`

``` purescript
newtype VolumeConfiguration
  = VolumeConfiguration { "MountPoint" :: String, "RaidLevel" :: NullOrUndefined (Int), "NumberOfDisks" :: Int, "Size" :: Int, "VolumeType" :: NullOrUndefined (String), "Iops" :: NullOrUndefined (Int), "Encrypted" :: NullOrUndefined (Boolean) }
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
newVolumeConfiguration' :: String -> Int -> Int -> ({ "MountPoint" :: String, "RaidLevel" :: NullOrUndefined (Int), "NumberOfDisks" :: Int, "Size" :: Int, "VolumeType" :: NullOrUndefined (String), "Iops" :: NullOrUndefined (Int), "Encrypted" :: NullOrUndefined (Boolean) } -> { "MountPoint" :: String, "RaidLevel" :: NullOrUndefined (Int), "NumberOfDisks" :: Int, "Size" :: Int, "VolumeType" :: NullOrUndefined (String), "Iops" :: NullOrUndefined (Int), "Encrypted" :: NullOrUndefined (Boolean) }) -> VolumeConfiguration
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
  = WeeklyAutoScalingSchedule { "Monday" :: NullOrUndefined (DailyAutoScalingSchedule), "Tuesday" :: NullOrUndefined (DailyAutoScalingSchedule), "Wednesday" :: NullOrUndefined (DailyAutoScalingSchedule), "Thursday" :: NullOrUndefined (DailyAutoScalingSchedule), "Friday" :: NullOrUndefined (DailyAutoScalingSchedule), "Saturday" :: NullOrUndefined (DailyAutoScalingSchedule), "Sunday" :: NullOrUndefined (DailyAutoScalingSchedule) }
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
newWeeklyAutoScalingSchedule' :: ({ "Monday" :: NullOrUndefined (DailyAutoScalingSchedule), "Tuesday" :: NullOrUndefined (DailyAutoScalingSchedule), "Wednesday" :: NullOrUndefined (DailyAutoScalingSchedule), "Thursday" :: NullOrUndefined (DailyAutoScalingSchedule), "Friday" :: NullOrUndefined (DailyAutoScalingSchedule), "Saturday" :: NullOrUndefined (DailyAutoScalingSchedule), "Sunday" :: NullOrUndefined (DailyAutoScalingSchedule) } -> { "Monday" :: NullOrUndefined (DailyAutoScalingSchedule), "Tuesday" :: NullOrUndefined (DailyAutoScalingSchedule), "Wednesday" :: NullOrUndefined (DailyAutoScalingSchedule), "Thursday" :: NullOrUndefined (DailyAutoScalingSchedule), "Friday" :: NullOrUndefined (DailyAutoScalingSchedule), "Saturday" :: NullOrUndefined (DailyAutoScalingSchedule), "Sunday" :: NullOrUndefined (DailyAutoScalingSchedule) }) -> WeeklyAutoScalingSchedule
```

Constructs WeeklyAutoScalingSchedule's fields from required parameters


