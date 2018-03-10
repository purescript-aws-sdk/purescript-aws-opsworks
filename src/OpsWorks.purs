

-- | <fullname>AWS OpsWorks</fullname> <p>Welcome to the <i>AWS OpsWorks Stacks API Reference</i>. This guide provides descriptions, syntax, and usage examples for AWS OpsWorks Stacks actions and data types, including common parameters and error codes. </p> <p>AWS OpsWorks Stacks is an application management service that provides an integrated experience for overseeing the complete application lifecycle. For information about this product, go to the <a href="http://aws.amazon.com/opsworks/">AWS OpsWorks</a> details page. </p> <p> <b>SDKs and CLI</b> </p> <p>The most common way to use the AWS OpsWorks Stacks API is by using the AWS Command Line Interface (CLI) or by using one of the AWS SDKs to implement applications in your preferred language. For more information, see:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html">AWS CLI</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html">AWS SDK for Java</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm">AWS SDK for .NET</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html">AWS SDK for PHP 2</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/sdkforruby/api/">AWS SDK for Ruby</a> </p> </li> <li> <p> <a href="http://aws.amazon.com/documentation/sdkforjavascript/">AWS SDK for Node.js</a> </p> </li> <li> <p> <a href="http://docs.pythonboto.org/en/latest/ref/opsworks.html">AWS SDK for Python(Boto)</a> </p> </li> </ul> <p> <b>Endpoints</b> </p> <p>AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Stacks can only be accessed or managed within the endpoint in which they are created.</p> <ul> <li> <p>opsworks.us-east-1.amazonaws.com</p> </li> <li> <p>opsworks.us-east-2.amazonaws.com</p> </li> <li> <p>opsworks.us-west-1.amazonaws.com</p> </li> <li> <p>opsworks.us-west-2.amazonaws.com</p> </li> <li> <p>opsworks.ca-central-1.amazonaws.com (API only; not available in the AWS console)</p> </li> <li> <p>opsworks.eu-west-1.amazonaws.com</p> </li> <li> <p>opsworks.eu-west-2.amazonaws.com</p> </li> <li> <p>opsworks.eu-west-3.amazonaws.com</p> </li> <li> <p>opsworks.eu-central-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-northeast-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-northeast-2.amazonaws.com</p> </li> <li> <p>opsworks.ap-south-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-southeast-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-southeast-2.amazonaws.com</p> </li> <li> <p>opsworks.sa-east-1.amazonaws.com</p> </li> </ul> <p> <b>Chef Versions</b> </p> <p>When you call <a>CreateStack</a>, <a>CloneStack</a>, or <a>UpdateStack</a> we recommend you use the <code>ConfigurationManager</code> parameter to specify the Chef version. The recommended and default value for Linux stacks is currently 12. Windows stacks use Chef 12.2. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html">Chef Versions</a>.</p> <note> <p>You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We recommend migrating your existing Linux stacks to Chef 12 as soon as possible.</p> </note>
module AWS.OpsWorks where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "OpsWorks" :: String


-- | <p>Assign a registered instance to a layer.</p> <ul> <li> <p>You can assign registered on-premises instances to any layer type.</p> </li> <li> <p>You can assign registered Amazon EC2 instances only to custom layers.</p> </li> <li> <p>You cannot use this action with instances that were created with AWS OpsWorks Stacks.</p> </li> </ul> <p> <b>Required Permissions</b>: To use this action, an AWS Identity and Access Management (IAM) user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
assignInstance :: forall eff. AssignInstanceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
assignInstance = Request.request serviceName "assignInstance" 


-- | <p>Assigns one of the stack's registered Amazon EBS volumes to a specified instance. The volume must first be registered with the stack by calling <a>RegisterVolume</a>. After you register the volume, you must call <a>UpdateVolume</a> to specify a mount point before calling <code>AssignVolume</code>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
assignVolume :: forall eff. AssignVolumeRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
assignVolume = Request.request serviceName "assignVolume" 


-- | <p>Associates one of the stack's registered Elastic IP addresses with a specified instance. The address must first be registered with the stack by calling <a>RegisterElasticIp</a>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
associateElasticIp :: forall eff. AssociateElasticIpRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
associateElasticIp = Request.request serviceName "associateElasticIp" 


-- | <p>Attaches an Elastic Load Balancing load balancer to a specified layer. AWS OpsWorks Stacks does not support Application Load Balancer. You can only use Classic Load Balancer with AWS OpsWorks Stacks. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html">Elastic Load Balancing</a>.</p> <note> <p>You must create the Elastic Load Balancing instance separately, by using the Elastic Load Balancing console, API, or CLI. For more information, see <a href="http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html"> Elastic Load Balancing Developer Guide</a>.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
attachElasticLoadBalancer :: forall eff. AttachElasticLoadBalancerRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
attachElasticLoadBalancer = Request.request serviceName "attachElasticLoadBalancer" 


-- | <p>Creates a clone of a specified stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html">Clone a Stack</a>. By default, all parameters are set to the values used by the parent stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
cloneStack :: forall eff. CloneStackRequest -> Aff (exception :: EXCEPTION | eff) CloneStackResult
cloneStack = Request.request serviceName "cloneStack" 


-- | <p>Creates an app for a specified stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
createApp :: forall eff. CreateAppRequest -> Aff (exception :: EXCEPTION | eff) CreateAppResult
createApp = Request.request serviceName "createApp" 


-- | <p>Runs deployment or stack commands. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html">Deploying Apps</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html">Run Stack Commands</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
createDeployment :: forall eff. CreateDeploymentRequest -> Aff (exception :: EXCEPTION | eff) CreateDeploymentResult
createDeployment = Request.request serviceName "createDeployment" 


-- | <p>Creates an instance in a specified stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">Adding an Instance to a Layer</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
createInstance :: forall eff. CreateInstanceRequest -> Aff (exception :: EXCEPTION | eff) CreateInstanceResult
createInstance = Request.request serviceName "createInstance" 


-- | <p>Creates a layer. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html">How to Create a Layer</a>.</p> <note> <p>You should use <b>CreateLayer</b> for noncustom layer types such as PHP App Server only if the stack does not have an existing layer of that type. A stack can have at most one instance of each noncustom layer; if you attempt to create a second instance, <b>CreateLayer</b> fails. A stack can have an arbitrary number of custom layers, so you can call <b>CreateLayer</b> as many times as you like for that layer type.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
createLayer :: forall eff. CreateLayerRequest -> Aff (exception :: EXCEPTION | eff) CreateLayerResult
createLayer = Request.request serviceName "createLayer" 


-- | <p>Creates a new stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html">Create a New Stack</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
createStack :: forall eff. CreateStackRequest -> Aff (exception :: EXCEPTION | eff) CreateStackResult
createStack = Request.request serviceName "createStack" 


-- | <p>Creates a new user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
createUserProfile :: forall eff. CreateUserProfileRequest -> Aff (exception :: EXCEPTION | eff) CreateUserProfileResult
createUserProfile = Request.request serviceName "createUserProfile" 


-- | <p>Deletes a specified app.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deleteApp :: forall eff. DeleteAppRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteApp = Request.request serviceName "deleteApp" 


-- | <p>Deletes a specified instance, which terminates the associated Amazon EC2 instance. You must stop an instance before you can delete it.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html">Deleting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deleteInstance :: forall eff. DeleteInstanceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteInstance = Request.request serviceName "deleteInstance" 


-- | <p>Deletes a specified layer. You must first stop and then delete all associated instances or unassign registered instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html">How to Delete a Layer</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deleteLayer :: forall eff. DeleteLayerRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteLayer = Request.request serviceName "deleteLayer" 


-- | <p>Deletes a specified stack. You must first delete all instances, layers, and apps or deregister registered instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html">Shut Down a Stack</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deleteStack :: forall eff. DeleteStackRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteStack = Request.request serviceName "deleteStack" 


-- | <p>Deletes a user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deleteUserProfile :: forall eff. DeleteUserProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteUserProfile = Request.request serviceName "deleteUserProfile" 


-- | <p>Deregisters a specified Amazon ECS cluster from a stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete"> Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html</a>.</p>
deregisterEcsCluster :: forall eff. DeregisterEcsClusterRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deregisterEcsCluster = Request.request serviceName "deregisterEcsCluster" 


-- | <p>Deregisters a specified Elastic IP address. The address can then be registered by another stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deregisterElasticIp :: forall eff. DeregisterElasticIpRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deregisterElasticIp = Request.request serviceName "deregisterElasticIp" 


-- | <p>Deregister a registered Amazon EC2 or on-premises instance. This action removes the instance from the stack and returns it to your control. This action can not be used with instances that were created with AWS OpsWorks Stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deregisterInstance :: forall eff. DeregisterInstanceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deregisterInstance = Request.request serviceName "deregisterInstance" 


-- | <p>Deregisters an Amazon RDS instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deregisterRdsDbInstance :: forall eff. DeregisterRdsDbInstanceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deregisterRdsDbInstance = Request.request serviceName "deregisterRdsDbInstance" 


-- | <p>Deregisters an Amazon EBS volume. The volume can then be registered by another stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deregisterVolume :: forall eff. DeregisterVolumeRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deregisterVolume = Request.request serviceName "deregisterVolume" 


-- | <p>Describes the available AWS OpsWorks Stacks agent versions. You must specify a stack ID or a configuration manager. <code>DescribeAgentVersions</code> returns a list of available agent versions for the specified stack or configuration manager.</p>
describeAgentVersions :: forall eff. DescribeAgentVersionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeAgentVersionsResult
describeAgentVersions = Request.request serviceName "describeAgentVersions" 


-- | <p>Requests a description of a specified set of apps.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeApps :: forall eff. DescribeAppsRequest -> Aff (exception :: EXCEPTION | eff) DescribeAppsResult
describeApps = Request.request serviceName "describeApps" 


-- | <p>Describes the results of specified commands.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeCommands :: forall eff. DescribeCommandsRequest -> Aff (exception :: EXCEPTION | eff) DescribeCommandsResult
describeCommands = Request.request serviceName "describeCommands" 


-- | <p>Requests a description of a specified set of deployments.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeDeployments :: forall eff. DescribeDeploymentsRequest -> Aff (exception :: EXCEPTION | eff) DescribeDeploymentsResult
describeDeployments = Request.request serviceName "describeDeployments" 


-- | <p>Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID, you can use the <code>MaxResults</code> and <code>NextToken</code> parameters to paginate the response. However, AWS OpsWorks Stacks currently supports only one cluster per layer, so the result set has a maximum of one element.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permission. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>
describeEcsClusters :: forall eff. DescribeEcsClustersRequest -> Aff (exception :: EXCEPTION | eff) DescribeEcsClustersResult
describeEcsClusters = Request.request serviceName "describeEcsClusters" 


-- | <p>Describes <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP addresses</a>.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeElasticIps :: forall eff. DescribeElasticIpsRequest -> Aff (exception :: EXCEPTION | eff) DescribeElasticIpsResult
describeElasticIps = Request.request serviceName "describeElasticIps" 


-- | <p>Describes a stack's Elastic Load Balancing instances.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeElasticLoadBalancers :: forall eff. DescribeElasticLoadBalancersRequest -> Aff (exception :: EXCEPTION | eff) DescribeElasticLoadBalancersResult
describeElasticLoadBalancers = Request.request serviceName "describeElasticLoadBalancers" 


-- | <p>Requests a description of a set of instances.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeInstances :: forall eff. DescribeInstancesRequest -> Aff (exception :: EXCEPTION | eff) DescribeInstancesResult
describeInstances = Request.request serviceName "describeInstances" 


-- | <p>Requests a description of one or more layers in a specified stack.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeLayers :: forall eff. DescribeLayersRequest -> Aff (exception :: EXCEPTION | eff) DescribeLayersResult
describeLayers = Request.request serviceName "describeLayers" 


-- | <p>Describes load-based auto scaling configurations for specified layers.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeLoadBasedAutoScaling :: forall eff. DescribeLoadBasedAutoScalingRequest -> Aff (exception :: EXCEPTION | eff) DescribeLoadBasedAutoScalingResult
describeLoadBasedAutoScaling = Request.request serviceName "describeLoadBasedAutoScaling" 


-- | <p>Describes a user's SSH information.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeMyUserProfile :: forall eff.  Aff (exception :: EXCEPTION | eff) DescribeMyUserProfileResult
describeMyUserProfile = Request.request serviceName "describeMyUserProfile" (Types.NoInput unit)


-- | <p>Describes the operating systems that are supported by AWS OpsWorks Stacks.</p>
describeOperatingSystems :: forall eff.  Aff (exception :: EXCEPTION | eff) DescribeOperatingSystemsResponse
describeOperatingSystems = Request.request serviceName "describeOperatingSystems" (Types.NoInput unit)


-- | <p>Describes the permissions for a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describePermissions :: forall eff. DescribePermissionsRequest -> Aff (exception :: EXCEPTION | eff) DescribePermissionsResult
describePermissions = Request.request serviceName "describePermissions" 


-- | <p>Describe an instance's RAID arrays.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeRaidArrays :: forall eff. DescribeRaidArraysRequest -> Aff (exception :: EXCEPTION | eff) DescribeRaidArraysResult
describeRaidArrays = Request.request serviceName "describeRaidArrays" 


-- | <p>Describes Amazon RDS instances.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>
describeRdsDbInstances :: forall eff. DescribeRdsDbInstancesRequest -> Aff (exception :: EXCEPTION | eff) DescribeRdsDbInstancesResult
describeRdsDbInstances = Request.request serviceName "describeRdsDbInstances" 


-- | <p>Describes AWS OpsWorks Stacks service errors.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>
describeServiceErrors :: forall eff. DescribeServiceErrorsRequest -> Aff (exception :: EXCEPTION | eff) DescribeServiceErrorsResult
describeServiceErrors = Request.request serviceName "describeServiceErrors" 


-- | <p>Requests a description of a stack's provisioning parameters.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeStackProvisioningParameters :: forall eff. DescribeStackProvisioningParametersRequest -> Aff (exception :: EXCEPTION | eff) DescribeStackProvisioningParametersResult
describeStackProvisioningParameters = Request.request serviceName "describeStackProvisioningParameters" 


-- | <p>Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as <code>running_setup</code> or <code>online</code>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeStackSummary :: forall eff. DescribeStackSummaryRequest -> Aff (exception :: EXCEPTION | eff) DescribeStackSummaryResult
describeStackSummary = Request.request serviceName "describeStackSummary" 


-- | <p>Requests a description of one or more stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeStacks :: forall eff. DescribeStacksRequest -> Aff (exception :: EXCEPTION | eff) DescribeStacksResult
describeStacks = Request.request serviceName "describeStacks" 


-- | <p>Describes time-based auto scaling configurations for specified instances.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeTimeBasedAutoScaling :: forall eff. DescribeTimeBasedAutoScalingRequest -> Aff (exception :: EXCEPTION | eff) DescribeTimeBasedAutoScalingResult
describeTimeBasedAutoScaling = Request.request serviceName "describeTimeBasedAutoScaling" 


-- | <p>Describe specified users.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeUserProfiles :: forall eff. DescribeUserProfilesRequest -> Aff (exception :: EXCEPTION | eff) DescribeUserProfilesResult
describeUserProfiles = Request.request serviceName "describeUserProfiles" 


-- | <p>Describes an instance's Amazon EBS volumes.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeVolumes :: forall eff. DescribeVolumesRequest -> Aff (exception :: EXCEPTION | eff) DescribeVolumesResult
describeVolumes = Request.request serviceName "describeVolumes" 


-- | <p>Detaches a specified Elastic Load Balancing instance from its layer.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
detachElasticLoadBalancer :: forall eff. DetachElasticLoadBalancerRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
detachElasticLoadBalancer = Request.request serviceName "detachElasticLoadBalancer" 


-- | <p>Disassociates an Elastic IP address from its instance. The address remains registered with the stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
disassociateElasticIp :: forall eff. DisassociateElasticIpRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
disassociateElasticIp = Request.request serviceName "disassociateElasticIp" 


-- | <p>Gets a generated host name for the specified layer, based on the current host name theme.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
getHostnameSuggestion :: forall eff. GetHostnameSuggestionRequest -> Aff (exception :: EXCEPTION | eff) GetHostnameSuggestionResult
getHostnameSuggestion = Request.request serviceName "getHostnameSuggestion" 


-- | <note> <p>This action can be used only with Windows stacks.</p> </note> <p>Grants RDP access to a Windows instance for a specified time period.</p>
grantAccess :: forall eff. GrantAccessRequest -> Aff (exception :: EXCEPTION | eff) GrantAccessResult
grantAccess = Request.request serviceName "grantAccess" 


-- | <p>Returns a list of tags that are applied to the specified stack or layer.</p>
listTags :: forall eff. ListTagsRequest -> Aff (exception :: EXCEPTION | eff) ListTagsResult
listTags = Request.request serviceName "listTags" 


-- | <p>Reboots a specified instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
rebootInstance :: forall eff. RebootInstanceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
rebootInstance = Request.request serviceName "rebootInstance" 


-- | <p>Registers a specified Amazon ECS cluster with a stack. You can register only one cluster with a stack. A cluster can be registered with only one stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html"> Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html"> Managing User Permissions</a>.</p>
registerEcsCluster :: forall eff. RegisterEcsClusterRequest -> Aff (exception :: EXCEPTION | eff) RegisterEcsClusterResult
registerEcsCluster = Request.request serviceName "registerEcsCluster" 


-- | <p>Registers an Elastic IP address with a specified stack. An address can be registered with only one stack at a time. If the address is already registered, you must first deregister it by calling <a>DeregisterElasticIp</a>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
registerElasticIp :: forall eff. RegisterElasticIpRequest -> Aff (exception :: EXCEPTION | eff) RegisterElasticIpResult
registerElasticIp = Request.request serviceName "registerElasticIp" 


-- | <p>Registers instances that were created outside of AWS OpsWorks Stacks with a specified stack.</p> <note> <p>We do not recommend using this action to register instances. The complete registration operation includes two tasks: installing the AWS OpsWorks Stacks agent on the instance, and registering the instance with the stack. <code>RegisterInstance</code> handles only the second step. You should instead use the AWS CLI <code>register</code> command, which performs the entire registration operation. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html"> Registering an Instance with an AWS OpsWorks Stacks Stack</a>.</p> </note> <p>Registered instances have the same requirements as instances that are created by using the <a>CreateInstance</a> API. For example, registered instances must be running a supported Linux-based operating system, and they must have a supported instance type. For more information about requirements for instances that you want to register, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html"> Preparing the Instance</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
registerInstance :: forall eff. RegisterInstanceRequest -> Aff (exception :: EXCEPTION | eff) RegisterInstanceResult
registerInstance = Request.request serviceName "registerInstance" 


-- | <p>Registers an Amazon RDS instance with a stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
registerRdsDbInstance :: forall eff. RegisterRdsDbInstanceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
registerRdsDbInstance = Request.request serviceName "registerRdsDbInstance" 


-- | <p>Registers an Amazon EBS volume with a specified stack. A volume can be registered with only one stack at a time. If the volume is already registered, you must first deregister it by calling <a>DeregisterVolume</a>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
registerVolume :: forall eff. RegisterVolumeRequest -> Aff (exception :: EXCEPTION | eff) RegisterVolumeResult
registerVolume = Request.request serviceName "registerVolume" 


-- | <p>Specify the load-based auto scaling configuration for a specified layer. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing Load with Time-based and Load-based Instances</a>.</p> <note> <p>To use load-based auto scaling, you must create a set of load-based auto scaling instances. Load-based auto scaling operates only on the instances from that set, so you must ensure that you have created enough instances to handle the maximum anticipated load.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
setLoadBasedAutoScaling :: forall eff. SetLoadBasedAutoScalingRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
setLoadBasedAutoScaling = Request.request serviceName "setLoadBasedAutoScaling" 


-- | <p>Specifies a user's permissions. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html">Security and Permissions</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
setPermission :: forall eff. SetPermissionRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
setPermission = Request.request serviceName "setPermission" 


-- | <p>Specify the time-based auto scaling configuration for a specified instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing Load with Time-based and Load-based Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
setTimeBasedAutoScaling :: forall eff. SetTimeBasedAutoScalingRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
setTimeBasedAutoScaling = Request.request serviceName "setTimeBasedAutoScaling" 


-- | <p>Starts a specified instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
startInstance :: forall eff. StartInstanceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
startInstance = Request.request serviceName "startInstance" 


-- | <p>Starts a stack's instances.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
startStack :: forall eff. StartStackRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
startStack = Request.request serviceName "startStack" 


-- | <p>Stops a specified instance. When you stop a standard instance, the data disappears and must be reinstalled when you restart the instance. You can stop an Amazon EBS-backed instance without losing data. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
stopInstance :: forall eff. StopInstanceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
stopInstance = Request.request serviceName "stopInstance" 


-- | <p>Stops a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
stopStack :: forall eff. StopStackRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
stopStack = Request.request serviceName "stopStack" 


-- | <p>Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks. For more information about how tagging works, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html">Tags</a> in the AWS OpsWorks User Guide.</p>
tagResource :: forall eff. TagResourceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
tagResource = Request.request serviceName "tagResource" 


-- | <p>Unassigns a registered instance from all of it's layers. The instance remains in the stack as an unassigned instance and can be assigned to another layer, as needed. You cannot use this action with instances that were created with AWS OpsWorks Stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
unassignInstance :: forall eff. UnassignInstanceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
unassignInstance = Request.request serviceName "unassignInstance" 


-- | <p>Unassigns an assigned Amazon EBS volume. The volume remains registered with the stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
unassignVolume :: forall eff. UnassignVolumeRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
unassignVolume = Request.request serviceName "unassignVolume" 


-- | <p>Removes tags from a specified stack or layer.</p>
untagResource :: forall eff. UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
untagResource = Request.request serviceName "untagResource" 


-- | <p>Updates a specified app.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateApp :: forall eff. UpdateAppRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateApp = Request.request serviceName "updateApp" 


-- | <p>Updates a registered Elastic IP address's name. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateElasticIp :: forall eff. UpdateElasticIpRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateElasticIp = Request.request serviceName "updateElasticIp" 


-- | <p>Updates a specified instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateInstance :: forall eff. UpdateInstanceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateInstance = Request.request serviceName "updateInstance" 


-- | <p>Updates a specified layer.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateLayer :: forall eff. UpdateLayerRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateLayer = Request.request serviceName "updateLayer" 


-- | <p>Updates a user's SSH public key.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateMyUserProfile :: forall eff. UpdateMyUserProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateMyUserProfile = Request.request serviceName "updateMyUserProfile" 


-- | <p>Updates an Amazon RDS instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateRdsDbInstance :: forall eff. UpdateRdsDbInstanceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateRdsDbInstance = Request.request serviceName "updateRdsDbInstance" 


-- | <p>Updates a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateStack :: forall eff. UpdateStackRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateStack = Request.request serviceName "updateStack" 


-- | <p>Updates a specified user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateUserProfile :: forall eff. UpdateUserProfileRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateUserProfile = Request.request serviceName "updateUserProfile" 


-- | <p>Updates an Amazon EBS volume's name or mount point. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateVolume :: forall eff. UpdateVolumeRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateVolume = Request.request serviceName "updateVolume" 


-- | <p>Describes an agent version.</p>
newtype AgentVersion = AgentVersion 
  { "Version" :: NullOrUndefined.NullOrUndefined (String)
  , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager)
  }
derive instance newtypeAgentVersion :: Newtype AgentVersion _
derive instance repGenericAgentVersion :: Generic AgentVersion _
instance showAgentVersion :: Show AgentVersion where
  show = genericShow
instance decodeAgentVersion :: Decode AgentVersion where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAgentVersion :: Encode AgentVersion where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AgentVersion from required parameters
newAgentVersion :: AgentVersion
newAgentVersion  = AgentVersion { "ConfigurationManager": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs AgentVersion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAgentVersion' :: ( { "Version" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager) } -> {"Version" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager) } ) -> AgentVersion
newAgentVersion'  customize = (AgentVersion <<< customize) { "ConfigurationManager": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



newtype AgentVersions = AgentVersions (Array AgentVersion)
derive instance newtypeAgentVersions :: Newtype AgentVersions _
derive instance repGenericAgentVersions :: Generic AgentVersions _
instance showAgentVersions :: Show AgentVersions where
  show = genericShow
instance decodeAgentVersions :: Decode AgentVersions where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAgentVersions :: Encode AgentVersions where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A description of the app.</p>
newtype App = App 
  { "AppId" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "Shortname" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "DataSources" :: NullOrUndefined.NullOrUndefined (DataSources)
  , "Type" :: NullOrUndefined.NullOrUndefined (AppType)
  , "AppSource" :: NullOrUndefined.NullOrUndefined (Source)
  , "Domains" :: NullOrUndefined.NullOrUndefined (Strings)
  , "EnableSsl" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "SslConfiguration" :: NullOrUndefined.NullOrUndefined (SslConfiguration)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (AppAttributes)
  , "CreatedAt" :: NullOrUndefined.NullOrUndefined (String)
  , "Environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables)
  }
derive instance newtypeApp :: Newtype App _
derive instance repGenericApp :: Generic App _
instance showApp :: Show App where
  show = genericShow
instance decodeApp :: Decode App where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApp :: Encode App where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs App from required parameters
newApp :: App
newApp  = App { "AppId": (NullOrUndefined Nothing), "AppSource": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "DataSources": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Domains": (NullOrUndefined Nothing), "EnableSsl": (NullOrUndefined Nothing), "Environment": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Shortname": (NullOrUndefined Nothing), "SslConfiguration": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs App's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApp' :: ( { "AppId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "Shortname" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "DataSources" :: NullOrUndefined.NullOrUndefined (DataSources) , "Type" :: NullOrUndefined.NullOrUndefined (AppType) , "AppSource" :: NullOrUndefined.NullOrUndefined (Source) , "Domains" :: NullOrUndefined.NullOrUndefined (Strings) , "EnableSsl" :: NullOrUndefined.NullOrUndefined (Boolean) , "SslConfiguration" :: NullOrUndefined.NullOrUndefined (SslConfiguration) , "Attributes" :: NullOrUndefined.NullOrUndefined (AppAttributes) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (String) , "Environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables) } -> {"AppId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "Shortname" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "DataSources" :: NullOrUndefined.NullOrUndefined (DataSources) , "Type" :: NullOrUndefined.NullOrUndefined (AppType) , "AppSource" :: NullOrUndefined.NullOrUndefined (Source) , "Domains" :: NullOrUndefined.NullOrUndefined (Strings) , "EnableSsl" :: NullOrUndefined.NullOrUndefined (Boolean) , "SslConfiguration" :: NullOrUndefined.NullOrUndefined (SslConfiguration) , "Attributes" :: NullOrUndefined.NullOrUndefined (AppAttributes) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (String) , "Environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables) } ) -> App
newApp'  customize = (App <<< customize) { "AppId": (NullOrUndefined Nothing), "AppSource": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "DataSources": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Domains": (NullOrUndefined Nothing), "EnableSsl": (NullOrUndefined Nothing), "Environment": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Shortname": (NullOrUndefined Nothing), "SslConfiguration": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype AppAttributes = AppAttributes (StrMap.StrMap String)
derive instance newtypeAppAttributes :: Newtype AppAttributes _
derive instance repGenericAppAttributes :: Generic AppAttributes _
instance showAppAttributes :: Show AppAttributes where
  show = genericShow
instance decodeAppAttributes :: Decode AppAttributes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAppAttributes :: Encode AppAttributes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AppAttributesKeys = AppAttributesKeys String
derive instance newtypeAppAttributesKeys :: Newtype AppAttributesKeys _
derive instance repGenericAppAttributesKeys :: Generic AppAttributesKeys _
instance showAppAttributesKeys :: Show AppAttributesKeys where
  show = genericShow
instance decodeAppAttributesKeys :: Decode AppAttributesKeys where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAppAttributesKeys :: Encode AppAttributesKeys where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AppType = AppType String
derive instance newtypeAppType :: Newtype AppType _
derive instance repGenericAppType :: Generic AppType _
instance showAppType :: Show AppType where
  show = genericShow
instance decodeAppType :: Decode AppType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAppType :: Encode AppType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Apps = Apps (Array App)
derive instance newtypeApps :: Newtype Apps _
derive instance repGenericApps :: Generic Apps _
instance showApps :: Show Apps where
  show = genericShow
instance decodeApps :: Decode Apps where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApps :: Encode Apps where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Architecture = Architecture String
derive instance newtypeArchitecture :: Newtype Architecture _
derive instance repGenericArchitecture :: Generic Architecture _
instance showArchitecture :: Show Architecture where
  show = genericShow
instance decodeArchitecture :: Decode Architecture where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeArchitecture :: Encode Architecture where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AssignInstanceRequest = AssignInstanceRequest 
  { "InstanceId" :: (String)
  , "LayerIds" :: (Strings)
  }
derive instance newtypeAssignInstanceRequest :: Newtype AssignInstanceRequest _
derive instance repGenericAssignInstanceRequest :: Generic AssignInstanceRequest _
instance showAssignInstanceRequest :: Show AssignInstanceRequest where
  show = genericShow
instance decodeAssignInstanceRequest :: Decode AssignInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssignInstanceRequest :: Encode AssignInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AssignInstanceRequest from required parameters
newAssignInstanceRequest :: String -> Strings -> AssignInstanceRequest
newAssignInstanceRequest _InstanceId _LayerIds = AssignInstanceRequest { "InstanceId": _InstanceId, "LayerIds": _LayerIds }

-- | Constructs AssignInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssignInstanceRequest' :: String -> Strings -> ( { "InstanceId" :: (String) , "LayerIds" :: (Strings) } -> {"InstanceId" :: (String) , "LayerIds" :: (Strings) } ) -> AssignInstanceRequest
newAssignInstanceRequest' _InstanceId _LayerIds customize = (AssignInstanceRequest <<< customize) { "InstanceId": _InstanceId, "LayerIds": _LayerIds }



newtype AssignVolumeRequest = AssignVolumeRequest 
  { "VolumeId" :: (String)
  , "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeAssignVolumeRequest :: Newtype AssignVolumeRequest _
derive instance repGenericAssignVolumeRequest :: Generic AssignVolumeRequest _
instance showAssignVolumeRequest :: Show AssignVolumeRequest where
  show = genericShow
instance decodeAssignVolumeRequest :: Decode AssignVolumeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssignVolumeRequest :: Encode AssignVolumeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AssignVolumeRequest from required parameters
newAssignVolumeRequest :: String -> AssignVolumeRequest
newAssignVolumeRequest _VolumeId = AssignVolumeRequest { "VolumeId": _VolumeId, "InstanceId": (NullOrUndefined Nothing) }

-- | Constructs AssignVolumeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssignVolumeRequest' :: String -> ( { "VolumeId" :: (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) } -> {"VolumeId" :: (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) } ) -> AssignVolumeRequest
newAssignVolumeRequest' _VolumeId customize = (AssignVolumeRequest <<< customize) { "VolumeId": _VolumeId, "InstanceId": (NullOrUndefined Nothing) }



newtype AssociateElasticIpRequest = AssociateElasticIpRequest 
  { "ElasticIp" :: (String)
  , "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeAssociateElasticIpRequest :: Newtype AssociateElasticIpRequest _
derive instance repGenericAssociateElasticIpRequest :: Generic AssociateElasticIpRequest _
instance showAssociateElasticIpRequest :: Show AssociateElasticIpRequest where
  show = genericShow
instance decodeAssociateElasticIpRequest :: Decode AssociateElasticIpRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAssociateElasticIpRequest :: Encode AssociateElasticIpRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AssociateElasticIpRequest from required parameters
newAssociateElasticIpRequest :: String -> AssociateElasticIpRequest
newAssociateElasticIpRequest _ElasticIp = AssociateElasticIpRequest { "ElasticIp": _ElasticIp, "InstanceId": (NullOrUndefined Nothing) }

-- | Constructs AssociateElasticIpRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateElasticIpRequest' :: String -> ( { "ElasticIp" :: (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) } -> {"ElasticIp" :: (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) } ) -> AssociateElasticIpRequest
newAssociateElasticIpRequest' _ElasticIp customize = (AssociateElasticIpRequest <<< customize) { "ElasticIp": _ElasticIp, "InstanceId": (NullOrUndefined Nothing) }



newtype AttachElasticLoadBalancerRequest = AttachElasticLoadBalancerRequest 
  { "ElasticLoadBalancerName" :: (String)
  , "LayerId" :: (String)
  }
derive instance newtypeAttachElasticLoadBalancerRequest :: Newtype AttachElasticLoadBalancerRequest _
derive instance repGenericAttachElasticLoadBalancerRequest :: Generic AttachElasticLoadBalancerRequest _
instance showAttachElasticLoadBalancerRequest :: Show AttachElasticLoadBalancerRequest where
  show = genericShow
instance decodeAttachElasticLoadBalancerRequest :: Decode AttachElasticLoadBalancerRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttachElasticLoadBalancerRequest :: Encode AttachElasticLoadBalancerRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttachElasticLoadBalancerRequest from required parameters
newAttachElasticLoadBalancerRequest :: String -> String -> AttachElasticLoadBalancerRequest
newAttachElasticLoadBalancerRequest _ElasticLoadBalancerName _LayerId = AttachElasticLoadBalancerRequest { "ElasticLoadBalancerName": _ElasticLoadBalancerName, "LayerId": _LayerId }

-- | Constructs AttachElasticLoadBalancerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachElasticLoadBalancerRequest' :: String -> String -> ( { "ElasticLoadBalancerName" :: (String) , "LayerId" :: (String) } -> {"ElasticLoadBalancerName" :: (String) , "LayerId" :: (String) } ) -> AttachElasticLoadBalancerRequest
newAttachElasticLoadBalancerRequest' _ElasticLoadBalancerName _LayerId customize = (AttachElasticLoadBalancerRequest <<< customize) { "ElasticLoadBalancerName": _ElasticLoadBalancerName, "LayerId": _LayerId }



-- | <p>Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks Stacks starts or stops load-based instances.</p>
newtype AutoScalingThresholds = AutoScalingThresholds 
  { "InstanceCount" :: NullOrUndefined.NullOrUndefined (Int)
  , "ThresholdsWaitTime" :: NullOrUndefined.NullOrUndefined (Minute)
  , "IgnoreMetricsTime" :: NullOrUndefined.NullOrUndefined (Minute)
  , "CpuThreshold" :: NullOrUndefined.NullOrUndefined (Number)
  , "MemoryThreshold" :: NullOrUndefined.NullOrUndefined (Number)
  , "LoadThreshold" :: NullOrUndefined.NullOrUndefined (Number)
  , "Alarms" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeAutoScalingThresholds :: Newtype AutoScalingThresholds _
derive instance repGenericAutoScalingThresholds :: Generic AutoScalingThresholds _
instance showAutoScalingThresholds :: Show AutoScalingThresholds where
  show = genericShow
instance decodeAutoScalingThresholds :: Decode AutoScalingThresholds where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAutoScalingThresholds :: Encode AutoScalingThresholds where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AutoScalingThresholds from required parameters
newAutoScalingThresholds :: AutoScalingThresholds
newAutoScalingThresholds  = AutoScalingThresholds { "Alarms": (NullOrUndefined Nothing), "CpuThreshold": (NullOrUndefined Nothing), "IgnoreMetricsTime": (NullOrUndefined Nothing), "InstanceCount": (NullOrUndefined Nothing), "LoadThreshold": (NullOrUndefined Nothing), "MemoryThreshold": (NullOrUndefined Nothing), "ThresholdsWaitTime": (NullOrUndefined Nothing) }

-- | Constructs AutoScalingThresholds's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAutoScalingThresholds' :: ( { "InstanceCount" :: NullOrUndefined.NullOrUndefined (Int) , "ThresholdsWaitTime" :: NullOrUndefined.NullOrUndefined (Minute) , "IgnoreMetricsTime" :: NullOrUndefined.NullOrUndefined (Minute) , "CpuThreshold" :: NullOrUndefined.NullOrUndefined (Number) , "MemoryThreshold" :: NullOrUndefined.NullOrUndefined (Number) , "LoadThreshold" :: NullOrUndefined.NullOrUndefined (Number) , "Alarms" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"InstanceCount" :: NullOrUndefined.NullOrUndefined (Int) , "ThresholdsWaitTime" :: NullOrUndefined.NullOrUndefined (Minute) , "IgnoreMetricsTime" :: NullOrUndefined.NullOrUndefined (Minute) , "CpuThreshold" :: NullOrUndefined.NullOrUndefined (Number) , "MemoryThreshold" :: NullOrUndefined.NullOrUndefined (Number) , "LoadThreshold" :: NullOrUndefined.NullOrUndefined (Number) , "Alarms" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> AutoScalingThresholds
newAutoScalingThresholds'  customize = (AutoScalingThresholds <<< customize) { "Alarms": (NullOrUndefined Nothing), "CpuThreshold": (NullOrUndefined Nothing), "IgnoreMetricsTime": (NullOrUndefined Nothing), "InstanceCount": (NullOrUndefined Nothing), "LoadThreshold": (NullOrUndefined Nothing), "MemoryThreshold": (NullOrUndefined Nothing), "ThresholdsWaitTime": (NullOrUndefined Nothing) }



newtype AutoScalingType = AutoScalingType String
derive instance newtypeAutoScalingType :: Newtype AutoScalingType _
derive instance repGenericAutoScalingType :: Generic AutoScalingType _
instance showAutoScalingType :: Show AutoScalingType where
  show = genericShow
instance decodeAutoScalingType :: Decode AutoScalingType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAutoScalingType :: Encode AutoScalingType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes a block device mapping. This data type maps directly to the Amazon EC2 <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html">BlockDeviceMapping</a> data type. </p>
newtype BlockDeviceMapping = BlockDeviceMapping 
  { "DeviceName" :: NullOrUndefined.NullOrUndefined (String)
  , "NoDevice" :: NullOrUndefined.NullOrUndefined (String)
  , "VirtualName" :: NullOrUndefined.NullOrUndefined (String)
  , "Ebs" :: NullOrUndefined.NullOrUndefined (EbsBlockDevice)
  }
derive instance newtypeBlockDeviceMapping :: Newtype BlockDeviceMapping _
derive instance repGenericBlockDeviceMapping :: Generic BlockDeviceMapping _
instance showBlockDeviceMapping :: Show BlockDeviceMapping where
  show = genericShow
instance decodeBlockDeviceMapping :: Decode BlockDeviceMapping where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBlockDeviceMapping :: Encode BlockDeviceMapping where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BlockDeviceMapping from required parameters
newBlockDeviceMapping :: BlockDeviceMapping
newBlockDeviceMapping  = BlockDeviceMapping { "DeviceName": (NullOrUndefined Nothing), "Ebs": (NullOrUndefined Nothing), "NoDevice": (NullOrUndefined Nothing), "VirtualName": (NullOrUndefined Nothing) }

-- | Constructs BlockDeviceMapping's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBlockDeviceMapping' :: ( { "DeviceName" :: NullOrUndefined.NullOrUndefined (String) , "NoDevice" :: NullOrUndefined.NullOrUndefined (String) , "VirtualName" :: NullOrUndefined.NullOrUndefined (String) , "Ebs" :: NullOrUndefined.NullOrUndefined (EbsBlockDevice) } -> {"DeviceName" :: NullOrUndefined.NullOrUndefined (String) , "NoDevice" :: NullOrUndefined.NullOrUndefined (String) , "VirtualName" :: NullOrUndefined.NullOrUndefined (String) , "Ebs" :: NullOrUndefined.NullOrUndefined (EbsBlockDevice) } ) -> BlockDeviceMapping
newBlockDeviceMapping'  customize = (BlockDeviceMapping <<< customize) { "DeviceName": (NullOrUndefined Nothing), "Ebs": (NullOrUndefined Nothing), "NoDevice": (NullOrUndefined Nothing), "VirtualName": (NullOrUndefined Nothing) }



newtype BlockDeviceMappings = BlockDeviceMappings (Array BlockDeviceMapping)
derive instance newtypeBlockDeviceMappings :: Newtype BlockDeviceMappings _
derive instance repGenericBlockDeviceMappings :: Generic BlockDeviceMappings _
instance showBlockDeviceMappings :: Show BlockDeviceMappings where
  show = genericShow
instance decodeBlockDeviceMappings :: Decode BlockDeviceMappings where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBlockDeviceMappings :: Encode BlockDeviceMappings where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes the Chef configuration.</p>
newtype ChefConfiguration = ChefConfiguration 
  { "ManageBerkshelf" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "BerkshelfVersion" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeChefConfiguration :: Newtype ChefConfiguration _
derive instance repGenericChefConfiguration :: Generic ChefConfiguration _
instance showChefConfiguration :: Show ChefConfiguration where
  show = genericShow
instance decodeChefConfiguration :: Decode ChefConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeChefConfiguration :: Encode ChefConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ChefConfiguration from required parameters
newChefConfiguration :: ChefConfiguration
newChefConfiguration  = ChefConfiguration { "BerkshelfVersion": (NullOrUndefined Nothing), "ManageBerkshelf": (NullOrUndefined Nothing) }

-- | Constructs ChefConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChefConfiguration' :: ( { "ManageBerkshelf" :: NullOrUndefined.NullOrUndefined (Boolean) , "BerkshelfVersion" :: NullOrUndefined.NullOrUndefined (String) } -> {"ManageBerkshelf" :: NullOrUndefined.NullOrUndefined (Boolean) , "BerkshelfVersion" :: NullOrUndefined.NullOrUndefined (String) } ) -> ChefConfiguration
newChefConfiguration'  customize = (ChefConfiguration <<< customize) { "BerkshelfVersion": (NullOrUndefined Nothing), "ManageBerkshelf": (NullOrUndefined Nothing) }



newtype CloneStackRequest = CloneStackRequest 
  { "SourceStackId" :: (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Region" :: NullOrUndefined.NullOrUndefined (String)
  , "VpcId" :: NullOrUndefined.NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (StackAttributes)
  , "ServiceRoleArn" :: (String)
  , "DefaultInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultOs" :: NullOrUndefined.NullOrUndefined (String)
  , "HostnameTheme" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultAvailabilityZone" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultSubnetId" :: NullOrUndefined.NullOrUndefined (String)
  , "CustomJson" :: NullOrUndefined.NullOrUndefined (String)
  , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager)
  , "ChefConfiguration" :: NullOrUndefined.NullOrUndefined (ChefConfiguration)
  , "UseCustomCookbooks" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "UseOpsworksSecurityGroups" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "CustomCookbooksSource" :: NullOrUndefined.NullOrUndefined (Source)
  , "DefaultSshKeyName" :: NullOrUndefined.NullOrUndefined (String)
  , "ClonePermissions" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "CloneAppIds" :: NullOrUndefined.NullOrUndefined (Strings)
  , "DefaultRootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType)
  , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCloneStackRequest :: Newtype CloneStackRequest _
derive instance repGenericCloneStackRequest :: Generic CloneStackRequest _
instance showCloneStackRequest :: Show CloneStackRequest where
  show = genericShow
instance decodeCloneStackRequest :: Decode CloneStackRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCloneStackRequest :: Encode CloneStackRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CloneStackRequest from required parameters
newCloneStackRequest :: String -> String -> CloneStackRequest
newCloneStackRequest _ServiceRoleArn _SourceStackId = CloneStackRequest { "ServiceRoleArn": _ServiceRoleArn, "SourceStackId": _SourceStackId, "AgentVersion": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "ChefConfiguration": (NullOrUndefined Nothing), "CloneAppIds": (NullOrUndefined Nothing), "ClonePermissions": (NullOrUndefined Nothing), "ConfigurationManager": (NullOrUndefined Nothing), "CustomCookbooksSource": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "DefaultAvailabilityZone": (NullOrUndefined Nothing), "DefaultInstanceProfileArn": (NullOrUndefined Nothing), "DefaultOs": (NullOrUndefined Nothing), "DefaultRootDeviceType": (NullOrUndefined Nothing), "DefaultSshKeyName": (NullOrUndefined Nothing), "DefaultSubnetId": (NullOrUndefined Nothing), "HostnameTheme": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing), "UseCustomCookbooks": (NullOrUndefined Nothing), "UseOpsworksSecurityGroups": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }

-- | Constructs CloneStackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloneStackRequest' :: String -> String -> ( { "SourceStackId" :: (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Region" :: NullOrUndefined.NullOrUndefined (String) , "VpcId" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (StackAttributes) , "ServiceRoleArn" :: (String) , "DefaultInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "DefaultOs" :: NullOrUndefined.NullOrUndefined (String) , "HostnameTheme" :: NullOrUndefined.NullOrUndefined (String) , "DefaultAvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "DefaultSubnetId" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager) , "ChefConfiguration" :: NullOrUndefined.NullOrUndefined (ChefConfiguration) , "UseCustomCookbooks" :: NullOrUndefined.NullOrUndefined (Boolean) , "UseOpsworksSecurityGroups" :: NullOrUndefined.NullOrUndefined (Boolean) , "CustomCookbooksSource" :: NullOrUndefined.NullOrUndefined (Source) , "DefaultSshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "ClonePermissions" :: NullOrUndefined.NullOrUndefined (Boolean) , "CloneAppIds" :: NullOrUndefined.NullOrUndefined (Strings) , "DefaultRootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType) , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) } -> {"SourceStackId" :: (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Region" :: NullOrUndefined.NullOrUndefined (String) , "VpcId" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (StackAttributes) , "ServiceRoleArn" :: (String) , "DefaultInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "DefaultOs" :: NullOrUndefined.NullOrUndefined (String) , "HostnameTheme" :: NullOrUndefined.NullOrUndefined (String) , "DefaultAvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "DefaultSubnetId" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager) , "ChefConfiguration" :: NullOrUndefined.NullOrUndefined (ChefConfiguration) , "UseCustomCookbooks" :: NullOrUndefined.NullOrUndefined (Boolean) , "UseOpsworksSecurityGroups" :: NullOrUndefined.NullOrUndefined (Boolean) , "CustomCookbooksSource" :: NullOrUndefined.NullOrUndefined (Source) , "DefaultSshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "ClonePermissions" :: NullOrUndefined.NullOrUndefined (Boolean) , "CloneAppIds" :: NullOrUndefined.NullOrUndefined (Strings) , "DefaultRootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType) , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) } ) -> CloneStackRequest
newCloneStackRequest' _ServiceRoleArn _SourceStackId customize = (CloneStackRequest <<< customize) { "ServiceRoleArn": _ServiceRoleArn, "SourceStackId": _SourceStackId, "AgentVersion": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "ChefConfiguration": (NullOrUndefined Nothing), "CloneAppIds": (NullOrUndefined Nothing), "ClonePermissions": (NullOrUndefined Nothing), "ConfigurationManager": (NullOrUndefined Nothing), "CustomCookbooksSource": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "DefaultAvailabilityZone": (NullOrUndefined Nothing), "DefaultInstanceProfileArn": (NullOrUndefined Nothing), "DefaultOs": (NullOrUndefined Nothing), "DefaultRootDeviceType": (NullOrUndefined Nothing), "DefaultSshKeyName": (NullOrUndefined Nothing), "DefaultSubnetId": (NullOrUndefined Nothing), "HostnameTheme": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing), "UseCustomCookbooks": (NullOrUndefined Nothing), "UseOpsworksSecurityGroups": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>CloneStack</code> request.</p>
newtype CloneStackResult = CloneStackResult 
  { "StackId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCloneStackResult :: Newtype CloneStackResult _
derive instance repGenericCloneStackResult :: Generic CloneStackResult _
instance showCloneStackResult :: Show CloneStackResult where
  show = genericShow
instance decodeCloneStackResult :: Decode CloneStackResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCloneStackResult :: Encode CloneStackResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CloneStackResult from required parameters
newCloneStackResult :: CloneStackResult
newCloneStackResult  = CloneStackResult { "StackId": (NullOrUndefined Nothing) }

-- | Constructs CloneStackResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloneStackResult' :: ( { "StackId" :: NullOrUndefined.NullOrUndefined (String) } -> {"StackId" :: NullOrUndefined.NullOrUndefined (String) } ) -> CloneStackResult
newCloneStackResult'  customize = (CloneStackResult <<< customize) { "StackId": (NullOrUndefined Nothing) }



-- | <p>Describes the Amazon CloudWatch logs configuration for a layer.</p>
newtype CloudWatchLogsConfiguration = CloudWatchLogsConfiguration 
  { "Enabled" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "LogStreams" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsLogStreams)
  }
derive instance newtypeCloudWatchLogsConfiguration :: Newtype CloudWatchLogsConfiguration _
derive instance repGenericCloudWatchLogsConfiguration :: Generic CloudWatchLogsConfiguration _
instance showCloudWatchLogsConfiguration :: Show CloudWatchLogsConfiguration where
  show = genericShow
instance decodeCloudWatchLogsConfiguration :: Decode CloudWatchLogsConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCloudWatchLogsConfiguration :: Encode CloudWatchLogsConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CloudWatchLogsConfiguration from required parameters
newCloudWatchLogsConfiguration :: CloudWatchLogsConfiguration
newCloudWatchLogsConfiguration  = CloudWatchLogsConfiguration { "Enabled": (NullOrUndefined Nothing), "LogStreams": (NullOrUndefined Nothing) }

-- | Constructs CloudWatchLogsConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudWatchLogsConfiguration' :: ( { "Enabled" :: NullOrUndefined.NullOrUndefined (Boolean) , "LogStreams" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsLogStreams) } -> {"Enabled" :: NullOrUndefined.NullOrUndefined (Boolean) , "LogStreams" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsLogStreams) } ) -> CloudWatchLogsConfiguration
newCloudWatchLogsConfiguration'  customize = (CloudWatchLogsConfiguration <<< customize) { "Enabled": (NullOrUndefined Nothing), "LogStreams": (NullOrUndefined Nothing) }



-- | <p>Specifies the encoding of the log file so that the file can be read correctly. The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>
newtype CloudWatchLogsEncoding = CloudWatchLogsEncoding String
derive instance newtypeCloudWatchLogsEncoding :: Newtype CloudWatchLogsEncoding _
derive instance repGenericCloudWatchLogsEncoding :: Generic CloudWatchLogsEncoding _
instance showCloudWatchLogsEncoding :: Show CloudWatchLogsEncoding where
  show = genericShow
instance decodeCloudWatchLogsEncoding :: Decode CloudWatchLogsEncoding where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCloudWatchLogsEncoding :: Encode CloudWatchLogsEncoding where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. It's only used if there is no state persisted for that log stream.</p>
newtype CloudWatchLogsInitialPosition = CloudWatchLogsInitialPosition String
derive instance newtypeCloudWatchLogsInitialPosition :: Newtype CloudWatchLogsInitialPosition _
derive instance repGenericCloudWatchLogsInitialPosition :: Generic CloudWatchLogsInitialPosition _
instance showCloudWatchLogsInitialPosition :: Show CloudWatchLogsInitialPosition where
  show = genericShow
instance decodeCloudWatchLogsInitialPosition :: Decode CloudWatchLogsInitialPosition where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCloudWatchLogsInitialPosition :: Encode CloudWatchLogsInitialPosition where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes the Amazon CloudWatch logs configuration for a layer. For detailed information about members of this data type, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>
newtype CloudWatchLogsLogStream = CloudWatchLogsLogStream 
  { "LogGroupName" :: NullOrUndefined.NullOrUndefined (String)
  , "DatetimeFormat" :: NullOrUndefined.NullOrUndefined (String)
  , "TimeZone" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsTimeZone)
  , "File" :: NullOrUndefined.NullOrUndefined (String)
  , "FileFingerprintLines" :: NullOrUndefined.NullOrUndefined (String)
  , "MultiLineStartPattern" :: NullOrUndefined.NullOrUndefined (String)
  , "InitialPosition" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsInitialPosition)
  , "Encoding" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsEncoding)
  , "BufferDuration" :: NullOrUndefined.NullOrUndefined (Int)
  , "BatchCount" :: NullOrUndefined.NullOrUndefined (Int)
  , "BatchSize" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeCloudWatchLogsLogStream :: Newtype CloudWatchLogsLogStream _
derive instance repGenericCloudWatchLogsLogStream :: Generic CloudWatchLogsLogStream _
instance showCloudWatchLogsLogStream :: Show CloudWatchLogsLogStream where
  show = genericShow
instance decodeCloudWatchLogsLogStream :: Decode CloudWatchLogsLogStream where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCloudWatchLogsLogStream :: Encode CloudWatchLogsLogStream where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CloudWatchLogsLogStream from required parameters
newCloudWatchLogsLogStream :: CloudWatchLogsLogStream
newCloudWatchLogsLogStream  = CloudWatchLogsLogStream { "BatchCount": (NullOrUndefined Nothing), "BatchSize": (NullOrUndefined Nothing), "BufferDuration": (NullOrUndefined Nothing), "DatetimeFormat": (NullOrUndefined Nothing), "Encoding": (NullOrUndefined Nothing), "File": (NullOrUndefined Nothing), "FileFingerprintLines": (NullOrUndefined Nothing), "InitialPosition": (NullOrUndefined Nothing), "LogGroupName": (NullOrUndefined Nothing), "MultiLineStartPattern": (NullOrUndefined Nothing), "TimeZone": (NullOrUndefined Nothing) }

-- | Constructs CloudWatchLogsLogStream's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudWatchLogsLogStream' :: ( { "LogGroupName" :: NullOrUndefined.NullOrUndefined (String) , "DatetimeFormat" :: NullOrUndefined.NullOrUndefined (String) , "TimeZone" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsTimeZone) , "File" :: NullOrUndefined.NullOrUndefined (String) , "FileFingerprintLines" :: NullOrUndefined.NullOrUndefined (String) , "MultiLineStartPattern" :: NullOrUndefined.NullOrUndefined (String) , "InitialPosition" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsInitialPosition) , "Encoding" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsEncoding) , "BufferDuration" :: NullOrUndefined.NullOrUndefined (Int) , "BatchCount" :: NullOrUndefined.NullOrUndefined (Int) , "BatchSize" :: NullOrUndefined.NullOrUndefined (Int) } -> {"LogGroupName" :: NullOrUndefined.NullOrUndefined (String) , "DatetimeFormat" :: NullOrUndefined.NullOrUndefined (String) , "TimeZone" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsTimeZone) , "File" :: NullOrUndefined.NullOrUndefined (String) , "FileFingerprintLines" :: NullOrUndefined.NullOrUndefined (String) , "MultiLineStartPattern" :: NullOrUndefined.NullOrUndefined (String) , "InitialPosition" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsInitialPosition) , "Encoding" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsEncoding) , "BufferDuration" :: NullOrUndefined.NullOrUndefined (Int) , "BatchCount" :: NullOrUndefined.NullOrUndefined (Int) , "BatchSize" :: NullOrUndefined.NullOrUndefined (Int) } ) -> CloudWatchLogsLogStream
newCloudWatchLogsLogStream'  customize = (CloudWatchLogsLogStream <<< customize) { "BatchCount": (NullOrUndefined Nothing), "BatchSize": (NullOrUndefined Nothing), "BufferDuration": (NullOrUndefined Nothing), "DatetimeFormat": (NullOrUndefined Nothing), "Encoding": (NullOrUndefined Nothing), "File": (NullOrUndefined Nothing), "FileFingerprintLines": (NullOrUndefined Nothing), "InitialPosition": (NullOrUndefined Nothing), "LogGroupName": (NullOrUndefined Nothing), "MultiLineStartPattern": (NullOrUndefined Nothing), "TimeZone": (NullOrUndefined Nothing) }



-- | <p>Describes the Amazon CloudWatch logs configuration for a layer.</p>
newtype CloudWatchLogsLogStreams = CloudWatchLogsLogStreams (Array CloudWatchLogsLogStream)
derive instance newtypeCloudWatchLogsLogStreams :: Newtype CloudWatchLogsLogStreams _
derive instance repGenericCloudWatchLogsLogStreams :: Generic CloudWatchLogsLogStreams _
instance showCloudWatchLogsLogStreams :: Show CloudWatchLogsLogStreams where
  show = genericShow
instance decodeCloudWatchLogsLogStreams :: Decode CloudWatchLogsLogStreams where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCloudWatchLogsLogStreams :: Encode CloudWatchLogsLogStreams where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The preferred time zone for logs streamed to CloudWatch Logs. Valid values are <code>LOCAL</code> and <code>UTC</code>, for Coordinated Universal Time.</p>
newtype CloudWatchLogsTimeZone = CloudWatchLogsTimeZone String
derive instance newtypeCloudWatchLogsTimeZone :: Newtype CloudWatchLogsTimeZone _
derive instance repGenericCloudWatchLogsTimeZone :: Generic CloudWatchLogsTimeZone _
instance showCloudWatchLogsTimeZone :: Show CloudWatchLogsTimeZone where
  show = genericShow
instance decodeCloudWatchLogsTimeZone :: Decode CloudWatchLogsTimeZone where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCloudWatchLogsTimeZone :: Encode CloudWatchLogsTimeZone where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes a command.</p>
newtype Command = Command 
  { "CommandId" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  , "DeploymentId" :: NullOrUndefined.NullOrUndefined (String)
  , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "AcknowledgedAt" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "CompletedAt" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "Status" :: NullOrUndefined.NullOrUndefined (String)
  , "ExitCode" :: NullOrUndefined.NullOrUndefined (Int)
  , "LogUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Type" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCommand :: Newtype Command _
derive instance repGenericCommand :: Generic Command _
instance showCommand :: Show Command where
  show = genericShow
instance decodeCommand :: Decode Command where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCommand :: Encode Command where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Command from required parameters
newCommand :: Command
newCommand  = Command { "AcknowledgedAt": (NullOrUndefined Nothing), "CommandId": (NullOrUndefined Nothing), "CompletedAt": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "DeploymentId": (NullOrUndefined Nothing), "ExitCode": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "LogUrl": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs Command's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCommand' :: ( { "CommandId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "DeploymentId" :: NullOrUndefined.NullOrUndefined (String) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "AcknowledgedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "CompletedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "Status" :: NullOrUndefined.NullOrUndefined (String) , "ExitCode" :: NullOrUndefined.NullOrUndefined (Int) , "LogUrl" :: NullOrUndefined.NullOrUndefined (String) , "Type" :: NullOrUndefined.NullOrUndefined (String) } -> {"CommandId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "DeploymentId" :: NullOrUndefined.NullOrUndefined (String) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "AcknowledgedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "CompletedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "Status" :: NullOrUndefined.NullOrUndefined (String) , "ExitCode" :: NullOrUndefined.NullOrUndefined (Int) , "LogUrl" :: NullOrUndefined.NullOrUndefined (String) , "Type" :: NullOrUndefined.NullOrUndefined (String) } ) -> Command
newCommand'  customize = (Command <<< customize) { "AcknowledgedAt": (NullOrUndefined Nothing), "CommandId": (NullOrUndefined Nothing), "CompletedAt": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "DeploymentId": (NullOrUndefined Nothing), "ExitCode": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "LogUrl": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype Commands = Commands (Array Command)
derive instance newtypeCommands :: Newtype Commands _
derive instance repGenericCommands :: Generic Commands _
instance showCommands :: Show Commands where
  show = genericShow
instance decodeCommands :: Decode Commands where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCommands :: Encode Commands where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateAppRequest = CreateAppRequest 
  { "StackId" :: (String)
  , "Shortname" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "DataSources" :: NullOrUndefined.NullOrUndefined (DataSources)
  , "Type" :: (AppType)
  , "AppSource" :: NullOrUndefined.NullOrUndefined (Source)
  , "Domains" :: NullOrUndefined.NullOrUndefined (Strings)
  , "EnableSsl" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "SslConfiguration" :: NullOrUndefined.NullOrUndefined (SslConfiguration)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (AppAttributes)
  , "Environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables)
  }
derive instance newtypeCreateAppRequest :: Newtype CreateAppRequest _
derive instance repGenericCreateAppRequest :: Generic CreateAppRequest _
instance showCreateAppRequest :: Show CreateAppRequest where
  show = genericShow
instance decodeCreateAppRequest :: Decode CreateAppRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAppRequest :: Encode CreateAppRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateAppRequest from required parameters
newCreateAppRequest :: String -> String -> AppType -> CreateAppRequest
newCreateAppRequest _Name _StackId _Type = CreateAppRequest { "Name": _Name, "StackId": _StackId, "Type": _Type, "AppSource": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "DataSources": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Domains": (NullOrUndefined Nothing), "EnableSsl": (NullOrUndefined Nothing), "Environment": (NullOrUndefined Nothing), "Shortname": (NullOrUndefined Nothing), "SslConfiguration": (NullOrUndefined Nothing) }

-- | Constructs CreateAppRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAppRequest' :: String -> String -> AppType -> ( { "StackId" :: (String) , "Shortname" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "DataSources" :: NullOrUndefined.NullOrUndefined (DataSources) , "Type" :: (AppType) , "AppSource" :: NullOrUndefined.NullOrUndefined (Source) , "Domains" :: NullOrUndefined.NullOrUndefined (Strings) , "EnableSsl" :: NullOrUndefined.NullOrUndefined (Boolean) , "SslConfiguration" :: NullOrUndefined.NullOrUndefined (SslConfiguration) , "Attributes" :: NullOrUndefined.NullOrUndefined (AppAttributes) , "Environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables) } -> {"StackId" :: (String) , "Shortname" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "DataSources" :: NullOrUndefined.NullOrUndefined (DataSources) , "Type" :: (AppType) , "AppSource" :: NullOrUndefined.NullOrUndefined (Source) , "Domains" :: NullOrUndefined.NullOrUndefined (Strings) , "EnableSsl" :: NullOrUndefined.NullOrUndefined (Boolean) , "SslConfiguration" :: NullOrUndefined.NullOrUndefined (SslConfiguration) , "Attributes" :: NullOrUndefined.NullOrUndefined (AppAttributes) , "Environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables) } ) -> CreateAppRequest
newCreateAppRequest' _Name _StackId _Type customize = (CreateAppRequest <<< customize) { "Name": _Name, "StackId": _StackId, "Type": _Type, "AppSource": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "DataSources": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Domains": (NullOrUndefined Nothing), "EnableSsl": (NullOrUndefined Nothing), "Environment": (NullOrUndefined Nothing), "Shortname": (NullOrUndefined Nothing), "SslConfiguration": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>CreateApp</code> request.</p>
newtype CreateAppResult = CreateAppResult 
  { "AppId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateAppResult :: Newtype CreateAppResult _
derive instance repGenericCreateAppResult :: Generic CreateAppResult _
instance showCreateAppResult :: Show CreateAppResult where
  show = genericShow
instance decodeCreateAppResult :: Decode CreateAppResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAppResult :: Encode CreateAppResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateAppResult from required parameters
newCreateAppResult :: CreateAppResult
newCreateAppResult  = CreateAppResult { "AppId": (NullOrUndefined Nothing) }

-- | Constructs CreateAppResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAppResult' :: ( { "AppId" :: NullOrUndefined.NullOrUndefined (String) } -> {"AppId" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateAppResult
newCreateAppResult'  customize = (CreateAppResult <<< customize) { "AppId": (NullOrUndefined Nothing) }



newtype CreateDeploymentRequest = CreateDeploymentRequest 
  { "StackId" :: (String)
  , "AppId" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceIds" :: NullOrUndefined.NullOrUndefined (Strings)
  , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings)
  , "Command" :: (DeploymentCommand)
  , "Comment" :: NullOrUndefined.NullOrUndefined (String)
  , "CustomJson" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateDeploymentRequest :: Newtype CreateDeploymentRequest _
derive instance repGenericCreateDeploymentRequest :: Generic CreateDeploymentRequest _
instance showCreateDeploymentRequest :: Show CreateDeploymentRequest where
  show = genericShow
instance decodeCreateDeploymentRequest :: Decode CreateDeploymentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateDeploymentRequest :: Encode CreateDeploymentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateDeploymentRequest from required parameters
newCreateDeploymentRequest :: DeploymentCommand -> String -> CreateDeploymentRequest
newCreateDeploymentRequest _Command _StackId = CreateDeploymentRequest { "Command": _Command, "StackId": _StackId, "AppId": (NullOrUndefined Nothing), "Comment": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "InstanceIds": (NullOrUndefined Nothing), "LayerIds": (NullOrUndefined Nothing) }

-- | Constructs CreateDeploymentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDeploymentRequest' :: DeploymentCommand -> String -> ( { "StackId" :: (String) , "AppId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceIds" :: NullOrUndefined.NullOrUndefined (Strings) , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings) , "Command" :: (DeploymentCommand) , "Comment" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) } -> {"StackId" :: (String) , "AppId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceIds" :: NullOrUndefined.NullOrUndefined (Strings) , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings) , "Command" :: (DeploymentCommand) , "Comment" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateDeploymentRequest
newCreateDeploymentRequest' _Command _StackId customize = (CreateDeploymentRequest <<< customize) { "Command": _Command, "StackId": _StackId, "AppId": (NullOrUndefined Nothing), "Comment": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "InstanceIds": (NullOrUndefined Nothing), "LayerIds": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>CreateDeployment</code> request.</p>
newtype CreateDeploymentResult = CreateDeploymentResult 
  { "DeploymentId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateDeploymentResult :: Newtype CreateDeploymentResult _
derive instance repGenericCreateDeploymentResult :: Generic CreateDeploymentResult _
instance showCreateDeploymentResult :: Show CreateDeploymentResult where
  show = genericShow
instance decodeCreateDeploymentResult :: Decode CreateDeploymentResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateDeploymentResult :: Encode CreateDeploymentResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateDeploymentResult from required parameters
newCreateDeploymentResult :: CreateDeploymentResult
newCreateDeploymentResult  = CreateDeploymentResult { "DeploymentId": (NullOrUndefined Nothing) }

-- | Constructs CreateDeploymentResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDeploymentResult' :: ( { "DeploymentId" :: NullOrUndefined.NullOrUndefined (String) } -> {"DeploymentId" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateDeploymentResult
newCreateDeploymentResult'  customize = (CreateDeploymentResult <<< customize) { "DeploymentId": (NullOrUndefined Nothing) }



newtype CreateInstanceRequest = CreateInstanceRequest 
  { "StackId" :: (String)
  , "LayerIds" :: (Strings)
  , "InstanceType" :: (String)
  , "AutoScalingType" :: NullOrUndefined.NullOrUndefined (AutoScalingType)
  , "Hostname" :: NullOrUndefined.NullOrUndefined (String)
  , "Os" :: NullOrUndefined.NullOrUndefined (String)
  , "AmiId" :: NullOrUndefined.NullOrUndefined (String)
  , "SshKeyName" :: NullOrUndefined.NullOrUndefined (String)
  , "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String)
  , "VirtualizationType" :: NullOrUndefined.NullOrUndefined (String)
  , "SubnetId" :: NullOrUndefined.NullOrUndefined (String)
  , "Architecture" :: NullOrUndefined.NullOrUndefined (Architecture)
  , "RootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType)
  , "BlockDeviceMappings" :: NullOrUndefined.NullOrUndefined (BlockDeviceMappings)
  , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String)
  , "Tenancy" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateInstanceRequest :: Newtype CreateInstanceRequest _
derive instance repGenericCreateInstanceRequest :: Generic CreateInstanceRequest _
instance showCreateInstanceRequest :: Show CreateInstanceRequest where
  show = genericShow
instance decodeCreateInstanceRequest :: Decode CreateInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateInstanceRequest :: Encode CreateInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateInstanceRequest from required parameters
newCreateInstanceRequest :: String -> Strings -> String -> CreateInstanceRequest
newCreateInstanceRequest _InstanceType _LayerIds _StackId = CreateInstanceRequest { "InstanceType": _InstanceType, "LayerIds": _LayerIds, "StackId": _StackId, "AgentVersion": (NullOrUndefined Nothing), "AmiId": (NullOrUndefined Nothing), "Architecture": (NullOrUndefined Nothing), "AutoScalingType": (NullOrUndefined Nothing), "AvailabilityZone": (NullOrUndefined Nothing), "BlockDeviceMappings": (NullOrUndefined Nothing), "EbsOptimized": (NullOrUndefined Nothing), "Hostname": (NullOrUndefined Nothing), "InstallUpdatesOnBoot": (NullOrUndefined Nothing), "Os": (NullOrUndefined Nothing), "RootDeviceType": (NullOrUndefined Nothing), "SshKeyName": (NullOrUndefined Nothing), "SubnetId": (NullOrUndefined Nothing), "Tenancy": (NullOrUndefined Nothing), "VirtualizationType": (NullOrUndefined Nothing) }

-- | Constructs CreateInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateInstanceRequest' :: String -> Strings -> String -> ( { "StackId" :: (String) , "LayerIds" :: (Strings) , "InstanceType" :: (String) , "AutoScalingType" :: NullOrUndefined.NullOrUndefined (AutoScalingType) , "Hostname" :: NullOrUndefined.NullOrUndefined (String) , "Os" :: NullOrUndefined.NullOrUndefined (String) , "AmiId" :: NullOrUndefined.NullOrUndefined (String) , "SshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "VirtualizationType" :: NullOrUndefined.NullOrUndefined (String) , "SubnetId" :: NullOrUndefined.NullOrUndefined (String) , "Architecture" :: NullOrUndefined.NullOrUndefined (Architecture) , "RootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType) , "BlockDeviceMappings" :: NullOrUndefined.NullOrUndefined (BlockDeviceMappings) , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean) , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (Boolean) , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) , "Tenancy" :: NullOrUndefined.NullOrUndefined (String) } -> {"StackId" :: (String) , "LayerIds" :: (Strings) , "InstanceType" :: (String) , "AutoScalingType" :: NullOrUndefined.NullOrUndefined (AutoScalingType) , "Hostname" :: NullOrUndefined.NullOrUndefined (String) , "Os" :: NullOrUndefined.NullOrUndefined (String) , "AmiId" :: NullOrUndefined.NullOrUndefined (String) , "SshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "VirtualizationType" :: NullOrUndefined.NullOrUndefined (String) , "SubnetId" :: NullOrUndefined.NullOrUndefined (String) , "Architecture" :: NullOrUndefined.NullOrUndefined (Architecture) , "RootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType) , "BlockDeviceMappings" :: NullOrUndefined.NullOrUndefined (BlockDeviceMappings) , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean) , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (Boolean) , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) , "Tenancy" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateInstanceRequest
newCreateInstanceRequest' _InstanceType _LayerIds _StackId customize = (CreateInstanceRequest <<< customize) { "InstanceType": _InstanceType, "LayerIds": _LayerIds, "StackId": _StackId, "AgentVersion": (NullOrUndefined Nothing), "AmiId": (NullOrUndefined Nothing), "Architecture": (NullOrUndefined Nothing), "AutoScalingType": (NullOrUndefined Nothing), "AvailabilityZone": (NullOrUndefined Nothing), "BlockDeviceMappings": (NullOrUndefined Nothing), "EbsOptimized": (NullOrUndefined Nothing), "Hostname": (NullOrUndefined Nothing), "InstallUpdatesOnBoot": (NullOrUndefined Nothing), "Os": (NullOrUndefined Nothing), "RootDeviceType": (NullOrUndefined Nothing), "SshKeyName": (NullOrUndefined Nothing), "SubnetId": (NullOrUndefined Nothing), "Tenancy": (NullOrUndefined Nothing), "VirtualizationType": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>CreateInstance</code> request.</p>
newtype CreateInstanceResult = CreateInstanceResult 
  { "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateInstanceResult :: Newtype CreateInstanceResult _
derive instance repGenericCreateInstanceResult :: Generic CreateInstanceResult _
instance showCreateInstanceResult :: Show CreateInstanceResult where
  show = genericShow
instance decodeCreateInstanceResult :: Decode CreateInstanceResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateInstanceResult :: Encode CreateInstanceResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateInstanceResult from required parameters
newCreateInstanceResult :: CreateInstanceResult
newCreateInstanceResult  = CreateInstanceResult { "InstanceId": (NullOrUndefined Nothing) }

-- | Constructs CreateInstanceResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateInstanceResult' :: ( { "InstanceId" :: NullOrUndefined.NullOrUndefined (String) } -> {"InstanceId" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateInstanceResult
newCreateInstanceResult'  customize = (CreateInstanceResult <<< customize) { "InstanceId": (NullOrUndefined Nothing) }



newtype CreateLayerRequest = CreateLayerRequest 
  { "StackId" :: (String)
  , "Type" :: (LayerType)
  , "Name" :: (String)
  , "Shortname" :: (String)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (LayerAttributes)
  , "CloudWatchLogsConfiguration" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsConfiguration)
  , "CustomInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String)
  , "CustomJson" :: NullOrUndefined.NullOrUndefined (String)
  , "CustomSecurityGroupIds" :: NullOrUndefined.NullOrUndefined (Strings)
  , "Packages" :: NullOrUndefined.NullOrUndefined (Strings)
  , "VolumeConfigurations" :: NullOrUndefined.NullOrUndefined (VolumeConfigurations)
  , "EnableAutoHealing" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AutoAssignElasticIps" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AutoAssignPublicIps" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "CustomRecipes" :: NullOrUndefined.NullOrUndefined (Recipes)
  , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "UseEbsOptimizedInstances" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "LifecycleEventConfiguration" :: NullOrUndefined.NullOrUndefined (LifecycleEventConfiguration)
  }
derive instance newtypeCreateLayerRequest :: Newtype CreateLayerRequest _
derive instance repGenericCreateLayerRequest :: Generic CreateLayerRequest _
instance showCreateLayerRequest :: Show CreateLayerRequest where
  show = genericShow
instance decodeCreateLayerRequest :: Decode CreateLayerRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateLayerRequest :: Encode CreateLayerRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateLayerRequest from required parameters
newCreateLayerRequest :: String -> String -> String -> LayerType -> CreateLayerRequest
newCreateLayerRequest _Name _Shortname _StackId _Type = CreateLayerRequest { "Name": _Name, "Shortname": _Shortname, "StackId": _StackId, "Type": _Type, "Attributes": (NullOrUndefined Nothing), "AutoAssignElasticIps": (NullOrUndefined Nothing), "AutoAssignPublicIps": (NullOrUndefined Nothing), "CloudWatchLogsConfiguration": (NullOrUndefined Nothing), "CustomInstanceProfileArn": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "CustomRecipes": (NullOrUndefined Nothing), "CustomSecurityGroupIds": (NullOrUndefined Nothing), "EnableAutoHealing": (NullOrUndefined Nothing), "InstallUpdatesOnBoot": (NullOrUndefined Nothing), "LifecycleEventConfiguration": (NullOrUndefined Nothing), "Packages": (NullOrUndefined Nothing), "UseEbsOptimizedInstances": (NullOrUndefined Nothing), "VolumeConfigurations": (NullOrUndefined Nothing) }

-- | Constructs CreateLayerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateLayerRequest' :: String -> String -> String -> LayerType -> ( { "StackId" :: (String) , "Type" :: (LayerType) , "Name" :: (String) , "Shortname" :: (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (LayerAttributes) , "CloudWatchLogsConfiguration" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsConfiguration) , "CustomInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "CustomSecurityGroupIds" :: NullOrUndefined.NullOrUndefined (Strings) , "Packages" :: NullOrUndefined.NullOrUndefined (Strings) , "VolumeConfigurations" :: NullOrUndefined.NullOrUndefined (VolumeConfigurations) , "EnableAutoHealing" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoAssignElasticIps" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoAssignPublicIps" :: NullOrUndefined.NullOrUndefined (Boolean) , "CustomRecipes" :: NullOrUndefined.NullOrUndefined (Recipes) , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean) , "UseEbsOptimizedInstances" :: NullOrUndefined.NullOrUndefined (Boolean) , "LifecycleEventConfiguration" :: NullOrUndefined.NullOrUndefined (LifecycleEventConfiguration) } -> {"StackId" :: (String) , "Type" :: (LayerType) , "Name" :: (String) , "Shortname" :: (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (LayerAttributes) , "CloudWatchLogsConfiguration" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsConfiguration) , "CustomInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "CustomSecurityGroupIds" :: NullOrUndefined.NullOrUndefined (Strings) , "Packages" :: NullOrUndefined.NullOrUndefined (Strings) , "VolumeConfigurations" :: NullOrUndefined.NullOrUndefined (VolumeConfigurations) , "EnableAutoHealing" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoAssignElasticIps" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoAssignPublicIps" :: NullOrUndefined.NullOrUndefined (Boolean) , "CustomRecipes" :: NullOrUndefined.NullOrUndefined (Recipes) , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean) , "UseEbsOptimizedInstances" :: NullOrUndefined.NullOrUndefined (Boolean) , "LifecycleEventConfiguration" :: NullOrUndefined.NullOrUndefined (LifecycleEventConfiguration) } ) -> CreateLayerRequest
newCreateLayerRequest' _Name _Shortname _StackId _Type customize = (CreateLayerRequest <<< customize) { "Name": _Name, "Shortname": _Shortname, "StackId": _StackId, "Type": _Type, "Attributes": (NullOrUndefined Nothing), "AutoAssignElasticIps": (NullOrUndefined Nothing), "AutoAssignPublicIps": (NullOrUndefined Nothing), "CloudWatchLogsConfiguration": (NullOrUndefined Nothing), "CustomInstanceProfileArn": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "CustomRecipes": (NullOrUndefined Nothing), "CustomSecurityGroupIds": (NullOrUndefined Nothing), "EnableAutoHealing": (NullOrUndefined Nothing), "InstallUpdatesOnBoot": (NullOrUndefined Nothing), "LifecycleEventConfiguration": (NullOrUndefined Nothing), "Packages": (NullOrUndefined Nothing), "UseEbsOptimizedInstances": (NullOrUndefined Nothing), "VolumeConfigurations": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>CreateLayer</code> request.</p>
newtype CreateLayerResult = CreateLayerResult 
  { "LayerId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateLayerResult :: Newtype CreateLayerResult _
derive instance repGenericCreateLayerResult :: Generic CreateLayerResult _
instance showCreateLayerResult :: Show CreateLayerResult where
  show = genericShow
instance decodeCreateLayerResult :: Decode CreateLayerResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateLayerResult :: Encode CreateLayerResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateLayerResult from required parameters
newCreateLayerResult :: CreateLayerResult
newCreateLayerResult  = CreateLayerResult { "LayerId": (NullOrUndefined Nothing) }

-- | Constructs CreateLayerResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateLayerResult' :: ( { "LayerId" :: NullOrUndefined.NullOrUndefined (String) } -> {"LayerId" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateLayerResult
newCreateLayerResult'  customize = (CreateLayerResult <<< customize) { "LayerId": (NullOrUndefined Nothing) }



newtype CreateStackRequest = CreateStackRequest 
  { "Name" :: (String)
  , "Region" :: (String)
  , "VpcId" :: NullOrUndefined.NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (StackAttributes)
  , "ServiceRoleArn" :: (String)
  , "DefaultInstanceProfileArn" :: (String)
  , "DefaultOs" :: NullOrUndefined.NullOrUndefined (String)
  , "HostnameTheme" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultAvailabilityZone" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultSubnetId" :: NullOrUndefined.NullOrUndefined (String)
  , "CustomJson" :: NullOrUndefined.NullOrUndefined (String)
  , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager)
  , "ChefConfiguration" :: NullOrUndefined.NullOrUndefined (ChefConfiguration)
  , "UseCustomCookbooks" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "UseOpsworksSecurityGroups" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "CustomCookbooksSource" :: NullOrUndefined.NullOrUndefined (Source)
  , "DefaultSshKeyName" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultRootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType)
  , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateStackRequest :: Newtype CreateStackRequest _
derive instance repGenericCreateStackRequest :: Generic CreateStackRequest _
instance showCreateStackRequest :: Show CreateStackRequest where
  show = genericShow
instance decodeCreateStackRequest :: Decode CreateStackRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateStackRequest :: Encode CreateStackRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateStackRequest from required parameters
newCreateStackRequest :: String -> String -> String -> String -> CreateStackRequest
newCreateStackRequest _DefaultInstanceProfileArn _Name _Region _ServiceRoleArn = CreateStackRequest { "DefaultInstanceProfileArn": _DefaultInstanceProfileArn, "Name": _Name, "Region": _Region, "ServiceRoleArn": _ServiceRoleArn, "AgentVersion": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "ChefConfiguration": (NullOrUndefined Nothing), "ConfigurationManager": (NullOrUndefined Nothing), "CustomCookbooksSource": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "DefaultAvailabilityZone": (NullOrUndefined Nothing), "DefaultOs": (NullOrUndefined Nothing), "DefaultRootDeviceType": (NullOrUndefined Nothing), "DefaultSshKeyName": (NullOrUndefined Nothing), "DefaultSubnetId": (NullOrUndefined Nothing), "HostnameTheme": (NullOrUndefined Nothing), "UseCustomCookbooks": (NullOrUndefined Nothing), "UseOpsworksSecurityGroups": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }

-- | Constructs CreateStackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStackRequest' :: String -> String -> String -> String -> ( { "Name" :: (String) , "Region" :: (String) , "VpcId" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (StackAttributes) , "ServiceRoleArn" :: (String) , "DefaultInstanceProfileArn" :: (String) , "DefaultOs" :: NullOrUndefined.NullOrUndefined (String) , "HostnameTheme" :: NullOrUndefined.NullOrUndefined (String) , "DefaultAvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "DefaultSubnetId" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager) , "ChefConfiguration" :: NullOrUndefined.NullOrUndefined (ChefConfiguration) , "UseCustomCookbooks" :: NullOrUndefined.NullOrUndefined (Boolean) , "UseOpsworksSecurityGroups" :: NullOrUndefined.NullOrUndefined (Boolean) , "CustomCookbooksSource" :: NullOrUndefined.NullOrUndefined (Source) , "DefaultSshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "DefaultRootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType) , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) } -> {"Name" :: (String) , "Region" :: (String) , "VpcId" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (StackAttributes) , "ServiceRoleArn" :: (String) , "DefaultInstanceProfileArn" :: (String) , "DefaultOs" :: NullOrUndefined.NullOrUndefined (String) , "HostnameTheme" :: NullOrUndefined.NullOrUndefined (String) , "DefaultAvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "DefaultSubnetId" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager) , "ChefConfiguration" :: NullOrUndefined.NullOrUndefined (ChefConfiguration) , "UseCustomCookbooks" :: NullOrUndefined.NullOrUndefined (Boolean) , "UseOpsworksSecurityGroups" :: NullOrUndefined.NullOrUndefined (Boolean) , "CustomCookbooksSource" :: NullOrUndefined.NullOrUndefined (Source) , "DefaultSshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "DefaultRootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType) , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateStackRequest
newCreateStackRequest' _DefaultInstanceProfileArn _Name _Region _ServiceRoleArn customize = (CreateStackRequest <<< customize) { "DefaultInstanceProfileArn": _DefaultInstanceProfileArn, "Name": _Name, "Region": _Region, "ServiceRoleArn": _ServiceRoleArn, "AgentVersion": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "ChefConfiguration": (NullOrUndefined Nothing), "ConfigurationManager": (NullOrUndefined Nothing), "CustomCookbooksSource": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "DefaultAvailabilityZone": (NullOrUndefined Nothing), "DefaultOs": (NullOrUndefined Nothing), "DefaultRootDeviceType": (NullOrUndefined Nothing), "DefaultSshKeyName": (NullOrUndefined Nothing), "DefaultSubnetId": (NullOrUndefined Nothing), "HostnameTheme": (NullOrUndefined Nothing), "UseCustomCookbooks": (NullOrUndefined Nothing), "UseOpsworksSecurityGroups": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>CreateStack</code> request.</p>
newtype CreateStackResult = CreateStackResult 
  { "StackId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateStackResult :: Newtype CreateStackResult _
derive instance repGenericCreateStackResult :: Generic CreateStackResult _
instance showCreateStackResult :: Show CreateStackResult where
  show = genericShow
instance decodeCreateStackResult :: Decode CreateStackResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateStackResult :: Encode CreateStackResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateStackResult from required parameters
newCreateStackResult :: CreateStackResult
newCreateStackResult  = CreateStackResult { "StackId": (NullOrUndefined Nothing) }

-- | Constructs CreateStackResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStackResult' :: ( { "StackId" :: NullOrUndefined.NullOrUndefined (String) } -> {"StackId" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateStackResult
newCreateStackResult'  customize = (CreateStackResult <<< customize) { "StackId": (NullOrUndefined Nothing) }



newtype CreateUserProfileRequest = CreateUserProfileRequest 
  { "IamUserArn" :: (String)
  , "SshUsername" :: NullOrUndefined.NullOrUndefined (String)
  , "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String)
  , "AllowSelfManagement" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeCreateUserProfileRequest :: Newtype CreateUserProfileRequest _
derive instance repGenericCreateUserProfileRequest :: Generic CreateUserProfileRequest _
instance showCreateUserProfileRequest :: Show CreateUserProfileRequest where
  show = genericShow
instance decodeCreateUserProfileRequest :: Decode CreateUserProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateUserProfileRequest :: Encode CreateUserProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateUserProfileRequest from required parameters
newCreateUserProfileRequest :: String -> CreateUserProfileRequest
newCreateUserProfileRequest _IamUserArn = CreateUserProfileRequest { "IamUserArn": _IamUserArn, "AllowSelfManagement": (NullOrUndefined Nothing), "SshPublicKey": (NullOrUndefined Nothing), "SshUsername": (NullOrUndefined Nothing) }

-- | Constructs CreateUserProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserProfileRequest' :: String -> ( { "IamUserArn" :: (String) , "SshUsername" :: NullOrUndefined.NullOrUndefined (String) , "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String) , "AllowSelfManagement" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"IamUserArn" :: (String) , "SshUsername" :: NullOrUndefined.NullOrUndefined (String) , "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String) , "AllowSelfManagement" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> CreateUserProfileRequest
newCreateUserProfileRequest' _IamUserArn customize = (CreateUserProfileRequest <<< customize) { "IamUserArn": _IamUserArn, "AllowSelfManagement": (NullOrUndefined Nothing), "SshPublicKey": (NullOrUndefined Nothing), "SshUsername": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>CreateUserProfile</code> request.</p>
newtype CreateUserProfileResult = CreateUserProfileResult 
  { "IamUserArn" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateUserProfileResult :: Newtype CreateUserProfileResult _
derive instance repGenericCreateUserProfileResult :: Generic CreateUserProfileResult _
instance showCreateUserProfileResult :: Show CreateUserProfileResult where
  show = genericShow
instance decodeCreateUserProfileResult :: Decode CreateUserProfileResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateUserProfileResult :: Encode CreateUserProfileResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateUserProfileResult from required parameters
newCreateUserProfileResult :: CreateUserProfileResult
newCreateUserProfileResult  = CreateUserProfileResult { "IamUserArn": (NullOrUndefined Nothing) }

-- | Constructs CreateUserProfileResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateUserProfileResult' :: ( { "IamUserArn" :: NullOrUndefined.NullOrUndefined (String) } -> {"IamUserArn" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateUserProfileResult
newCreateUserProfileResult'  customize = (CreateUserProfileResult <<< customize) { "IamUserArn": (NullOrUndefined Nothing) }



newtype DailyAutoScalingSchedule = DailyAutoScalingSchedule (StrMap.StrMap Switch)
derive instance newtypeDailyAutoScalingSchedule :: Newtype DailyAutoScalingSchedule _
derive instance repGenericDailyAutoScalingSchedule :: Generic DailyAutoScalingSchedule _
instance showDailyAutoScalingSchedule :: Show DailyAutoScalingSchedule where
  show = genericShow
instance decodeDailyAutoScalingSchedule :: Decode DailyAutoScalingSchedule where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDailyAutoScalingSchedule :: Encode DailyAutoScalingSchedule where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes an app's data source.</p>
newtype DataSource = DataSource 
  { "Type" :: NullOrUndefined.NullOrUndefined (String)
  , "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "DatabaseName" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDataSource :: Newtype DataSource _
derive instance repGenericDataSource :: Generic DataSource _
instance showDataSource :: Show DataSource where
  show = genericShow
instance decodeDataSource :: Decode DataSource where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDataSource :: Encode DataSource where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DataSource from required parameters
newDataSource :: DataSource
newDataSource  = DataSource { "Arn": (NullOrUndefined Nothing), "DatabaseName": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs DataSource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDataSource' :: ( { "Type" :: NullOrUndefined.NullOrUndefined (String) , "Arn" :: NullOrUndefined.NullOrUndefined (String) , "DatabaseName" :: NullOrUndefined.NullOrUndefined (String) } -> {"Type" :: NullOrUndefined.NullOrUndefined (String) , "Arn" :: NullOrUndefined.NullOrUndefined (String) , "DatabaseName" :: NullOrUndefined.NullOrUndefined (String) } ) -> DataSource
newDataSource'  customize = (DataSource <<< customize) { "Arn": (NullOrUndefined Nothing), "DatabaseName": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype DataSources = DataSources (Array DataSource)
derive instance newtypeDataSources :: Newtype DataSources _
derive instance repGenericDataSources :: Generic DataSources _
instance showDataSources :: Show DataSources where
  show = genericShow
instance decodeDataSources :: Decode DataSources where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDataSources :: Encode DataSources where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DateTime = DateTime String
derive instance newtypeDateTime :: Newtype DateTime _
derive instance repGenericDateTime :: Generic DateTime _
instance showDateTime :: Show DateTime where
  show = genericShow
instance decodeDateTime :: Decode DateTime where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDateTime :: Encode DateTime where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteAppRequest = DeleteAppRequest 
  { "AppId" :: (String)
  }
derive instance newtypeDeleteAppRequest :: Newtype DeleteAppRequest _
derive instance repGenericDeleteAppRequest :: Generic DeleteAppRequest _
instance showDeleteAppRequest :: Show DeleteAppRequest where
  show = genericShow
instance decodeDeleteAppRequest :: Decode DeleteAppRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteAppRequest :: Encode DeleteAppRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteAppRequest from required parameters
newDeleteAppRequest :: String -> DeleteAppRequest
newDeleteAppRequest _AppId = DeleteAppRequest { "AppId": _AppId }

-- | Constructs DeleteAppRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAppRequest' :: String -> ( { "AppId" :: (String) } -> {"AppId" :: (String) } ) -> DeleteAppRequest
newDeleteAppRequest' _AppId customize = (DeleteAppRequest <<< customize) { "AppId": _AppId }



newtype DeleteInstanceRequest = DeleteInstanceRequest 
  { "InstanceId" :: (String)
  , "DeleteElasticIp" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "DeleteVolumes" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeDeleteInstanceRequest :: Newtype DeleteInstanceRequest _
derive instance repGenericDeleteInstanceRequest :: Generic DeleteInstanceRequest _
instance showDeleteInstanceRequest :: Show DeleteInstanceRequest where
  show = genericShow
instance decodeDeleteInstanceRequest :: Decode DeleteInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteInstanceRequest :: Encode DeleteInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteInstanceRequest from required parameters
newDeleteInstanceRequest :: String -> DeleteInstanceRequest
newDeleteInstanceRequest _InstanceId = DeleteInstanceRequest { "InstanceId": _InstanceId, "DeleteElasticIp": (NullOrUndefined Nothing), "DeleteVolumes": (NullOrUndefined Nothing) }

-- | Constructs DeleteInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteInstanceRequest' :: String -> ( { "InstanceId" :: (String) , "DeleteElasticIp" :: NullOrUndefined.NullOrUndefined (Boolean) , "DeleteVolumes" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"InstanceId" :: (String) , "DeleteElasticIp" :: NullOrUndefined.NullOrUndefined (Boolean) , "DeleteVolumes" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> DeleteInstanceRequest
newDeleteInstanceRequest' _InstanceId customize = (DeleteInstanceRequest <<< customize) { "InstanceId": _InstanceId, "DeleteElasticIp": (NullOrUndefined Nothing), "DeleteVolumes": (NullOrUndefined Nothing) }



newtype DeleteLayerRequest = DeleteLayerRequest 
  { "LayerId" :: (String)
  }
derive instance newtypeDeleteLayerRequest :: Newtype DeleteLayerRequest _
derive instance repGenericDeleteLayerRequest :: Generic DeleteLayerRequest _
instance showDeleteLayerRequest :: Show DeleteLayerRequest where
  show = genericShow
instance decodeDeleteLayerRequest :: Decode DeleteLayerRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteLayerRequest :: Encode DeleteLayerRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDeleteStackRequest :: Show DeleteStackRequest where
  show = genericShow
instance decodeDeleteStackRequest :: Decode DeleteStackRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteStackRequest :: Encode DeleteStackRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDeleteUserProfileRequest :: Show DeleteUserProfileRequest where
  show = genericShow
instance decodeDeleteUserProfileRequest :: Decode DeleteUserProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteUserProfileRequest :: Encode DeleteUserProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteUserProfileRequest from required parameters
newDeleteUserProfileRequest :: String -> DeleteUserProfileRequest
newDeleteUserProfileRequest _IamUserArn = DeleteUserProfileRequest { "IamUserArn": _IamUserArn }

-- | Constructs DeleteUserProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteUserProfileRequest' :: String -> ( { "IamUserArn" :: (String) } -> {"IamUserArn" :: (String) } ) -> DeleteUserProfileRequest
newDeleteUserProfileRequest' _IamUserArn customize = (DeleteUserProfileRequest <<< customize) { "IamUserArn": _IamUserArn }



-- | <p>Describes a deployment of a stack or app.</p>
newtype Deployment = Deployment 
  { "DeploymentId" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "AppId" :: NullOrUndefined.NullOrUndefined (String)
  , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "CompletedAt" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "Duration" :: NullOrUndefined.NullOrUndefined (Int)
  , "IamUserArn" :: NullOrUndefined.NullOrUndefined (String)
  , "Comment" :: NullOrUndefined.NullOrUndefined (String)
  , "Command" :: NullOrUndefined.NullOrUndefined (DeploymentCommand)
  , "Status" :: NullOrUndefined.NullOrUndefined (String)
  , "CustomJson" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceIds" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDeployment :: Newtype Deployment _
derive instance repGenericDeployment :: Generic Deployment _
instance showDeployment :: Show Deployment where
  show = genericShow
instance decodeDeployment :: Decode Deployment where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeployment :: Encode Deployment where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Deployment from required parameters
newDeployment :: Deployment
newDeployment  = Deployment { "AppId": (NullOrUndefined Nothing), "Command": (NullOrUndefined Nothing), "Comment": (NullOrUndefined Nothing), "CompletedAt": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "DeploymentId": (NullOrUndefined Nothing), "Duration": (NullOrUndefined Nothing), "IamUserArn": (NullOrUndefined Nothing), "InstanceIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs Deployment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeployment' :: ( { "DeploymentId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "AppId" :: NullOrUndefined.NullOrUndefined (String) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "CompletedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "Duration" :: NullOrUndefined.NullOrUndefined (Int) , "IamUserArn" :: NullOrUndefined.NullOrUndefined (String) , "Comment" :: NullOrUndefined.NullOrUndefined (String) , "Command" :: NullOrUndefined.NullOrUndefined (DeploymentCommand) , "Status" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "InstanceIds" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"DeploymentId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "AppId" :: NullOrUndefined.NullOrUndefined (String) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "CompletedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "Duration" :: NullOrUndefined.NullOrUndefined (Int) , "IamUserArn" :: NullOrUndefined.NullOrUndefined (String) , "Comment" :: NullOrUndefined.NullOrUndefined (String) , "Command" :: NullOrUndefined.NullOrUndefined (DeploymentCommand) , "Status" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "InstanceIds" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> Deployment
newDeployment'  customize = (Deployment <<< customize) { "AppId": (NullOrUndefined Nothing), "Command": (NullOrUndefined Nothing), "Comment": (NullOrUndefined Nothing), "CompletedAt": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "DeploymentId": (NullOrUndefined Nothing), "Duration": (NullOrUndefined Nothing), "IamUserArn": (NullOrUndefined Nothing), "InstanceIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



-- | <p>Used to specify a stack or deployment command.</p>
newtype DeploymentCommand = DeploymentCommand 
  { "Name" :: (DeploymentCommandName)
  , "Args" :: NullOrUndefined.NullOrUndefined (DeploymentCommandArgs)
  }
derive instance newtypeDeploymentCommand :: Newtype DeploymentCommand _
derive instance repGenericDeploymentCommand :: Generic DeploymentCommand _
instance showDeploymentCommand :: Show DeploymentCommand where
  show = genericShow
instance decodeDeploymentCommand :: Decode DeploymentCommand where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeploymentCommand :: Encode DeploymentCommand where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeploymentCommand from required parameters
newDeploymentCommand :: DeploymentCommandName -> DeploymentCommand
newDeploymentCommand _Name = DeploymentCommand { "Name": _Name, "Args": (NullOrUndefined Nothing) }

-- | Constructs DeploymentCommand's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeploymentCommand' :: DeploymentCommandName -> ( { "Name" :: (DeploymentCommandName) , "Args" :: NullOrUndefined.NullOrUndefined (DeploymentCommandArgs) } -> {"Name" :: (DeploymentCommandName) , "Args" :: NullOrUndefined.NullOrUndefined (DeploymentCommandArgs) } ) -> DeploymentCommand
newDeploymentCommand' _Name customize = (DeploymentCommand <<< customize) { "Name": _Name, "Args": (NullOrUndefined Nothing) }



newtype DeploymentCommandArgs = DeploymentCommandArgs (StrMap.StrMap Strings)
derive instance newtypeDeploymentCommandArgs :: Newtype DeploymentCommandArgs _
derive instance repGenericDeploymentCommandArgs :: Generic DeploymentCommandArgs _
instance showDeploymentCommandArgs :: Show DeploymentCommandArgs where
  show = genericShow
instance decodeDeploymentCommandArgs :: Decode DeploymentCommandArgs where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeploymentCommandArgs :: Encode DeploymentCommandArgs where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeploymentCommandName = DeploymentCommandName String
derive instance newtypeDeploymentCommandName :: Newtype DeploymentCommandName _
derive instance repGenericDeploymentCommandName :: Generic DeploymentCommandName _
instance showDeploymentCommandName :: Show DeploymentCommandName where
  show = genericShow
instance decodeDeploymentCommandName :: Decode DeploymentCommandName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeploymentCommandName :: Encode DeploymentCommandName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Deployments = Deployments (Array Deployment)
derive instance newtypeDeployments :: Newtype Deployments _
derive instance repGenericDeployments :: Generic Deployments _
instance showDeployments :: Show Deployments where
  show = genericShow
instance decodeDeployments :: Decode Deployments where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeployments :: Encode Deployments where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeregisterEcsClusterRequest = DeregisterEcsClusterRequest 
  { "EcsClusterArn" :: (String)
  }
derive instance newtypeDeregisterEcsClusterRequest :: Newtype DeregisterEcsClusterRequest _
derive instance repGenericDeregisterEcsClusterRequest :: Generic DeregisterEcsClusterRequest _
instance showDeregisterEcsClusterRequest :: Show DeregisterEcsClusterRequest where
  show = genericShow
instance decodeDeregisterEcsClusterRequest :: Decode DeregisterEcsClusterRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeregisterEcsClusterRequest :: Encode DeregisterEcsClusterRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDeregisterElasticIpRequest :: Show DeregisterElasticIpRequest where
  show = genericShow
instance decodeDeregisterElasticIpRequest :: Decode DeregisterElasticIpRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeregisterElasticIpRequest :: Encode DeregisterElasticIpRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDeregisterInstanceRequest :: Show DeregisterInstanceRequest where
  show = genericShow
instance decodeDeregisterInstanceRequest :: Decode DeregisterInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeregisterInstanceRequest :: Encode DeregisterInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDeregisterRdsDbInstanceRequest :: Show DeregisterRdsDbInstanceRequest where
  show = genericShow
instance decodeDeregisterRdsDbInstanceRequest :: Decode DeregisterRdsDbInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeregisterRdsDbInstanceRequest :: Encode DeregisterRdsDbInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDeregisterVolumeRequest :: Show DeregisterVolumeRequest where
  show = genericShow
instance decodeDeregisterVolumeRequest :: Decode DeregisterVolumeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeregisterVolumeRequest :: Encode DeregisterVolumeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeregisterVolumeRequest from required parameters
newDeregisterVolumeRequest :: String -> DeregisterVolumeRequest
newDeregisterVolumeRequest _VolumeId = DeregisterVolumeRequest { "VolumeId": _VolumeId }

-- | Constructs DeregisterVolumeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterVolumeRequest' :: String -> ( { "VolumeId" :: (String) } -> {"VolumeId" :: (String) } ) -> DeregisterVolumeRequest
newDeregisterVolumeRequest' _VolumeId customize = (DeregisterVolumeRequest <<< customize) { "VolumeId": _VolumeId }



newtype DescribeAgentVersionsRequest = DescribeAgentVersionsRequest 
  { "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager)
  }
derive instance newtypeDescribeAgentVersionsRequest :: Newtype DescribeAgentVersionsRequest _
derive instance repGenericDescribeAgentVersionsRequest :: Generic DescribeAgentVersionsRequest _
instance showDescribeAgentVersionsRequest :: Show DescribeAgentVersionsRequest where
  show = genericShow
instance decodeDescribeAgentVersionsRequest :: Decode DescribeAgentVersionsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeAgentVersionsRequest :: Encode DescribeAgentVersionsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeAgentVersionsRequest from required parameters
newDescribeAgentVersionsRequest :: DescribeAgentVersionsRequest
newDescribeAgentVersionsRequest  = DescribeAgentVersionsRequest { "ConfigurationManager": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs DescribeAgentVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAgentVersionsRequest' :: ( { "StackId" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager) } -> {"StackId" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager) } ) -> DescribeAgentVersionsRequest
newDescribeAgentVersionsRequest'  customize = (DescribeAgentVersionsRequest <<< customize) { "ConfigurationManager": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeAgentVersions</code> request.</p>
newtype DescribeAgentVersionsResult = DescribeAgentVersionsResult 
  { "AgentVersions" :: NullOrUndefined.NullOrUndefined (AgentVersions)
  }
derive instance newtypeDescribeAgentVersionsResult :: Newtype DescribeAgentVersionsResult _
derive instance repGenericDescribeAgentVersionsResult :: Generic DescribeAgentVersionsResult _
instance showDescribeAgentVersionsResult :: Show DescribeAgentVersionsResult where
  show = genericShow
instance decodeDescribeAgentVersionsResult :: Decode DescribeAgentVersionsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeAgentVersionsResult :: Encode DescribeAgentVersionsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeAgentVersionsResult from required parameters
newDescribeAgentVersionsResult :: DescribeAgentVersionsResult
newDescribeAgentVersionsResult  = DescribeAgentVersionsResult { "AgentVersions": (NullOrUndefined Nothing) }

-- | Constructs DescribeAgentVersionsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAgentVersionsResult' :: ( { "AgentVersions" :: NullOrUndefined.NullOrUndefined (AgentVersions) } -> {"AgentVersions" :: NullOrUndefined.NullOrUndefined (AgentVersions) } ) -> DescribeAgentVersionsResult
newDescribeAgentVersionsResult'  customize = (DescribeAgentVersionsResult <<< customize) { "AgentVersions": (NullOrUndefined Nothing) }



newtype DescribeAppsRequest = DescribeAppsRequest 
  { "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "AppIds" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeAppsRequest :: Newtype DescribeAppsRequest _
derive instance repGenericDescribeAppsRequest :: Generic DescribeAppsRequest _
instance showDescribeAppsRequest :: Show DescribeAppsRequest where
  show = genericShow
instance decodeDescribeAppsRequest :: Decode DescribeAppsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeAppsRequest :: Encode DescribeAppsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeAppsRequest from required parameters
newDescribeAppsRequest :: DescribeAppsRequest
newDescribeAppsRequest  = DescribeAppsRequest { "AppIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs DescribeAppsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAppsRequest' :: ( { "StackId" :: NullOrUndefined.NullOrUndefined (String) , "AppIds" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"StackId" :: NullOrUndefined.NullOrUndefined (String) , "AppIds" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeAppsRequest
newDescribeAppsRequest'  customize = (DescribeAppsRequest <<< customize) { "AppIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeApps</code> request.</p>
newtype DescribeAppsResult = DescribeAppsResult 
  { "Apps" :: NullOrUndefined.NullOrUndefined (Apps)
  }
derive instance newtypeDescribeAppsResult :: Newtype DescribeAppsResult _
derive instance repGenericDescribeAppsResult :: Generic DescribeAppsResult _
instance showDescribeAppsResult :: Show DescribeAppsResult where
  show = genericShow
instance decodeDescribeAppsResult :: Decode DescribeAppsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeAppsResult :: Encode DescribeAppsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeAppsResult from required parameters
newDescribeAppsResult :: DescribeAppsResult
newDescribeAppsResult  = DescribeAppsResult { "Apps": (NullOrUndefined Nothing) }

-- | Constructs DescribeAppsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAppsResult' :: ( { "Apps" :: NullOrUndefined.NullOrUndefined (Apps) } -> {"Apps" :: NullOrUndefined.NullOrUndefined (Apps) } ) -> DescribeAppsResult
newDescribeAppsResult'  customize = (DescribeAppsResult <<< customize) { "Apps": (NullOrUndefined Nothing) }



newtype DescribeCommandsRequest = DescribeCommandsRequest 
  { "DeploymentId" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  , "CommandIds" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeCommandsRequest :: Newtype DescribeCommandsRequest _
derive instance repGenericDescribeCommandsRequest :: Generic DescribeCommandsRequest _
instance showDescribeCommandsRequest :: Show DescribeCommandsRequest where
  show = genericShow
instance decodeDescribeCommandsRequest :: Decode DescribeCommandsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeCommandsRequest :: Encode DescribeCommandsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeCommandsRequest from required parameters
newDescribeCommandsRequest :: DescribeCommandsRequest
newDescribeCommandsRequest  = DescribeCommandsRequest { "CommandIds": (NullOrUndefined Nothing), "DeploymentId": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing) }

-- | Constructs DescribeCommandsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCommandsRequest' :: ( { "DeploymentId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "CommandIds" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"DeploymentId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "CommandIds" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeCommandsRequest
newDescribeCommandsRequest'  customize = (DescribeCommandsRequest <<< customize) { "CommandIds": (NullOrUndefined Nothing), "DeploymentId": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeCommands</code> request.</p>
newtype DescribeCommandsResult = DescribeCommandsResult 
  { "Commands" :: NullOrUndefined.NullOrUndefined (Commands)
  }
derive instance newtypeDescribeCommandsResult :: Newtype DescribeCommandsResult _
derive instance repGenericDescribeCommandsResult :: Generic DescribeCommandsResult _
instance showDescribeCommandsResult :: Show DescribeCommandsResult where
  show = genericShow
instance decodeDescribeCommandsResult :: Decode DescribeCommandsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeCommandsResult :: Encode DescribeCommandsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeCommandsResult from required parameters
newDescribeCommandsResult :: DescribeCommandsResult
newDescribeCommandsResult  = DescribeCommandsResult { "Commands": (NullOrUndefined Nothing) }

-- | Constructs DescribeCommandsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCommandsResult' :: ( { "Commands" :: NullOrUndefined.NullOrUndefined (Commands) } -> {"Commands" :: NullOrUndefined.NullOrUndefined (Commands) } ) -> DescribeCommandsResult
newDescribeCommandsResult'  customize = (DescribeCommandsResult <<< customize) { "Commands": (NullOrUndefined Nothing) }



newtype DescribeDeploymentsRequest = DescribeDeploymentsRequest 
  { "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "AppId" :: NullOrUndefined.NullOrUndefined (String)
  , "DeploymentIds" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeDeploymentsRequest :: Newtype DescribeDeploymentsRequest _
derive instance repGenericDescribeDeploymentsRequest :: Generic DescribeDeploymentsRequest _
instance showDescribeDeploymentsRequest :: Show DescribeDeploymentsRequest where
  show = genericShow
instance decodeDescribeDeploymentsRequest :: Decode DescribeDeploymentsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeDeploymentsRequest :: Encode DescribeDeploymentsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeDeploymentsRequest from required parameters
newDescribeDeploymentsRequest :: DescribeDeploymentsRequest
newDescribeDeploymentsRequest  = DescribeDeploymentsRequest { "AppId": (NullOrUndefined Nothing), "DeploymentIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs DescribeDeploymentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDeploymentsRequest' :: ( { "StackId" :: NullOrUndefined.NullOrUndefined (String) , "AppId" :: NullOrUndefined.NullOrUndefined (String) , "DeploymentIds" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"StackId" :: NullOrUndefined.NullOrUndefined (String) , "AppId" :: NullOrUndefined.NullOrUndefined (String) , "DeploymentIds" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeDeploymentsRequest
newDescribeDeploymentsRequest'  customize = (DescribeDeploymentsRequest <<< customize) { "AppId": (NullOrUndefined Nothing), "DeploymentIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeDeployments</code> request.</p>
newtype DescribeDeploymentsResult = DescribeDeploymentsResult 
  { "Deployments" :: NullOrUndefined.NullOrUndefined (Deployments)
  }
derive instance newtypeDescribeDeploymentsResult :: Newtype DescribeDeploymentsResult _
derive instance repGenericDescribeDeploymentsResult :: Generic DescribeDeploymentsResult _
instance showDescribeDeploymentsResult :: Show DescribeDeploymentsResult where
  show = genericShow
instance decodeDescribeDeploymentsResult :: Decode DescribeDeploymentsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeDeploymentsResult :: Encode DescribeDeploymentsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeDeploymentsResult from required parameters
newDescribeDeploymentsResult :: DescribeDeploymentsResult
newDescribeDeploymentsResult  = DescribeDeploymentsResult { "Deployments": (NullOrUndefined Nothing) }

-- | Constructs DescribeDeploymentsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDeploymentsResult' :: ( { "Deployments" :: NullOrUndefined.NullOrUndefined (Deployments) } -> {"Deployments" :: NullOrUndefined.NullOrUndefined (Deployments) } ) -> DescribeDeploymentsResult
newDescribeDeploymentsResult'  customize = (DescribeDeploymentsResult <<< customize) { "Deployments": (NullOrUndefined Nothing) }



newtype DescribeEcsClustersRequest = DescribeEcsClustersRequest 
  { "EcsClusterArns" :: NullOrUndefined.NullOrUndefined (Strings)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeDescribeEcsClustersRequest :: Newtype DescribeEcsClustersRequest _
derive instance repGenericDescribeEcsClustersRequest :: Generic DescribeEcsClustersRequest _
instance showDescribeEcsClustersRequest :: Show DescribeEcsClustersRequest where
  show = genericShow
instance decodeDescribeEcsClustersRequest :: Decode DescribeEcsClustersRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeEcsClustersRequest :: Encode DescribeEcsClustersRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeEcsClustersRequest from required parameters
newDescribeEcsClustersRequest :: DescribeEcsClustersRequest
newDescribeEcsClustersRequest  = DescribeEcsClustersRequest { "EcsClusterArns": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs DescribeEcsClustersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEcsClustersRequest' :: ( { "EcsClusterArns" :: NullOrUndefined.NullOrUndefined (Strings) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) , "MaxResults" :: NullOrUndefined.NullOrUndefined (Int) } -> {"EcsClusterArns" :: NullOrUndefined.NullOrUndefined (Strings) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) , "MaxResults" :: NullOrUndefined.NullOrUndefined (Int) } ) -> DescribeEcsClustersRequest
newDescribeEcsClustersRequest'  customize = (DescribeEcsClustersRequest <<< customize) { "EcsClusterArns": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeEcsClusters</code> request.</p>
newtype DescribeEcsClustersResult = DescribeEcsClustersResult 
  { "EcsClusters" :: NullOrUndefined.NullOrUndefined (EcsClusters)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribeEcsClustersResult :: Newtype DescribeEcsClustersResult _
derive instance repGenericDescribeEcsClustersResult :: Generic DescribeEcsClustersResult _
instance showDescribeEcsClustersResult :: Show DescribeEcsClustersResult where
  show = genericShow
instance decodeDescribeEcsClustersResult :: Decode DescribeEcsClustersResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeEcsClustersResult :: Encode DescribeEcsClustersResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeEcsClustersResult from required parameters
newDescribeEcsClustersResult :: DescribeEcsClustersResult
newDescribeEcsClustersResult  = DescribeEcsClustersResult { "EcsClusters": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeEcsClustersResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEcsClustersResult' :: ( { "EcsClusters" :: NullOrUndefined.NullOrUndefined (EcsClusters) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"EcsClusters" :: NullOrUndefined.NullOrUndefined (EcsClusters) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribeEcsClustersResult
newDescribeEcsClustersResult'  customize = (DescribeEcsClustersResult <<< customize) { "EcsClusters": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype DescribeElasticIpsRequest = DescribeElasticIpsRequest 
  { "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "Ips" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeElasticIpsRequest :: Newtype DescribeElasticIpsRequest _
derive instance repGenericDescribeElasticIpsRequest :: Generic DescribeElasticIpsRequest _
instance showDescribeElasticIpsRequest :: Show DescribeElasticIpsRequest where
  show = genericShow
instance decodeDescribeElasticIpsRequest :: Decode DescribeElasticIpsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeElasticIpsRequest :: Encode DescribeElasticIpsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeElasticIpsRequest from required parameters
newDescribeElasticIpsRequest :: DescribeElasticIpsRequest
newDescribeElasticIpsRequest  = DescribeElasticIpsRequest { "InstanceId": (NullOrUndefined Nothing), "Ips": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs DescribeElasticIpsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticIpsRequest' :: ( { "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "Ips" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "Ips" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeElasticIpsRequest
newDescribeElasticIpsRequest'  customize = (DescribeElasticIpsRequest <<< customize) { "InstanceId": (NullOrUndefined Nothing), "Ips": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeElasticIps</code> request.</p>
newtype DescribeElasticIpsResult = DescribeElasticIpsResult 
  { "ElasticIps" :: NullOrUndefined.NullOrUndefined (ElasticIps)
  }
derive instance newtypeDescribeElasticIpsResult :: Newtype DescribeElasticIpsResult _
derive instance repGenericDescribeElasticIpsResult :: Generic DescribeElasticIpsResult _
instance showDescribeElasticIpsResult :: Show DescribeElasticIpsResult where
  show = genericShow
instance decodeDescribeElasticIpsResult :: Decode DescribeElasticIpsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeElasticIpsResult :: Encode DescribeElasticIpsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeElasticIpsResult from required parameters
newDescribeElasticIpsResult :: DescribeElasticIpsResult
newDescribeElasticIpsResult  = DescribeElasticIpsResult { "ElasticIps": (NullOrUndefined Nothing) }

-- | Constructs DescribeElasticIpsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticIpsResult' :: ( { "ElasticIps" :: NullOrUndefined.NullOrUndefined (ElasticIps) } -> {"ElasticIps" :: NullOrUndefined.NullOrUndefined (ElasticIps) } ) -> DescribeElasticIpsResult
newDescribeElasticIpsResult'  customize = (DescribeElasticIpsResult <<< customize) { "ElasticIps": (NullOrUndefined Nothing) }



newtype DescribeElasticLoadBalancersRequest = DescribeElasticLoadBalancersRequest 
  { "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeElasticLoadBalancersRequest :: Newtype DescribeElasticLoadBalancersRequest _
derive instance repGenericDescribeElasticLoadBalancersRequest :: Generic DescribeElasticLoadBalancersRequest _
instance showDescribeElasticLoadBalancersRequest :: Show DescribeElasticLoadBalancersRequest where
  show = genericShow
instance decodeDescribeElasticLoadBalancersRequest :: Decode DescribeElasticLoadBalancersRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeElasticLoadBalancersRequest :: Encode DescribeElasticLoadBalancersRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeElasticLoadBalancersRequest from required parameters
newDescribeElasticLoadBalancersRequest :: DescribeElasticLoadBalancersRequest
newDescribeElasticLoadBalancersRequest  = DescribeElasticLoadBalancersRequest { "LayerIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs DescribeElasticLoadBalancersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticLoadBalancersRequest' :: ( { "StackId" :: NullOrUndefined.NullOrUndefined (String) , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"StackId" :: NullOrUndefined.NullOrUndefined (String) , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeElasticLoadBalancersRequest
newDescribeElasticLoadBalancersRequest'  customize = (DescribeElasticLoadBalancersRequest <<< customize) { "LayerIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeElasticLoadBalancers</code> request.</p>
newtype DescribeElasticLoadBalancersResult = DescribeElasticLoadBalancersResult 
  { "ElasticLoadBalancers" :: NullOrUndefined.NullOrUndefined (ElasticLoadBalancers)
  }
derive instance newtypeDescribeElasticLoadBalancersResult :: Newtype DescribeElasticLoadBalancersResult _
derive instance repGenericDescribeElasticLoadBalancersResult :: Generic DescribeElasticLoadBalancersResult _
instance showDescribeElasticLoadBalancersResult :: Show DescribeElasticLoadBalancersResult where
  show = genericShow
instance decodeDescribeElasticLoadBalancersResult :: Decode DescribeElasticLoadBalancersResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeElasticLoadBalancersResult :: Encode DescribeElasticLoadBalancersResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeElasticLoadBalancersResult from required parameters
newDescribeElasticLoadBalancersResult :: DescribeElasticLoadBalancersResult
newDescribeElasticLoadBalancersResult  = DescribeElasticLoadBalancersResult { "ElasticLoadBalancers": (NullOrUndefined Nothing) }

-- | Constructs DescribeElasticLoadBalancersResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticLoadBalancersResult' :: ( { "ElasticLoadBalancers" :: NullOrUndefined.NullOrUndefined (ElasticLoadBalancers) } -> {"ElasticLoadBalancers" :: NullOrUndefined.NullOrUndefined (ElasticLoadBalancers) } ) -> DescribeElasticLoadBalancersResult
newDescribeElasticLoadBalancersResult'  customize = (DescribeElasticLoadBalancersResult <<< customize) { "ElasticLoadBalancers": (NullOrUndefined Nothing) }



newtype DescribeInstancesRequest = DescribeInstancesRequest 
  { "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "LayerId" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceIds" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeInstancesRequest :: Newtype DescribeInstancesRequest _
derive instance repGenericDescribeInstancesRequest :: Generic DescribeInstancesRequest _
instance showDescribeInstancesRequest :: Show DescribeInstancesRequest where
  show = genericShow
instance decodeDescribeInstancesRequest :: Decode DescribeInstancesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeInstancesRequest :: Encode DescribeInstancesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeInstancesRequest from required parameters
newDescribeInstancesRequest :: DescribeInstancesRequest
newDescribeInstancesRequest  = DescribeInstancesRequest { "InstanceIds": (NullOrUndefined Nothing), "LayerId": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs DescribeInstancesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeInstancesRequest' :: ( { "StackId" :: NullOrUndefined.NullOrUndefined (String) , "LayerId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceIds" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"StackId" :: NullOrUndefined.NullOrUndefined (String) , "LayerId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceIds" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeInstancesRequest
newDescribeInstancesRequest'  customize = (DescribeInstancesRequest <<< customize) { "InstanceIds": (NullOrUndefined Nothing), "LayerId": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeInstances</code> request.</p>
newtype DescribeInstancesResult = DescribeInstancesResult 
  { "Instances" :: NullOrUndefined.NullOrUndefined (Instances)
  }
derive instance newtypeDescribeInstancesResult :: Newtype DescribeInstancesResult _
derive instance repGenericDescribeInstancesResult :: Generic DescribeInstancesResult _
instance showDescribeInstancesResult :: Show DescribeInstancesResult where
  show = genericShow
instance decodeDescribeInstancesResult :: Decode DescribeInstancesResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeInstancesResult :: Encode DescribeInstancesResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeInstancesResult from required parameters
newDescribeInstancesResult :: DescribeInstancesResult
newDescribeInstancesResult  = DescribeInstancesResult { "Instances": (NullOrUndefined Nothing) }

-- | Constructs DescribeInstancesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeInstancesResult' :: ( { "Instances" :: NullOrUndefined.NullOrUndefined (Instances) } -> {"Instances" :: NullOrUndefined.NullOrUndefined (Instances) } ) -> DescribeInstancesResult
newDescribeInstancesResult'  customize = (DescribeInstancesResult <<< customize) { "Instances": (NullOrUndefined Nothing) }



newtype DescribeLayersRequest = DescribeLayersRequest 
  { "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeLayersRequest :: Newtype DescribeLayersRequest _
derive instance repGenericDescribeLayersRequest :: Generic DescribeLayersRequest _
instance showDescribeLayersRequest :: Show DescribeLayersRequest where
  show = genericShow
instance decodeDescribeLayersRequest :: Decode DescribeLayersRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeLayersRequest :: Encode DescribeLayersRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeLayersRequest from required parameters
newDescribeLayersRequest :: DescribeLayersRequest
newDescribeLayersRequest  = DescribeLayersRequest { "LayerIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs DescribeLayersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLayersRequest' :: ( { "StackId" :: NullOrUndefined.NullOrUndefined (String) , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"StackId" :: NullOrUndefined.NullOrUndefined (String) , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeLayersRequest
newDescribeLayersRequest'  customize = (DescribeLayersRequest <<< customize) { "LayerIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeLayers</code> request.</p>
newtype DescribeLayersResult = DescribeLayersResult 
  { "Layers" :: NullOrUndefined.NullOrUndefined (Layers)
  }
derive instance newtypeDescribeLayersResult :: Newtype DescribeLayersResult _
derive instance repGenericDescribeLayersResult :: Generic DescribeLayersResult _
instance showDescribeLayersResult :: Show DescribeLayersResult where
  show = genericShow
instance decodeDescribeLayersResult :: Decode DescribeLayersResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeLayersResult :: Encode DescribeLayersResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeLayersResult from required parameters
newDescribeLayersResult :: DescribeLayersResult
newDescribeLayersResult  = DescribeLayersResult { "Layers": (NullOrUndefined Nothing) }

-- | Constructs DescribeLayersResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLayersResult' :: ( { "Layers" :: NullOrUndefined.NullOrUndefined (Layers) } -> {"Layers" :: NullOrUndefined.NullOrUndefined (Layers) } ) -> DescribeLayersResult
newDescribeLayersResult'  customize = (DescribeLayersResult <<< customize) { "Layers": (NullOrUndefined Nothing) }



newtype DescribeLoadBasedAutoScalingRequest = DescribeLoadBasedAutoScalingRequest 
  { "LayerIds" :: (Strings)
  }
derive instance newtypeDescribeLoadBasedAutoScalingRequest :: Newtype DescribeLoadBasedAutoScalingRequest _
derive instance repGenericDescribeLoadBasedAutoScalingRequest :: Generic DescribeLoadBasedAutoScalingRequest _
instance showDescribeLoadBasedAutoScalingRequest :: Show DescribeLoadBasedAutoScalingRequest where
  show = genericShow
instance decodeDescribeLoadBasedAutoScalingRequest :: Decode DescribeLoadBasedAutoScalingRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeLoadBasedAutoScalingRequest :: Encode DescribeLoadBasedAutoScalingRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeLoadBasedAutoScalingRequest from required parameters
newDescribeLoadBasedAutoScalingRequest :: Strings -> DescribeLoadBasedAutoScalingRequest
newDescribeLoadBasedAutoScalingRequest _LayerIds = DescribeLoadBasedAutoScalingRequest { "LayerIds": _LayerIds }

-- | Constructs DescribeLoadBasedAutoScalingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLoadBasedAutoScalingRequest' :: Strings -> ( { "LayerIds" :: (Strings) } -> {"LayerIds" :: (Strings) } ) -> DescribeLoadBasedAutoScalingRequest
newDescribeLoadBasedAutoScalingRequest' _LayerIds customize = (DescribeLoadBasedAutoScalingRequest <<< customize) { "LayerIds": _LayerIds }



-- | <p>Contains the response to a <code>DescribeLoadBasedAutoScaling</code> request.</p>
newtype DescribeLoadBasedAutoScalingResult = DescribeLoadBasedAutoScalingResult 
  { "LoadBasedAutoScalingConfigurations" :: NullOrUndefined.NullOrUndefined (LoadBasedAutoScalingConfigurations)
  }
derive instance newtypeDescribeLoadBasedAutoScalingResult :: Newtype DescribeLoadBasedAutoScalingResult _
derive instance repGenericDescribeLoadBasedAutoScalingResult :: Generic DescribeLoadBasedAutoScalingResult _
instance showDescribeLoadBasedAutoScalingResult :: Show DescribeLoadBasedAutoScalingResult where
  show = genericShow
instance decodeDescribeLoadBasedAutoScalingResult :: Decode DescribeLoadBasedAutoScalingResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeLoadBasedAutoScalingResult :: Encode DescribeLoadBasedAutoScalingResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeLoadBasedAutoScalingResult from required parameters
newDescribeLoadBasedAutoScalingResult :: DescribeLoadBasedAutoScalingResult
newDescribeLoadBasedAutoScalingResult  = DescribeLoadBasedAutoScalingResult { "LoadBasedAutoScalingConfigurations": (NullOrUndefined Nothing) }

-- | Constructs DescribeLoadBasedAutoScalingResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLoadBasedAutoScalingResult' :: ( { "LoadBasedAutoScalingConfigurations" :: NullOrUndefined.NullOrUndefined (LoadBasedAutoScalingConfigurations) } -> {"LoadBasedAutoScalingConfigurations" :: NullOrUndefined.NullOrUndefined (LoadBasedAutoScalingConfigurations) } ) -> DescribeLoadBasedAutoScalingResult
newDescribeLoadBasedAutoScalingResult'  customize = (DescribeLoadBasedAutoScalingResult <<< customize) { "LoadBasedAutoScalingConfigurations": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeMyUserProfile</code> request.</p>
newtype DescribeMyUserProfileResult = DescribeMyUserProfileResult 
  { "UserProfile" :: NullOrUndefined.NullOrUndefined (SelfUserProfile)
  }
derive instance newtypeDescribeMyUserProfileResult :: Newtype DescribeMyUserProfileResult _
derive instance repGenericDescribeMyUserProfileResult :: Generic DescribeMyUserProfileResult _
instance showDescribeMyUserProfileResult :: Show DescribeMyUserProfileResult where
  show = genericShow
instance decodeDescribeMyUserProfileResult :: Decode DescribeMyUserProfileResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeMyUserProfileResult :: Encode DescribeMyUserProfileResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeMyUserProfileResult from required parameters
newDescribeMyUserProfileResult :: DescribeMyUserProfileResult
newDescribeMyUserProfileResult  = DescribeMyUserProfileResult { "UserProfile": (NullOrUndefined Nothing) }

-- | Constructs DescribeMyUserProfileResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMyUserProfileResult' :: ( { "UserProfile" :: NullOrUndefined.NullOrUndefined (SelfUserProfile) } -> {"UserProfile" :: NullOrUndefined.NullOrUndefined (SelfUserProfile) } ) -> DescribeMyUserProfileResult
newDescribeMyUserProfileResult'  customize = (DescribeMyUserProfileResult <<< customize) { "UserProfile": (NullOrUndefined Nothing) }



-- | <p>The response to a <code>DescribeOperatingSystems</code> request.</p>
newtype DescribeOperatingSystemsResponse = DescribeOperatingSystemsResponse 
  { "OperatingSystems" :: NullOrUndefined.NullOrUndefined (OperatingSystems)
  }
derive instance newtypeDescribeOperatingSystemsResponse :: Newtype DescribeOperatingSystemsResponse _
derive instance repGenericDescribeOperatingSystemsResponse :: Generic DescribeOperatingSystemsResponse _
instance showDescribeOperatingSystemsResponse :: Show DescribeOperatingSystemsResponse where
  show = genericShow
instance decodeDescribeOperatingSystemsResponse :: Decode DescribeOperatingSystemsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeOperatingSystemsResponse :: Encode DescribeOperatingSystemsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeOperatingSystemsResponse from required parameters
newDescribeOperatingSystemsResponse :: DescribeOperatingSystemsResponse
newDescribeOperatingSystemsResponse  = DescribeOperatingSystemsResponse { "OperatingSystems": (NullOrUndefined Nothing) }

-- | Constructs DescribeOperatingSystemsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeOperatingSystemsResponse' :: ( { "OperatingSystems" :: NullOrUndefined.NullOrUndefined (OperatingSystems) } -> {"OperatingSystems" :: NullOrUndefined.NullOrUndefined (OperatingSystems) } ) -> DescribeOperatingSystemsResponse
newDescribeOperatingSystemsResponse'  customize = (DescribeOperatingSystemsResponse <<< customize) { "OperatingSystems": (NullOrUndefined Nothing) }



newtype DescribePermissionsRequest = DescribePermissionsRequest 
  { "IamUserArn" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribePermissionsRequest :: Newtype DescribePermissionsRequest _
derive instance repGenericDescribePermissionsRequest :: Generic DescribePermissionsRequest _
instance showDescribePermissionsRequest :: Show DescribePermissionsRequest where
  show = genericShow
instance decodeDescribePermissionsRequest :: Decode DescribePermissionsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribePermissionsRequest :: Encode DescribePermissionsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribePermissionsRequest from required parameters
newDescribePermissionsRequest :: DescribePermissionsRequest
newDescribePermissionsRequest  = DescribePermissionsRequest { "IamUserArn": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs DescribePermissionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribePermissionsRequest' :: ( { "IamUserArn" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) } -> {"IamUserArn" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribePermissionsRequest
newDescribePermissionsRequest'  customize = (DescribePermissionsRequest <<< customize) { "IamUserArn": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribePermissions</code> request.</p>
newtype DescribePermissionsResult = DescribePermissionsResult 
  { "Permissions" :: NullOrUndefined.NullOrUndefined (Permissions)
  }
derive instance newtypeDescribePermissionsResult :: Newtype DescribePermissionsResult _
derive instance repGenericDescribePermissionsResult :: Generic DescribePermissionsResult _
instance showDescribePermissionsResult :: Show DescribePermissionsResult where
  show = genericShow
instance decodeDescribePermissionsResult :: Decode DescribePermissionsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribePermissionsResult :: Encode DescribePermissionsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribePermissionsResult from required parameters
newDescribePermissionsResult :: DescribePermissionsResult
newDescribePermissionsResult  = DescribePermissionsResult { "Permissions": (NullOrUndefined Nothing) }

-- | Constructs DescribePermissionsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribePermissionsResult' :: ( { "Permissions" :: NullOrUndefined.NullOrUndefined (Permissions) } -> {"Permissions" :: NullOrUndefined.NullOrUndefined (Permissions) } ) -> DescribePermissionsResult
newDescribePermissionsResult'  customize = (DescribePermissionsResult <<< customize) { "Permissions": (NullOrUndefined Nothing) }



newtype DescribeRaidArraysRequest = DescribeRaidArraysRequest 
  { "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "RaidArrayIds" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeRaidArraysRequest :: Newtype DescribeRaidArraysRequest _
derive instance repGenericDescribeRaidArraysRequest :: Generic DescribeRaidArraysRequest _
instance showDescribeRaidArraysRequest :: Show DescribeRaidArraysRequest where
  show = genericShow
instance decodeDescribeRaidArraysRequest :: Decode DescribeRaidArraysRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeRaidArraysRequest :: Encode DescribeRaidArraysRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeRaidArraysRequest from required parameters
newDescribeRaidArraysRequest :: DescribeRaidArraysRequest
newDescribeRaidArraysRequest  = DescribeRaidArraysRequest { "InstanceId": (NullOrUndefined Nothing), "RaidArrayIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs DescribeRaidArraysRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRaidArraysRequest' :: ( { "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "RaidArrayIds" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "RaidArrayIds" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeRaidArraysRequest
newDescribeRaidArraysRequest'  customize = (DescribeRaidArraysRequest <<< customize) { "InstanceId": (NullOrUndefined Nothing), "RaidArrayIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeRaidArrays</code> request.</p>
newtype DescribeRaidArraysResult = DescribeRaidArraysResult 
  { "RaidArrays" :: NullOrUndefined.NullOrUndefined (RaidArrays)
  }
derive instance newtypeDescribeRaidArraysResult :: Newtype DescribeRaidArraysResult _
derive instance repGenericDescribeRaidArraysResult :: Generic DescribeRaidArraysResult _
instance showDescribeRaidArraysResult :: Show DescribeRaidArraysResult where
  show = genericShow
instance decodeDescribeRaidArraysResult :: Decode DescribeRaidArraysResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeRaidArraysResult :: Encode DescribeRaidArraysResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeRaidArraysResult from required parameters
newDescribeRaidArraysResult :: DescribeRaidArraysResult
newDescribeRaidArraysResult  = DescribeRaidArraysResult { "RaidArrays": (NullOrUndefined Nothing) }

-- | Constructs DescribeRaidArraysResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRaidArraysResult' :: ( { "RaidArrays" :: NullOrUndefined.NullOrUndefined (RaidArrays) } -> {"RaidArrays" :: NullOrUndefined.NullOrUndefined (RaidArrays) } ) -> DescribeRaidArraysResult
newDescribeRaidArraysResult'  customize = (DescribeRaidArraysResult <<< customize) { "RaidArrays": (NullOrUndefined Nothing) }



newtype DescribeRdsDbInstancesRequest = DescribeRdsDbInstancesRequest 
  { "StackId" :: (String)
  , "RdsDbInstanceArns" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeRdsDbInstancesRequest :: Newtype DescribeRdsDbInstancesRequest _
derive instance repGenericDescribeRdsDbInstancesRequest :: Generic DescribeRdsDbInstancesRequest _
instance showDescribeRdsDbInstancesRequest :: Show DescribeRdsDbInstancesRequest where
  show = genericShow
instance decodeDescribeRdsDbInstancesRequest :: Decode DescribeRdsDbInstancesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeRdsDbInstancesRequest :: Encode DescribeRdsDbInstancesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeRdsDbInstancesRequest from required parameters
newDescribeRdsDbInstancesRequest :: String -> DescribeRdsDbInstancesRequest
newDescribeRdsDbInstancesRequest _StackId = DescribeRdsDbInstancesRequest { "StackId": _StackId, "RdsDbInstanceArns": (NullOrUndefined Nothing) }

-- | Constructs DescribeRdsDbInstancesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRdsDbInstancesRequest' :: String -> ( { "StackId" :: (String) , "RdsDbInstanceArns" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"StackId" :: (String) , "RdsDbInstanceArns" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeRdsDbInstancesRequest
newDescribeRdsDbInstancesRequest' _StackId customize = (DescribeRdsDbInstancesRequest <<< customize) { "StackId": _StackId, "RdsDbInstanceArns": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeRdsDbInstances</code> request.</p>
newtype DescribeRdsDbInstancesResult = DescribeRdsDbInstancesResult 
  { "RdsDbInstances" :: NullOrUndefined.NullOrUndefined (RdsDbInstances)
  }
derive instance newtypeDescribeRdsDbInstancesResult :: Newtype DescribeRdsDbInstancesResult _
derive instance repGenericDescribeRdsDbInstancesResult :: Generic DescribeRdsDbInstancesResult _
instance showDescribeRdsDbInstancesResult :: Show DescribeRdsDbInstancesResult where
  show = genericShow
instance decodeDescribeRdsDbInstancesResult :: Decode DescribeRdsDbInstancesResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeRdsDbInstancesResult :: Encode DescribeRdsDbInstancesResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeRdsDbInstancesResult from required parameters
newDescribeRdsDbInstancesResult :: DescribeRdsDbInstancesResult
newDescribeRdsDbInstancesResult  = DescribeRdsDbInstancesResult { "RdsDbInstances": (NullOrUndefined Nothing) }

-- | Constructs DescribeRdsDbInstancesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRdsDbInstancesResult' :: ( { "RdsDbInstances" :: NullOrUndefined.NullOrUndefined (RdsDbInstances) } -> {"RdsDbInstances" :: NullOrUndefined.NullOrUndefined (RdsDbInstances) } ) -> DescribeRdsDbInstancesResult
newDescribeRdsDbInstancesResult'  customize = (DescribeRdsDbInstancesResult <<< customize) { "RdsDbInstances": (NullOrUndefined Nothing) }



newtype DescribeServiceErrorsRequest = DescribeServiceErrorsRequest 
  { "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  , "ServiceErrorIds" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeServiceErrorsRequest :: Newtype DescribeServiceErrorsRequest _
derive instance repGenericDescribeServiceErrorsRequest :: Generic DescribeServiceErrorsRequest _
instance showDescribeServiceErrorsRequest :: Show DescribeServiceErrorsRequest where
  show = genericShow
instance decodeDescribeServiceErrorsRequest :: Decode DescribeServiceErrorsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeServiceErrorsRequest :: Encode DescribeServiceErrorsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeServiceErrorsRequest from required parameters
newDescribeServiceErrorsRequest :: DescribeServiceErrorsRequest
newDescribeServiceErrorsRequest  = DescribeServiceErrorsRequest { "InstanceId": (NullOrUndefined Nothing), "ServiceErrorIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs DescribeServiceErrorsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServiceErrorsRequest' :: ( { "StackId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "ServiceErrorIds" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"StackId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "ServiceErrorIds" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeServiceErrorsRequest
newDescribeServiceErrorsRequest'  customize = (DescribeServiceErrorsRequest <<< customize) { "InstanceId": (NullOrUndefined Nothing), "ServiceErrorIds": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeServiceErrors</code> request.</p>
newtype DescribeServiceErrorsResult = DescribeServiceErrorsResult 
  { "ServiceErrors" :: NullOrUndefined.NullOrUndefined (ServiceErrors)
  }
derive instance newtypeDescribeServiceErrorsResult :: Newtype DescribeServiceErrorsResult _
derive instance repGenericDescribeServiceErrorsResult :: Generic DescribeServiceErrorsResult _
instance showDescribeServiceErrorsResult :: Show DescribeServiceErrorsResult where
  show = genericShow
instance decodeDescribeServiceErrorsResult :: Decode DescribeServiceErrorsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeServiceErrorsResult :: Encode DescribeServiceErrorsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeServiceErrorsResult from required parameters
newDescribeServiceErrorsResult :: DescribeServiceErrorsResult
newDescribeServiceErrorsResult  = DescribeServiceErrorsResult { "ServiceErrors": (NullOrUndefined Nothing) }

-- | Constructs DescribeServiceErrorsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServiceErrorsResult' :: ( { "ServiceErrors" :: NullOrUndefined.NullOrUndefined (ServiceErrors) } -> {"ServiceErrors" :: NullOrUndefined.NullOrUndefined (ServiceErrors) } ) -> DescribeServiceErrorsResult
newDescribeServiceErrorsResult'  customize = (DescribeServiceErrorsResult <<< customize) { "ServiceErrors": (NullOrUndefined Nothing) }



newtype DescribeStackProvisioningParametersRequest = DescribeStackProvisioningParametersRequest 
  { "StackId" :: (String)
  }
derive instance newtypeDescribeStackProvisioningParametersRequest :: Newtype DescribeStackProvisioningParametersRequest _
derive instance repGenericDescribeStackProvisioningParametersRequest :: Generic DescribeStackProvisioningParametersRequest _
instance showDescribeStackProvisioningParametersRequest :: Show DescribeStackProvisioningParametersRequest where
  show = genericShow
instance decodeDescribeStackProvisioningParametersRequest :: Decode DescribeStackProvisioningParametersRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeStackProvisioningParametersRequest :: Encode DescribeStackProvisioningParametersRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeStackProvisioningParametersRequest from required parameters
newDescribeStackProvisioningParametersRequest :: String -> DescribeStackProvisioningParametersRequest
newDescribeStackProvisioningParametersRequest _StackId = DescribeStackProvisioningParametersRequest { "StackId": _StackId }

-- | Constructs DescribeStackProvisioningParametersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStackProvisioningParametersRequest' :: String -> ( { "StackId" :: (String) } -> {"StackId" :: (String) } ) -> DescribeStackProvisioningParametersRequest
newDescribeStackProvisioningParametersRequest' _StackId customize = (DescribeStackProvisioningParametersRequest <<< customize) { "StackId": _StackId }



-- | <p>Contains the response to a <code>DescribeStackProvisioningParameters</code> request.</p>
newtype DescribeStackProvisioningParametersResult = DescribeStackProvisioningParametersResult 
  { "AgentInstallerUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Parameters" :: NullOrUndefined.NullOrUndefined (Parameters)
  }
derive instance newtypeDescribeStackProvisioningParametersResult :: Newtype DescribeStackProvisioningParametersResult _
derive instance repGenericDescribeStackProvisioningParametersResult :: Generic DescribeStackProvisioningParametersResult _
instance showDescribeStackProvisioningParametersResult :: Show DescribeStackProvisioningParametersResult where
  show = genericShow
instance decodeDescribeStackProvisioningParametersResult :: Decode DescribeStackProvisioningParametersResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeStackProvisioningParametersResult :: Encode DescribeStackProvisioningParametersResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeStackProvisioningParametersResult from required parameters
newDescribeStackProvisioningParametersResult :: DescribeStackProvisioningParametersResult
newDescribeStackProvisioningParametersResult  = DescribeStackProvisioningParametersResult { "AgentInstallerUrl": (NullOrUndefined Nothing), "Parameters": (NullOrUndefined Nothing) }

-- | Constructs DescribeStackProvisioningParametersResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStackProvisioningParametersResult' :: ( { "AgentInstallerUrl" :: NullOrUndefined.NullOrUndefined (String) , "Parameters" :: NullOrUndefined.NullOrUndefined (Parameters) } -> {"AgentInstallerUrl" :: NullOrUndefined.NullOrUndefined (String) , "Parameters" :: NullOrUndefined.NullOrUndefined (Parameters) } ) -> DescribeStackProvisioningParametersResult
newDescribeStackProvisioningParametersResult'  customize = (DescribeStackProvisioningParametersResult <<< customize) { "AgentInstallerUrl": (NullOrUndefined Nothing), "Parameters": (NullOrUndefined Nothing) }



newtype DescribeStackSummaryRequest = DescribeStackSummaryRequest 
  { "StackId" :: (String)
  }
derive instance newtypeDescribeStackSummaryRequest :: Newtype DescribeStackSummaryRequest _
derive instance repGenericDescribeStackSummaryRequest :: Generic DescribeStackSummaryRequest _
instance showDescribeStackSummaryRequest :: Show DescribeStackSummaryRequest where
  show = genericShow
instance decodeDescribeStackSummaryRequest :: Decode DescribeStackSummaryRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeStackSummaryRequest :: Encode DescribeStackSummaryRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeStackSummaryRequest from required parameters
newDescribeStackSummaryRequest :: String -> DescribeStackSummaryRequest
newDescribeStackSummaryRequest _StackId = DescribeStackSummaryRequest { "StackId": _StackId }

-- | Constructs DescribeStackSummaryRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStackSummaryRequest' :: String -> ( { "StackId" :: (String) } -> {"StackId" :: (String) } ) -> DescribeStackSummaryRequest
newDescribeStackSummaryRequest' _StackId customize = (DescribeStackSummaryRequest <<< customize) { "StackId": _StackId }



-- | <p>Contains the response to a <code>DescribeStackSummary</code> request.</p>
newtype DescribeStackSummaryResult = DescribeStackSummaryResult 
  { "StackSummary" :: NullOrUndefined.NullOrUndefined (StackSummary)
  }
derive instance newtypeDescribeStackSummaryResult :: Newtype DescribeStackSummaryResult _
derive instance repGenericDescribeStackSummaryResult :: Generic DescribeStackSummaryResult _
instance showDescribeStackSummaryResult :: Show DescribeStackSummaryResult where
  show = genericShow
instance decodeDescribeStackSummaryResult :: Decode DescribeStackSummaryResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeStackSummaryResult :: Encode DescribeStackSummaryResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeStackSummaryResult from required parameters
newDescribeStackSummaryResult :: DescribeStackSummaryResult
newDescribeStackSummaryResult  = DescribeStackSummaryResult { "StackSummary": (NullOrUndefined Nothing) }

-- | Constructs DescribeStackSummaryResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStackSummaryResult' :: ( { "StackSummary" :: NullOrUndefined.NullOrUndefined (StackSummary) } -> {"StackSummary" :: NullOrUndefined.NullOrUndefined (StackSummary) } ) -> DescribeStackSummaryResult
newDescribeStackSummaryResult'  customize = (DescribeStackSummaryResult <<< customize) { "StackSummary": (NullOrUndefined Nothing) }



newtype DescribeStacksRequest = DescribeStacksRequest 
  { "StackIds" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeStacksRequest :: Newtype DescribeStacksRequest _
derive instance repGenericDescribeStacksRequest :: Generic DescribeStacksRequest _
instance showDescribeStacksRequest :: Show DescribeStacksRequest where
  show = genericShow
instance decodeDescribeStacksRequest :: Decode DescribeStacksRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeStacksRequest :: Encode DescribeStacksRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeStacksRequest from required parameters
newDescribeStacksRequest :: DescribeStacksRequest
newDescribeStacksRequest  = DescribeStacksRequest { "StackIds": (NullOrUndefined Nothing) }

-- | Constructs DescribeStacksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStacksRequest' :: ( { "StackIds" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"StackIds" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeStacksRequest
newDescribeStacksRequest'  customize = (DescribeStacksRequest <<< customize) { "StackIds": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeStacks</code> request.</p>
newtype DescribeStacksResult = DescribeStacksResult 
  { "Stacks" :: NullOrUndefined.NullOrUndefined (Stacks)
  }
derive instance newtypeDescribeStacksResult :: Newtype DescribeStacksResult _
derive instance repGenericDescribeStacksResult :: Generic DescribeStacksResult _
instance showDescribeStacksResult :: Show DescribeStacksResult where
  show = genericShow
instance decodeDescribeStacksResult :: Decode DescribeStacksResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeStacksResult :: Encode DescribeStacksResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeStacksResult from required parameters
newDescribeStacksResult :: DescribeStacksResult
newDescribeStacksResult  = DescribeStacksResult { "Stacks": (NullOrUndefined Nothing) }

-- | Constructs DescribeStacksResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStacksResult' :: ( { "Stacks" :: NullOrUndefined.NullOrUndefined (Stacks) } -> {"Stacks" :: NullOrUndefined.NullOrUndefined (Stacks) } ) -> DescribeStacksResult
newDescribeStacksResult'  customize = (DescribeStacksResult <<< customize) { "Stacks": (NullOrUndefined Nothing) }



newtype DescribeTimeBasedAutoScalingRequest = DescribeTimeBasedAutoScalingRequest 
  { "InstanceIds" :: (Strings)
  }
derive instance newtypeDescribeTimeBasedAutoScalingRequest :: Newtype DescribeTimeBasedAutoScalingRequest _
derive instance repGenericDescribeTimeBasedAutoScalingRequest :: Generic DescribeTimeBasedAutoScalingRequest _
instance showDescribeTimeBasedAutoScalingRequest :: Show DescribeTimeBasedAutoScalingRequest where
  show = genericShow
instance decodeDescribeTimeBasedAutoScalingRequest :: Decode DescribeTimeBasedAutoScalingRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeTimeBasedAutoScalingRequest :: Encode DescribeTimeBasedAutoScalingRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeTimeBasedAutoScalingRequest from required parameters
newDescribeTimeBasedAutoScalingRequest :: Strings -> DescribeTimeBasedAutoScalingRequest
newDescribeTimeBasedAutoScalingRequest _InstanceIds = DescribeTimeBasedAutoScalingRequest { "InstanceIds": _InstanceIds }

-- | Constructs DescribeTimeBasedAutoScalingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTimeBasedAutoScalingRequest' :: Strings -> ( { "InstanceIds" :: (Strings) } -> {"InstanceIds" :: (Strings) } ) -> DescribeTimeBasedAutoScalingRequest
newDescribeTimeBasedAutoScalingRequest' _InstanceIds customize = (DescribeTimeBasedAutoScalingRequest <<< customize) { "InstanceIds": _InstanceIds }



-- | <p>Contains the response to a <code>DescribeTimeBasedAutoScaling</code> request.</p>
newtype DescribeTimeBasedAutoScalingResult = DescribeTimeBasedAutoScalingResult 
  { "TimeBasedAutoScalingConfigurations" :: NullOrUndefined.NullOrUndefined (TimeBasedAutoScalingConfigurations)
  }
derive instance newtypeDescribeTimeBasedAutoScalingResult :: Newtype DescribeTimeBasedAutoScalingResult _
derive instance repGenericDescribeTimeBasedAutoScalingResult :: Generic DescribeTimeBasedAutoScalingResult _
instance showDescribeTimeBasedAutoScalingResult :: Show DescribeTimeBasedAutoScalingResult where
  show = genericShow
instance decodeDescribeTimeBasedAutoScalingResult :: Decode DescribeTimeBasedAutoScalingResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeTimeBasedAutoScalingResult :: Encode DescribeTimeBasedAutoScalingResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeTimeBasedAutoScalingResult from required parameters
newDescribeTimeBasedAutoScalingResult :: DescribeTimeBasedAutoScalingResult
newDescribeTimeBasedAutoScalingResult  = DescribeTimeBasedAutoScalingResult { "TimeBasedAutoScalingConfigurations": (NullOrUndefined Nothing) }

-- | Constructs DescribeTimeBasedAutoScalingResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTimeBasedAutoScalingResult' :: ( { "TimeBasedAutoScalingConfigurations" :: NullOrUndefined.NullOrUndefined (TimeBasedAutoScalingConfigurations) } -> {"TimeBasedAutoScalingConfigurations" :: NullOrUndefined.NullOrUndefined (TimeBasedAutoScalingConfigurations) } ) -> DescribeTimeBasedAutoScalingResult
newDescribeTimeBasedAutoScalingResult'  customize = (DescribeTimeBasedAutoScalingResult <<< customize) { "TimeBasedAutoScalingConfigurations": (NullOrUndefined Nothing) }



newtype DescribeUserProfilesRequest = DescribeUserProfilesRequest 
  { "IamUserArns" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeUserProfilesRequest :: Newtype DescribeUserProfilesRequest _
derive instance repGenericDescribeUserProfilesRequest :: Generic DescribeUserProfilesRequest _
instance showDescribeUserProfilesRequest :: Show DescribeUserProfilesRequest where
  show = genericShow
instance decodeDescribeUserProfilesRequest :: Decode DescribeUserProfilesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeUserProfilesRequest :: Encode DescribeUserProfilesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeUserProfilesRequest from required parameters
newDescribeUserProfilesRequest :: DescribeUserProfilesRequest
newDescribeUserProfilesRequest  = DescribeUserProfilesRequest { "IamUserArns": (NullOrUndefined Nothing) }

-- | Constructs DescribeUserProfilesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUserProfilesRequest' :: ( { "IamUserArns" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"IamUserArns" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeUserProfilesRequest
newDescribeUserProfilesRequest'  customize = (DescribeUserProfilesRequest <<< customize) { "IamUserArns": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeUserProfiles</code> request.</p>
newtype DescribeUserProfilesResult = DescribeUserProfilesResult 
  { "UserProfiles" :: NullOrUndefined.NullOrUndefined (UserProfiles)
  }
derive instance newtypeDescribeUserProfilesResult :: Newtype DescribeUserProfilesResult _
derive instance repGenericDescribeUserProfilesResult :: Generic DescribeUserProfilesResult _
instance showDescribeUserProfilesResult :: Show DescribeUserProfilesResult where
  show = genericShow
instance decodeDescribeUserProfilesResult :: Decode DescribeUserProfilesResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeUserProfilesResult :: Encode DescribeUserProfilesResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeUserProfilesResult from required parameters
newDescribeUserProfilesResult :: DescribeUserProfilesResult
newDescribeUserProfilesResult  = DescribeUserProfilesResult { "UserProfiles": (NullOrUndefined Nothing) }

-- | Constructs DescribeUserProfilesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeUserProfilesResult' :: ( { "UserProfiles" :: NullOrUndefined.NullOrUndefined (UserProfiles) } -> {"UserProfiles" :: NullOrUndefined.NullOrUndefined (UserProfiles) } ) -> DescribeUserProfilesResult
newDescribeUserProfilesResult'  customize = (DescribeUserProfilesResult <<< customize) { "UserProfiles": (NullOrUndefined Nothing) }



newtype DescribeVolumesRequest = DescribeVolumesRequest 
  { "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "RaidArrayId" :: NullOrUndefined.NullOrUndefined (String)
  , "VolumeIds" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeDescribeVolumesRequest :: Newtype DescribeVolumesRequest _
derive instance repGenericDescribeVolumesRequest :: Generic DescribeVolumesRequest _
instance showDescribeVolumesRequest :: Show DescribeVolumesRequest where
  show = genericShow
instance decodeDescribeVolumesRequest :: Decode DescribeVolumesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeVolumesRequest :: Encode DescribeVolumesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeVolumesRequest from required parameters
newDescribeVolumesRequest :: DescribeVolumesRequest
newDescribeVolumesRequest  = DescribeVolumesRequest { "InstanceId": (NullOrUndefined Nothing), "RaidArrayId": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "VolumeIds": (NullOrUndefined Nothing) }

-- | Constructs DescribeVolumesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeVolumesRequest' :: ( { "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "RaidArrayId" :: NullOrUndefined.NullOrUndefined (String) , "VolumeIds" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "RaidArrayId" :: NullOrUndefined.NullOrUndefined (String) , "VolumeIds" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> DescribeVolumesRequest
newDescribeVolumesRequest'  customize = (DescribeVolumesRequest <<< customize) { "InstanceId": (NullOrUndefined Nothing), "RaidArrayId": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "VolumeIds": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>DescribeVolumes</code> request.</p>
newtype DescribeVolumesResult = DescribeVolumesResult 
  { "Volumes" :: NullOrUndefined.NullOrUndefined (Volumes)
  }
derive instance newtypeDescribeVolumesResult :: Newtype DescribeVolumesResult _
derive instance repGenericDescribeVolumesResult :: Generic DescribeVolumesResult _
instance showDescribeVolumesResult :: Show DescribeVolumesResult where
  show = genericShow
instance decodeDescribeVolumesResult :: Decode DescribeVolumesResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeVolumesResult :: Encode DescribeVolumesResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeVolumesResult from required parameters
newDescribeVolumesResult :: DescribeVolumesResult
newDescribeVolumesResult  = DescribeVolumesResult { "Volumes": (NullOrUndefined Nothing) }

-- | Constructs DescribeVolumesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeVolumesResult' :: ( { "Volumes" :: NullOrUndefined.NullOrUndefined (Volumes) } -> {"Volumes" :: NullOrUndefined.NullOrUndefined (Volumes) } ) -> DescribeVolumesResult
newDescribeVolumesResult'  customize = (DescribeVolumesResult <<< customize) { "Volumes": (NullOrUndefined Nothing) }



newtype DetachElasticLoadBalancerRequest = DetachElasticLoadBalancerRequest 
  { "ElasticLoadBalancerName" :: (String)
  , "LayerId" :: (String)
  }
derive instance newtypeDetachElasticLoadBalancerRequest :: Newtype DetachElasticLoadBalancerRequest _
derive instance repGenericDetachElasticLoadBalancerRequest :: Generic DetachElasticLoadBalancerRequest _
instance showDetachElasticLoadBalancerRequest :: Show DetachElasticLoadBalancerRequest where
  show = genericShow
instance decodeDetachElasticLoadBalancerRequest :: Decode DetachElasticLoadBalancerRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetachElasticLoadBalancerRequest :: Encode DetachElasticLoadBalancerRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDisassociateElasticIpRequest :: Show DisassociateElasticIpRequest where
  show = genericShow
instance decodeDisassociateElasticIpRequest :: Decode DisassociateElasticIpRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisassociateElasticIpRequest :: Encode DisassociateElasticIpRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DisassociateElasticIpRequest from required parameters
newDisassociateElasticIpRequest :: String -> DisassociateElasticIpRequest
newDisassociateElasticIpRequest _ElasticIp = DisassociateElasticIpRequest { "ElasticIp": _ElasticIp }

-- | Constructs DisassociateElasticIpRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateElasticIpRequest' :: String -> ( { "ElasticIp" :: (String) } -> {"ElasticIp" :: (String) } ) -> DisassociateElasticIpRequest
newDisassociateElasticIpRequest' _ElasticIp customize = (DisassociateElasticIpRequest <<< customize) { "ElasticIp": _ElasticIp }



-- | <p>Describes an Amazon EBS volume. This data type maps directly to the Amazon EC2 <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a> data type.</p>
newtype EbsBlockDevice = EbsBlockDevice 
  { "SnapshotId" :: NullOrUndefined.NullOrUndefined (String)
  , "Iops" :: NullOrUndefined.NullOrUndefined (Int)
  , "VolumeSize" :: NullOrUndefined.NullOrUndefined (Int)
  , "VolumeType" :: NullOrUndefined.NullOrUndefined (VolumeType)
  , "DeleteOnTermination" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeEbsBlockDevice :: Newtype EbsBlockDevice _
derive instance repGenericEbsBlockDevice :: Generic EbsBlockDevice _
instance showEbsBlockDevice :: Show EbsBlockDevice where
  show = genericShow
instance decodeEbsBlockDevice :: Decode EbsBlockDevice where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEbsBlockDevice :: Encode EbsBlockDevice where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EbsBlockDevice from required parameters
newEbsBlockDevice :: EbsBlockDevice
newEbsBlockDevice  = EbsBlockDevice { "DeleteOnTermination": (NullOrUndefined Nothing), "Iops": (NullOrUndefined Nothing), "SnapshotId": (NullOrUndefined Nothing), "VolumeSize": (NullOrUndefined Nothing), "VolumeType": (NullOrUndefined Nothing) }

-- | Constructs EbsBlockDevice's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEbsBlockDevice' :: ( { "SnapshotId" :: NullOrUndefined.NullOrUndefined (String) , "Iops" :: NullOrUndefined.NullOrUndefined (Int) , "VolumeSize" :: NullOrUndefined.NullOrUndefined (Int) , "VolumeType" :: NullOrUndefined.NullOrUndefined (VolumeType) , "DeleteOnTermination" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"SnapshotId" :: NullOrUndefined.NullOrUndefined (String) , "Iops" :: NullOrUndefined.NullOrUndefined (Int) , "VolumeSize" :: NullOrUndefined.NullOrUndefined (Int) , "VolumeType" :: NullOrUndefined.NullOrUndefined (VolumeType) , "DeleteOnTermination" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> EbsBlockDevice
newEbsBlockDevice'  customize = (EbsBlockDevice <<< customize) { "DeleteOnTermination": (NullOrUndefined Nothing), "Iops": (NullOrUndefined Nothing), "SnapshotId": (NullOrUndefined Nothing), "VolumeSize": (NullOrUndefined Nothing), "VolumeType": (NullOrUndefined Nothing) }



-- | <p>Describes a registered Amazon ECS cluster.</p>
newtype EcsCluster = EcsCluster 
  { "EcsClusterArn" :: NullOrUndefined.NullOrUndefined (String)
  , "EcsClusterName" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "RegisteredAt" :: NullOrUndefined.NullOrUndefined (DateTime)
  }
derive instance newtypeEcsCluster :: Newtype EcsCluster _
derive instance repGenericEcsCluster :: Generic EcsCluster _
instance showEcsCluster :: Show EcsCluster where
  show = genericShow
instance decodeEcsCluster :: Decode EcsCluster where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEcsCluster :: Encode EcsCluster where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EcsCluster from required parameters
newEcsCluster :: EcsCluster
newEcsCluster  = EcsCluster { "EcsClusterArn": (NullOrUndefined Nothing), "EcsClusterName": (NullOrUndefined Nothing), "RegisteredAt": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs EcsCluster's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEcsCluster' :: ( { "EcsClusterArn" :: NullOrUndefined.NullOrUndefined (String) , "EcsClusterName" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "RegisteredAt" :: NullOrUndefined.NullOrUndefined (DateTime) } -> {"EcsClusterArn" :: NullOrUndefined.NullOrUndefined (String) , "EcsClusterName" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "RegisteredAt" :: NullOrUndefined.NullOrUndefined (DateTime) } ) -> EcsCluster
newEcsCluster'  customize = (EcsCluster <<< customize) { "EcsClusterArn": (NullOrUndefined Nothing), "EcsClusterName": (NullOrUndefined Nothing), "RegisteredAt": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



newtype EcsClusters = EcsClusters (Array EcsCluster)
derive instance newtypeEcsClusters :: Newtype EcsClusters _
derive instance repGenericEcsClusters :: Generic EcsClusters _
instance showEcsClusters :: Show EcsClusters where
  show = genericShow
instance decodeEcsClusters :: Decode EcsClusters where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEcsClusters :: Encode EcsClusters where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes an Elastic IP address.</p>
newtype ElasticIp = ElasticIp 
  { "Ip" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Domain" :: NullOrUndefined.NullOrUndefined (String)
  , "Region" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeElasticIp :: Newtype ElasticIp _
derive instance repGenericElasticIp :: Generic ElasticIp _
instance showElasticIp :: Show ElasticIp where
  show = genericShow
instance decodeElasticIp :: Decode ElasticIp where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeElasticIp :: Encode ElasticIp where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ElasticIp from required parameters
newElasticIp :: ElasticIp
newElasticIp  = ElasticIp { "Domain": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "Ip": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing) }

-- | Constructs ElasticIp's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newElasticIp' :: ( { "Ip" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Domain" :: NullOrUndefined.NullOrUndefined (String) , "Region" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) } -> {"Ip" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Domain" :: NullOrUndefined.NullOrUndefined (String) , "Region" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) } ) -> ElasticIp
newElasticIp'  customize = (ElasticIp <<< customize) { "Domain": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "Ip": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing) }



newtype ElasticIps = ElasticIps (Array ElasticIp)
derive instance newtypeElasticIps :: Newtype ElasticIps _
derive instance repGenericElasticIps :: Generic ElasticIps _
instance showElasticIps :: Show ElasticIps where
  show = genericShow
instance decodeElasticIps :: Decode ElasticIps where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeElasticIps :: Encode ElasticIps where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes an Elastic Load Balancing instance.</p>
newtype ElasticLoadBalancer = ElasticLoadBalancer 
  { "ElasticLoadBalancerName" :: NullOrUndefined.NullOrUndefined (String)
  , "Region" :: NullOrUndefined.NullOrUndefined (String)
  , "DnsName" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "LayerId" :: NullOrUndefined.NullOrUndefined (String)
  , "VpcId" :: NullOrUndefined.NullOrUndefined (String)
  , "AvailabilityZones" :: NullOrUndefined.NullOrUndefined (Strings)
  , "SubnetIds" :: NullOrUndefined.NullOrUndefined (Strings)
  , "Ec2InstanceIds" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeElasticLoadBalancer :: Newtype ElasticLoadBalancer _
derive instance repGenericElasticLoadBalancer :: Generic ElasticLoadBalancer _
instance showElasticLoadBalancer :: Show ElasticLoadBalancer where
  show = genericShow
instance decodeElasticLoadBalancer :: Decode ElasticLoadBalancer where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeElasticLoadBalancer :: Encode ElasticLoadBalancer where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ElasticLoadBalancer from required parameters
newElasticLoadBalancer :: ElasticLoadBalancer
newElasticLoadBalancer  = ElasticLoadBalancer { "AvailabilityZones": (NullOrUndefined Nothing), "DnsName": (NullOrUndefined Nothing), "Ec2InstanceIds": (NullOrUndefined Nothing), "ElasticLoadBalancerName": (NullOrUndefined Nothing), "LayerId": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "SubnetIds": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }

-- | Constructs ElasticLoadBalancer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newElasticLoadBalancer' :: ( { "ElasticLoadBalancerName" :: NullOrUndefined.NullOrUndefined (String) , "Region" :: NullOrUndefined.NullOrUndefined (String) , "DnsName" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "LayerId" :: NullOrUndefined.NullOrUndefined (String) , "VpcId" :: NullOrUndefined.NullOrUndefined (String) , "AvailabilityZones" :: NullOrUndefined.NullOrUndefined (Strings) , "SubnetIds" :: NullOrUndefined.NullOrUndefined (Strings) , "Ec2InstanceIds" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"ElasticLoadBalancerName" :: NullOrUndefined.NullOrUndefined (String) , "Region" :: NullOrUndefined.NullOrUndefined (String) , "DnsName" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "LayerId" :: NullOrUndefined.NullOrUndefined (String) , "VpcId" :: NullOrUndefined.NullOrUndefined (String) , "AvailabilityZones" :: NullOrUndefined.NullOrUndefined (Strings) , "SubnetIds" :: NullOrUndefined.NullOrUndefined (Strings) , "Ec2InstanceIds" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> ElasticLoadBalancer
newElasticLoadBalancer'  customize = (ElasticLoadBalancer <<< customize) { "AvailabilityZones": (NullOrUndefined Nothing), "DnsName": (NullOrUndefined Nothing), "Ec2InstanceIds": (NullOrUndefined Nothing), "ElasticLoadBalancerName": (NullOrUndefined Nothing), "LayerId": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "SubnetIds": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }



newtype ElasticLoadBalancers = ElasticLoadBalancers (Array ElasticLoadBalancer)
derive instance newtypeElasticLoadBalancers :: Newtype ElasticLoadBalancers _
derive instance repGenericElasticLoadBalancers :: Generic ElasticLoadBalancers _
instance showElasticLoadBalancers :: Show ElasticLoadBalancers where
  show = genericShow
instance decodeElasticLoadBalancers :: Decode ElasticLoadBalancers where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeElasticLoadBalancers :: Encode ElasticLoadBalancers where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents an app's environment variable.</p>
newtype EnvironmentVariable = EnvironmentVariable 
  { "Key" :: (String)
  , "Value" :: (String)
  , "Secure" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeEnvironmentVariable :: Newtype EnvironmentVariable _
derive instance repGenericEnvironmentVariable :: Generic EnvironmentVariable _
instance showEnvironmentVariable :: Show EnvironmentVariable where
  show = genericShow
instance decodeEnvironmentVariable :: Decode EnvironmentVariable where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironmentVariable :: Encode EnvironmentVariable where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EnvironmentVariable from required parameters
newEnvironmentVariable :: String -> String -> EnvironmentVariable
newEnvironmentVariable _Key _Value = EnvironmentVariable { "Key": _Key, "Value": _Value, "Secure": (NullOrUndefined Nothing) }

-- | Constructs EnvironmentVariable's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnvironmentVariable' :: String -> String -> ( { "Key" :: (String) , "Value" :: (String) , "Secure" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"Key" :: (String) , "Value" :: (String) , "Secure" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> EnvironmentVariable
newEnvironmentVariable' _Key _Value customize = (EnvironmentVariable <<< customize) { "Key": _Key, "Value": _Value, "Secure": (NullOrUndefined Nothing) }



newtype EnvironmentVariables = EnvironmentVariables (Array EnvironmentVariable)
derive instance newtypeEnvironmentVariables :: Newtype EnvironmentVariables _
derive instance repGenericEnvironmentVariables :: Generic EnvironmentVariables _
instance showEnvironmentVariables :: Show EnvironmentVariables where
  show = genericShow
instance decodeEnvironmentVariables :: Decode EnvironmentVariables where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironmentVariables :: Encode EnvironmentVariables where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetHostnameSuggestionRequest = GetHostnameSuggestionRequest 
  { "LayerId" :: (String)
  }
derive instance newtypeGetHostnameSuggestionRequest :: Newtype GetHostnameSuggestionRequest _
derive instance repGenericGetHostnameSuggestionRequest :: Generic GetHostnameSuggestionRequest _
instance showGetHostnameSuggestionRequest :: Show GetHostnameSuggestionRequest where
  show = genericShow
instance decodeGetHostnameSuggestionRequest :: Decode GetHostnameSuggestionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetHostnameSuggestionRequest :: Encode GetHostnameSuggestionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetHostnameSuggestionRequest from required parameters
newGetHostnameSuggestionRequest :: String -> GetHostnameSuggestionRequest
newGetHostnameSuggestionRequest _LayerId = GetHostnameSuggestionRequest { "LayerId": _LayerId }

-- | Constructs GetHostnameSuggestionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHostnameSuggestionRequest' :: String -> ( { "LayerId" :: (String) } -> {"LayerId" :: (String) } ) -> GetHostnameSuggestionRequest
newGetHostnameSuggestionRequest' _LayerId customize = (GetHostnameSuggestionRequest <<< customize) { "LayerId": _LayerId }



-- | <p>Contains the response to a <code>GetHostnameSuggestion</code> request.</p>
newtype GetHostnameSuggestionResult = GetHostnameSuggestionResult 
  { "LayerId" :: NullOrUndefined.NullOrUndefined (String)
  , "Hostname" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeGetHostnameSuggestionResult :: Newtype GetHostnameSuggestionResult _
derive instance repGenericGetHostnameSuggestionResult :: Generic GetHostnameSuggestionResult _
instance showGetHostnameSuggestionResult :: Show GetHostnameSuggestionResult where
  show = genericShow
instance decodeGetHostnameSuggestionResult :: Decode GetHostnameSuggestionResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetHostnameSuggestionResult :: Encode GetHostnameSuggestionResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetHostnameSuggestionResult from required parameters
newGetHostnameSuggestionResult :: GetHostnameSuggestionResult
newGetHostnameSuggestionResult  = GetHostnameSuggestionResult { "Hostname": (NullOrUndefined Nothing), "LayerId": (NullOrUndefined Nothing) }

-- | Constructs GetHostnameSuggestionResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetHostnameSuggestionResult' :: ( { "LayerId" :: NullOrUndefined.NullOrUndefined (String) , "Hostname" :: NullOrUndefined.NullOrUndefined (String) } -> {"LayerId" :: NullOrUndefined.NullOrUndefined (String) , "Hostname" :: NullOrUndefined.NullOrUndefined (String) } ) -> GetHostnameSuggestionResult
newGetHostnameSuggestionResult'  customize = (GetHostnameSuggestionResult <<< customize) { "Hostname": (NullOrUndefined Nothing), "LayerId": (NullOrUndefined Nothing) }



newtype GrantAccessRequest = GrantAccessRequest 
  { "InstanceId" :: (String)
  , "ValidForInMinutes" :: NullOrUndefined.NullOrUndefined (ValidForInMinutes)
  }
derive instance newtypeGrantAccessRequest :: Newtype GrantAccessRequest _
derive instance repGenericGrantAccessRequest :: Generic GrantAccessRequest _
instance showGrantAccessRequest :: Show GrantAccessRequest where
  show = genericShow
instance decodeGrantAccessRequest :: Decode GrantAccessRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGrantAccessRequest :: Encode GrantAccessRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GrantAccessRequest from required parameters
newGrantAccessRequest :: String -> GrantAccessRequest
newGrantAccessRequest _InstanceId = GrantAccessRequest { "InstanceId": _InstanceId, "ValidForInMinutes": (NullOrUndefined Nothing) }

-- | Constructs GrantAccessRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGrantAccessRequest' :: String -> ( { "InstanceId" :: (String) , "ValidForInMinutes" :: NullOrUndefined.NullOrUndefined (ValidForInMinutes) } -> {"InstanceId" :: (String) , "ValidForInMinutes" :: NullOrUndefined.NullOrUndefined (ValidForInMinutes) } ) -> GrantAccessRequest
newGrantAccessRequest' _InstanceId customize = (GrantAccessRequest <<< customize) { "InstanceId": _InstanceId, "ValidForInMinutes": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>GrantAccess</code> request.</p>
newtype GrantAccessResult = GrantAccessResult 
  { "TemporaryCredential" :: NullOrUndefined.NullOrUndefined (TemporaryCredential)
  }
derive instance newtypeGrantAccessResult :: Newtype GrantAccessResult _
derive instance repGenericGrantAccessResult :: Generic GrantAccessResult _
instance showGrantAccessResult :: Show GrantAccessResult where
  show = genericShow
instance decodeGrantAccessResult :: Decode GrantAccessResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGrantAccessResult :: Encode GrantAccessResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GrantAccessResult from required parameters
newGrantAccessResult :: GrantAccessResult
newGrantAccessResult  = GrantAccessResult { "TemporaryCredential": (NullOrUndefined Nothing) }

-- | Constructs GrantAccessResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGrantAccessResult' :: ( { "TemporaryCredential" :: NullOrUndefined.NullOrUndefined (TemporaryCredential) } -> {"TemporaryCredential" :: NullOrUndefined.NullOrUndefined (TemporaryCredential) } ) -> GrantAccessResult
newGrantAccessResult'  customize = (GrantAccessResult <<< customize) { "TemporaryCredential": (NullOrUndefined Nothing) }



newtype Hour = Hour String
derive instance newtypeHour :: Newtype Hour _
derive instance repGenericHour :: Generic Hour _
instance showHour :: Show Hour where
  show = genericShow
instance decodeHour :: Decode Hour where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHour :: Encode Hour where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes an instance.</p>
newtype Instance = Instance 
  { "AgentVersion" :: NullOrUndefined.NullOrUndefined (String)
  , "AmiId" :: NullOrUndefined.NullOrUndefined (String)
  , "Architecture" :: NullOrUndefined.NullOrUndefined (Architecture)
  , "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "AutoScalingType" :: NullOrUndefined.NullOrUndefined (AutoScalingType)
  , "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String)
  , "BlockDeviceMappings" :: NullOrUndefined.NullOrUndefined (BlockDeviceMappings)
  , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "Ec2InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  , "EcsClusterArn" :: NullOrUndefined.NullOrUndefined (String)
  , "EcsContainerInstanceArn" :: NullOrUndefined.NullOrUndefined (String)
  , "ElasticIp" :: NullOrUndefined.NullOrUndefined (String)
  , "Hostname" :: NullOrUndefined.NullOrUndefined (String)
  , "InfrastructureClass" :: NullOrUndefined.NullOrUndefined (String)
  , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceType" :: NullOrUndefined.NullOrUndefined (String)
  , "LastServiceErrorId" :: NullOrUndefined.NullOrUndefined (String)
  , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings)
  , "Os" :: NullOrUndefined.NullOrUndefined (String)
  , "Platform" :: NullOrUndefined.NullOrUndefined (String)
  , "PrivateDns" :: NullOrUndefined.NullOrUndefined (String)
  , "PrivateIp" :: NullOrUndefined.NullOrUndefined (String)
  , "PublicDns" :: NullOrUndefined.NullOrUndefined (String)
  , "PublicIp" :: NullOrUndefined.NullOrUndefined (String)
  , "RegisteredBy" :: NullOrUndefined.NullOrUndefined (String)
  , "ReportedAgentVersion" :: NullOrUndefined.NullOrUndefined (String)
  , "ReportedOs" :: NullOrUndefined.NullOrUndefined (ReportedOs)
  , "RootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType)
  , "RootDeviceVolumeId" :: NullOrUndefined.NullOrUndefined (String)
  , "SecurityGroupIds" :: NullOrUndefined.NullOrUndefined (Strings)
  , "SshHostDsaKeyFingerprint" :: NullOrUndefined.NullOrUndefined (String)
  , "SshHostRsaKeyFingerprint" :: NullOrUndefined.NullOrUndefined (String)
  , "SshKeyName" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "Status" :: NullOrUndefined.NullOrUndefined (String)
  , "SubnetId" :: NullOrUndefined.NullOrUndefined (String)
  , "Tenancy" :: NullOrUndefined.NullOrUndefined (String)
  , "VirtualizationType" :: NullOrUndefined.NullOrUndefined (VirtualizationType)
  }
derive instance newtypeInstance :: Newtype Instance _
derive instance repGenericInstance :: Generic Instance _
instance showInstance :: Show Instance where
  show = genericShow
instance decodeInstance :: Decode Instance where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstance :: Encode Instance where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Instance from required parameters
newInstance :: Instance
newInstance  = Instance { "AgentVersion": (NullOrUndefined Nothing), "AmiId": (NullOrUndefined Nothing), "Architecture": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "AutoScalingType": (NullOrUndefined Nothing), "AvailabilityZone": (NullOrUndefined Nothing), "BlockDeviceMappings": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "EbsOptimized": (NullOrUndefined Nothing), "Ec2InstanceId": (NullOrUndefined Nothing), "EcsClusterArn": (NullOrUndefined Nothing), "EcsContainerInstanceArn": (NullOrUndefined Nothing), "ElasticIp": (NullOrUndefined Nothing), "Hostname": (NullOrUndefined Nothing), "InfrastructureClass": (NullOrUndefined Nothing), "InstallUpdatesOnBoot": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "InstanceProfileArn": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "LastServiceErrorId": (NullOrUndefined Nothing), "LayerIds": (NullOrUndefined Nothing), "Os": (NullOrUndefined Nothing), "Platform": (NullOrUndefined Nothing), "PrivateDns": (NullOrUndefined Nothing), "PrivateIp": (NullOrUndefined Nothing), "PublicDns": (NullOrUndefined Nothing), "PublicIp": (NullOrUndefined Nothing), "RegisteredBy": (NullOrUndefined Nothing), "ReportedAgentVersion": (NullOrUndefined Nothing), "ReportedOs": (NullOrUndefined Nothing), "RootDeviceType": (NullOrUndefined Nothing), "RootDeviceVolumeId": (NullOrUndefined Nothing), "SecurityGroupIds": (NullOrUndefined Nothing), "SshHostDsaKeyFingerprint": (NullOrUndefined Nothing), "SshHostRsaKeyFingerprint": (NullOrUndefined Nothing), "SshKeyName": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "SubnetId": (NullOrUndefined Nothing), "Tenancy": (NullOrUndefined Nothing), "VirtualizationType": (NullOrUndefined Nothing) }

-- | Constructs Instance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstance' :: ( { "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) , "AmiId" :: NullOrUndefined.NullOrUndefined (String) , "Architecture" :: NullOrUndefined.NullOrUndefined (Architecture) , "Arn" :: NullOrUndefined.NullOrUndefined (String) , "AutoScalingType" :: NullOrUndefined.NullOrUndefined (AutoScalingType) , "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "BlockDeviceMappings" :: NullOrUndefined.NullOrUndefined (BlockDeviceMappings) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (Boolean) , "Ec2InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "EcsClusterArn" :: NullOrUndefined.NullOrUndefined (String) , "EcsContainerInstanceArn" :: NullOrUndefined.NullOrUndefined (String) , "ElasticIp" :: NullOrUndefined.NullOrUndefined (String) , "Hostname" :: NullOrUndefined.NullOrUndefined (String) , "InfrastructureClass" :: NullOrUndefined.NullOrUndefined (String) , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "InstanceType" :: NullOrUndefined.NullOrUndefined (String) , "LastServiceErrorId" :: NullOrUndefined.NullOrUndefined (String) , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings) , "Os" :: NullOrUndefined.NullOrUndefined (String) , "Platform" :: NullOrUndefined.NullOrUndefined (String) , "PrivateDns" :: NullOrUndefined.NullOrUndefined (String) , "PrivateIp" :: NullOrUndefined.NullOrUndefined (String) , "PublicDns" :: NullOrUndefined.NullOrUndefined (String) , "PublicIp" :: NullOrUndefined.NullOrUndefined (String) , "RegisteredBy" :: NullOrUndefined.NullOrUndefined (String) , "ReportedAgentVersion" :: NullOrUndefined.NullOrUndefined (String) , "ReportedOs" :: NullOrUndefined.NullOrUndefined (ReportedOs) , "RootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType) , "RootDeviceVolumeId" :: NullOrUndefined.NullOrUndefined (String) , "SecurityGroupIds" :: NullOrUndefined.NullOrUndefined (Strings) , "SshHostDsaKeyFingerprint" :: NullOrUndefined.NullOrUndefined (String) , "SshHostRsaKeyFingerprint" :: NullOrUndefined.NullOrUndefined (String) , "SshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "Status" :: NullOrUndefined.NullOrUndefined (String) , "SubnetId" :: NullOrUndefined.NullOrUndefined (String) , "Tenancy" :: NullOrUndefined.NullOrUndefined (String) , "VirtualizationType" :: NullOrUndefined.NullOrUndefined (VirtualizationType) } -> {"AgentVersion" :: NullOrUndefined.NullOrUndefined (String) , "AmiId" :: NullOrUndefined.NullOrUndefined (String) , "Architecture" :: NullOrUndefined.NullOrUndefined (Architecture) , "Arn" :: NullOrUndefined.NullOrUndefined (String) , "AutoScalingType" :: NullOrUndefined.NullOrUndefined (AutoScalingType) , "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "BlockDeviceMappings" :: NullOrUndefined.NullOrUndefined (BlockDeviceMappings) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (Boolean) , "Ec2InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "EcsClusterArn" :: NullOrUndefined.NullOrUndefined (String) , "EcsContainerInstanceArn" :: NullOrUndefined.NullOrUndefined (String) , "ElasticIp" :: NullOrUndefined.NullOrUndefined (String) , "Hostname" :: NullOrUndefined.NullOrUndefined (String) , "InfrastructureClass" :: NullOrUndefined.NullOrUndefined (String) , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "InstanceType" :: NullOrUndefined.NullOrUndefined (String) , "LastServiceErrorId" :: NullOrUndefined.NullOrUndefined (String) , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings) , "Os" :: NullOrUndefined.NullOrUndefined (String) , "Platform" :: NullOrUndefined.NullOrUndefined (String) , "PrivateDns" :: NullOrUndefined.NullOrUndefined (String) , "PrivateIp" :: NullOrUndefined.NullOrUndefined (String) , "PublicDns" :: NullOrUndefined.NullOrUndefined (String) , "PublicIp" :: NullOrUndefined.NullOrUndefined (String) , "RegisteredBy" :: NullOrUndefined.NullOrUndefined (String) , "ReportedAgentVersion" :: NullOrUndefined.NullOrUndefined (String) , "ReportedOs" :: NullOrUndefined.NullOrUndefined (ReportedOs) , "RootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType) , "RootDeviceVolumeId" :: NullOrUndefined.NullOrUndefined (String) , "SecurityGroupIds" :: NullOrUndefined.NullOrUndefined (Strings) , "SshHostDsaKeyFingerprint" :: NullOrUndefined.NullOrUndefined (String) , "SshHostRsaKeyFingerprint" :: NullOrUndefined.NullOrUndefined (String) , "SshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "Status" :: NullOrUndefined.NullOrUndefined (String) , "SubnetId" :: NullOrUndefined.NullOrUndefined (String) , "Tenancy" :: NullOrUndefined.NullOrUndefined (String) , "VirtualizationType" :: NullOrUndefined.NullOrUndefined (VirtualizationType) } ) -> Instance
newInstance'  customize = (Instance <<< customize) { "AgentVersion": (NullOrUndefined Nothing), "AmiId": (NullOrUndefined Nothing), "Architecture": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "AutoScalingType": (NullOrUndefined Nothing), "AvailabilityZone": (NullOrUndefined Nothing), "BlockDeviceMappings": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "EbsOptimized": (NullOrUndefined Nothing), "Ec2InstanceId": (NullOrUndefined Nothing), "EcsClusterArn": (NullOrUndefined Nothing), "EcsContainerInstanceArn": (NullOrUndefined Nothing), "ElasticIp": (NullOrUndefined Nothing), "Hostname": (NullOrUndefined Nothing), "InfrastructureClass": (NullOrUndefined Nothing), "InstallUpdatesOnBoot": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "InstanceProfileArn": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "LastServiceErrorId": (NullOrUndefined Nothing), "LayerIds": (NullOrUndefined Nothing), "Os": (NullOrUndefined Nothing), "Platform": (NullOrUndefined Nothing), "PrivateDns": (NullOrUndefined Nothing), "PrivateIp": (NullOrUndefined Nothing), "PublicDns": (NullOrUndefined Nothing), "PublicIp": (NullOrUndefined Nothing), "RegisteredBy": (NullOrUndefined Nothing), "ReportedAgentVersion": (NullOrUndefined Nothing), "ReportedOs": (NullOrUndefined Nothing), "RootDeviceType": (NullOrUndefined Nothing), "RootDeviceVolumeId": (NullOrUndefined Nothing), "SecurityGroupIds": (NullOrUndefined Nothing), "SshHostDsaKeyFingerprint": (NullOrUndefined Nothing), "SshHostRsaKeyFingerprint": (NullOrUndefined Nothing), "SshKeyName": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "SubnetId": (NullOrUndefined Nothing), "Tenancy": (NullOrUndefined Nothing), "VirtualizationType": (NullOrUndefined Nothing) }



-- | <p>Contains a description of an Amazon EC2 instance from the Amazon EC2 metadata service. For more information, see <a href="http://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html">Instance Metadata and User Data</a>.</p>
newtype InstanceIdentity = InstanceIdentity 
  { "Document" :: NullOrUndefined.NullOrUndefined (String)
  , "Signature" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInstanceIdentity :: Newtype InstanceIdentity _
derive instance repGenericInstanceIdentity :: Generic InstanceIdentity _
instance showInstanceIdentity :: Show InstanceIdentity where
  show = genericShow
instance decodeInstanceIdentity :: Decode InstanceIdentity where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceIdentity :: Encode InstanceIdentity where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceIdentity from required parameters
newInstanceIdentity :: InstanceIdentity
newInstanceIdentity  = InstanceIdentity { "Document": (NullOrUndefined Nothing), "Signature": (NullOrUndefined Nothing) }

-- | Constructs InstanceIdentity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceIdentity' :: ( { "Document" :: NullOrUndefined.NullOrUndefined (String) , "Signature" :: NullOrUndefined.NullOrUndefined (String) } -> {"Document" :: NullOrUndefined.NullOrUndefined (String) , "Signature" :: NullOrUndefined.NullOrUndefined (String) } ) -> InstanceIdentity
newInstanceIdentity'  customize = (InstanceIdentity <<< customize) { "Document": (NullOrUndefined Nothing), "Signature": (NullOrUndefined Nothing) }



newtype Instances = Instances (Array Instance)
derive instance newtypeInstances :: Newtype Instances _
derive instance repGenericInstances :: Generic Instances _
instance showInstances :: Show Instances where
  show = genericShow
instance decodeInstances :: Decode Instances where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstances :: Encode Instances where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes how many instances a stack has for each status.</p>
newtype InstancesCount = InstancesCount 
  { "Assigning" :: NullOrUndefined.NullOrUndefined (Int)
  , "Booting" :: NullOrUndefined.NullOrUndefined (Int)
  , "ConnectionLost" :: NullOrUndefined.NullOrUndefined (Int)
  , "Deregistering" :: NullOrUndefined.NullOrUndefined (Int)
  , "Online" :: NullOrUndefined.NullOrUndefined (Int)
  , "Pending" :: NullOrUndefined.NullOrUndefined (Int)
  , "Rebooting" :: NullOrUndefined.NullOrUndefined (Int)
  , "Registered" :: NullOrUndefined.NullOrUndefined (Int)
  , "Registering" :: NullOrUndefined.NullOrUndefined (Int)
  , "Requested" :: NullOrUndefined.NullOrUndefined (Int)
  , "RunningSetup" :: NullOrUndefined.NullOrUndefined (Int)
  , "SetupFailed" :: NullOrUndefined.NullOrUndefined (Int)
  , "ShuttingDown" :: NullOrUndefined.NullOrUndefined (Int)
  , "StartFailed" :: NullOrUndefined.NullOrUndefined (Int)
  , "StopFailed" :: NullOrUndefined.NullOrUndefined (Int)
  , "Stopped" :: NullOrUndefined.NullOrUndefined (Int)
  , "Stopping" :: NullOrUndefined.NullOrUndefined (Int)
  , "Terminated" :: NullOrUndefined.NullOrUndefined (Int)
  , "Terminating" :: NullOrUndefined.NullOrUndefined (Int)
  , "Unassigning" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeInstancesCount :: Newtype InstancesCount _
derive instance repGenericInstancesCount :: Generic InstancesCount _
instance showInstancesCount :: Show InstancesCount where
  show = genericShow
instance decodeInstancesCount :: Decode InstancesCount where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstancesCount :: Encode InstancesCount where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstancesCount from required parameters
newInstancesCount :: InstancesCount
newInstancesCount  = InstancesCount { "Assigning": (NullOrUndefined Nothing), "Booting": (NullOrUndefined Nothing), "ConnectionLost": (NullOrUndefined Nothing), "Deregistering": (NullOrUndefined Nothing), "Online": (NullOrUndefined Nothing), "Pending": (NullOrUndefined Nothing), "Rebooting": (NullOrUndefined Nothing), "Registered": (NullOrUndefined Nothing), "Registering": (NullOrUndefined Nothing), "Requested": (NullOrUndefined Nothing), "RunningSetup": (NullOrUndefined Nothing), "SetupFailed": (NullOrUndefined Nothing), "ShuttingDown": (NullOrUndefined Nothing), "StartFailed": (NullOrUndefined Nothing), "StopFailed": (NullOrUndefined Nothing), "Stopped": (NullOrUndefined Nothing), "Stopping": (NullOrUndefined Nothing), "Terminated": (NullOrUndefined Nothing), "Terminating": (NullOrUndefined Nothing), "Unassigning": (NullOrUndefined Nothing) }

-- | Constructs InstancesCount's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstancesCount' :: ( { "Assigning" :: NullOrUndefined.NullOrUndefined (Int) , "Booting" :: NullOrUndefined.NullOrUndefined (Int) , "ConnectionLost" :: NullOrUndefined.NullOrUndefined (Int) , "Deregistering" :: NullOrUndefined.NullOrUndefined (Int) , "Online" :: NullOrUndefined.NullOrUndefined (Int) , "Pending" :: NullOrUndefined.NullOrUndefined (Int) , "Rebooting" :: NullOrUndefined.NullOrUndefined (Int) , "Registered" :: NullOrUndefined.NullOrUndefined (Int) , "Registering" :: NullOrUndefined.NullOrUndefined (Int) , "Requested" :: NullOrUndefined.NullOrUndefined (Int) , "RunningSetup" :: NullOrUndefined.NullOrUndefined (Int) , "SetupFailed" :: NullOrUndefined.NullOrUndefined (Int) , "ShuttingDown" :: NullOrUndefined.NullOrUndefined (Int) , "StartFailed" :: NullOrUndefined.NullOrUndefined (Int) , "StopFailed" :: NullOrUndefined.NullOrUndefined (Int) , "Stopped" :: NullOrUndefined.NullOrUndefined (Int) , "Stopping" :: NullOrUndefined.NullOrUndefined (Int) , "Terminated" :: NullOrUndefined.NullOrUndefined (Int) , "Terminating" :: NullOrUndefined.NullOrUndefined (Int) , "Unassigning" :: NullOrUndefined.NullOrUndefined (Int) } -> {"Assigning" :: NullOrUndefined.NullOrUndefined (Int) , "Booting" :: NullOrUndefined.NullOrUndefined (Int) , "ConnectionLost" :: NullOrUndefined.NullOrUndefined (Int) , "Deregistering" :: NullOrUndefined.NullOrUndefined (Int) , "Online" :: NullOrUndefined.NullOrUndefined (Int) , "Pending" :: NullOrUndefined.NullOrUndefined (Int) , "Rebooting" :: NullOrUndefined.NullOrUndefined (Int) , "Registered" :: NullOrUndefined.NullOrUndefined (Int) , "Registering" :: NullOrUndefined.NullOrUndefined (Int) , "Requested" :: NullOrUndefined.NullOrUndefined (Int) , "RunningSetup" :: NullOrUndefined.NullOrUndefined (Int) , "SetupFailed" :: NullOrUndefined.NullOrUndefined (Int) , "ShuttingDown" :: NullOrUndefined.NullOrUndefined (Int) , "StartFailed" :: NullOrUndefined.NullOrUndefined (Int) , "StopFailed" :: NullOrUndefined.NullOrUndefined (Int) , "Stopped" :: NullOrUndefined.NullOrUndefined (Int) , "Stopping" :: NullOrUndefined.NullOrUndefined (Int) , "Terminated" :: NullOrUndefined.NullOrUndefined (Int) , "Terminating" :: NullOrUndefined.NullOrUndefined (Int) , "Unassigning" :: NullOrUndefined.NullOrUndefined (Int) } ) -> InstancesCount
newInstancesCount'  customize = (InstancesCount <<< customize) { "Assigning": (NullOrUndefined Nothing), "Booting": (NullOrUndefined Nothing), "ConnectionLost": (NullOrUndefined Nothing), "Deregistering": (NullOrUndefined Nothing), "Online": (NullOrUndefined Nothing), "Pending": (NullOrUndefined Nothing), "Rebooting": (NullOrUndefined Nothing), "Registered": (NullOrUndefined Nothing), "Registering": (NullOrUndefined Nothing), "Requested": (NullOrUndefined Nothing), "RunningSetup": (NullOrUndefined Nothing), "SetupFailed": (NullOrUndefined Nothing), "ShuttingDown": (NullOrUndefined Nothing), "StartFailed": (NullOrUndefined Nothing), "StopFailed": (NullOrUndefined Nothing), "Stopped": (NullOrUndefined Nothing), "Stopping": (NullOrUndefined Nothing), "Terminated": (NullOrUndefined Nothing), "Terminating": (NullOrUndefined Nothing), "Unassigning": (NullOrUndefined Nothing) }



-- | <p>Describes a layer.</p>
newtype Layer = Layer 
  { "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "LayerId" :: NullOrUndefined.NullOrUndefined (String)
  , "Type" :: NullOrUndefined.NullOrUndefined (LayerType)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Shortname" :: NullOrUndefined.NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (LayerAttributes)
  , "CloudWatchLogsConfiguration" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsConfiguration)
  , "CustomInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String)
  , "CustomJson" :: NullOrUndefined.NullOrUndefined (String)
  , "CustomSecurityGroupIds" :: NullOrUndefined.NullOrUndefined (Strings)
  , "DefaultSecurityGroupNames" :: NullOrUndefined.NullOrUndefined (Strings)
  , "Packages" :: NullOrUndefined.NullOrUndefined (Strings)
  , "VolumeConfigurations" :: NullOrUndefined.NullOrUndefined (VolumeConfigurations)
  , "EnableAutoHealing" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AutoAssignElasticIps" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AutoAssignPublicIps" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "DefaultRecipes" :: NullOrUndefined.NullOrUndefined (Recipes)
  , "CustomRecipes" :: NullOrUndefined.NullOrUndefined (Recipes)
  , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "UseEbsOptimizedInstances" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "LifecycleEventConfiguration" :: NullOrUndefined.NullOrUndefined (LifecycleEventConfiguration)
  }
derive instance newtypeLayer :: Newtype Layer _
derive instance repGenericLayer :: Generic Layer _
instance showLayer :: Show Layer where
  show = genericShow
instance decodeLayer :: Decode Layer where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayer :: Encode Layer where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Layer from required parameters
newLayer :: Layer
newLayer  = Layer { "Arn": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "AutoAssignElasticIps": (NullOrUndefined Nothing), "AutoAssignPublicIps": (NullOrUndefined Nothing), "CloudWatchLogsConfiguration": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CustomInstanceProfileArn": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "CustomRecipes": (NullOrUndefined Nothing), "CustomSecurityGroupIds": (NullOrUndefined Nothing), "DefaultRecipes": (NullOrUndefined Nothing), "DefaultSecurityGroupNames": (NullOrUndefined Nothing), "EnableAutoHealing": (NullOrUndefined Nothing), "InstallUpdatesOnBoot": (NullOrUndefined Nothing), "LayerId": (NullOrUndefined Nothing), "LifecycleEventConfiguration": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Packages": (NullOrUndefined Nothing), "Shortname": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "UseEbsOptimizedInstances": (NullOrUndefined Nothing), "VolumeConfigurations": (NullOrUndefined Nothing) }

-- | Constructs Layer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLayer' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "LayerId" :: NullOrUndefined.NullOrUndefined (String) , "Type" :: NullOrUndefined.NullOrUndefined (LayerType) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Shortname" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (LayerAttributes) , "CloudWatchLogsConfiguration" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsConfiguration) , "CustomInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "CustomSecurityGroupIds" :: NullOrUndefined.NullOrUndefined (Strings) , "DefaultSecurityGroupNames" :: NullOrUndefined.NullOrUndefined (Strings) , "Packages" :: NullOrUndefined.NullOrUndefined (Strings) , "VolumeConfigurations" :: NullOrUndefined.NullOrUndefined (VolumeConfigurations) , "EnableAutoHealing" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoAssignElasticIps" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoAssignPublicIps" :: NullOrUndefined.NullOrUndefined (Boolean) , "DefaultRecipes" :: NullOrUndefined.NullOrUndefined (Recipes) , "CustomRecipes" :: NullOrUndefined.NullOrUndefined (Recipes) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean) , "UseEbsOptimizedInstances" :: NullOrUndefined.NullOrUndefined (Boolean) , "LifecycleEventConfiguration" :: NullOrUndefined.NullOrUndefined (LifecycleEventConfiguration) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "LayerId" :: NullOrUndefined.NullOrUndefined (String) , "Type" :: NullOrUndefined.NullOrUndefined (LayerType) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Shortname" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (LayerAttributes) , "CloudWatchLogsConfiguration" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsConfiguration) , "CustomInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "CustomSecurityGroupIds" :: NullOrUndefined.NullOrUndefined (Strings) , "DefaultSecurityGroupNames" :: NullOrUndefined.NullOrUndefined (Strings) , "Packages" :: NullOrUndefined.NullOrUndefined (Strings) , "VolumeConfigurations" :: NullOrUndefined.NullOrUndefined (VolumeConfigurations) , "EnableAutoHealing" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoAssignElasticIps" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoAssignPublicIps" :: NullOrUndefined.NullOrUndefined (Boolean) , "DefaultRecipes" :: NullOrUndefined.NullOrUndefined (Recipes) , "CustomRecipes" :: NullOrUndefined.NullOrUndefined (Recipes) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean) , "UseEbsOptimizedInstances" :: NullOrUndefined.NullOrUndefined (Boolean) , "LifecycleEventConfiguration" :: NullOrUndefined.NullOrUndefined (LifecycleEventConfiguration) } ) -> Layer
newLayer'  customize = (Layer <<< customize) { "Arn": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "AutoAssignElasticIps": (NullOrUndefined Nothing), "AutoAssignPublicIps": (NullOrUndefined Nothing), "CloudWatchLogsConfiguration": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CustomInstanceProfileArn": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "CustomRecipes": (NullOrUndefined Nothing), "CustomSecurityGroupIds": (NullOrUndefined Nothing), "DefaultRecipes": (NullOrUndefined Nothing), "DefaultSecurityGroupNames": (NullOrUndefined Nothing), "EnableAutoHealing": (NullOrUndefined Nothing), "InstallUpdatesOnBoot": (NullOrUndefined Nothing), "LayerId": (NullOrUndefined Nothing), "LifecycleEventConfiguration": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Packages": (NullOrUndefined Nothing), "Shortname": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "UseEbsOptimizedInstances": (NullOrUndefined Nothing), "VolumeConfigurations": (NullOrUndefined Nothing) }



newtype LayerAttributes = LayerAttributes (StrMap.StrMap String)
derive instance newtypeLayerAttributes :: Newtype LayerAttributes _
derive instance repGenericLayerAttributes :: Generic LayerAttributes _
instance showLayerAttributes :: Show LayerAttributes where
  show = genericShow
instance decodeLayerAttributes :: Decode LayerAttributes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerAttributes :: Encode LayerAttributes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype LayerAttributesKeys = LayerAttributesKeys String
derive instance newtypeLayerAttributesKeys :: Newtype LayerAttributesKeys _
derive instance repGenericLayerAttributesKeys :: Generic LayerAttributesKeys _
instance showLayerAttributesKeys :: Show LayerAttributesKeys where
  show = genericShow
instance decodeLayerAttributesKeys :: Decode LayerAttributesKeys where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerAttributesKeys :: Encode LayerAttributesKeys where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype LayerType = LayerType String
derive instance newtypeLayerType :: Newtype LayerType _
derive instance repGenericLayerType :: Generic LayerType _
instance showLayerType :: Show LayerType where
  show = genericShow
instance decodeLayerType :: Decode LayerType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayerType :: Encode LayerType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Layers = Layers (Array Layer)
derive instance newtypeLayers :: Newtype Layers _
derive instance repGenericLayers :: Generic Layers _
instance showLayers :: Show Layers where
  show = genericShow
instance decodeLayers :: Decode Layers where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLayers :: Encode Layers where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Specifies the lifecycle event configuration</p>
newtype LifecycleEventConfiguration = LifecycleEventConfiguration 
  { "Shutdown" :: NullOrUndefined.NullOrUndefined (ShutdownEventConfiguration)
  }
derive instance newtypeLifecycleEventConfiguration :: Newtype LifecycleEventConfiguration _
derive instance repGenericLifecycleEventConfiguration :: Generic LifecycleEventConfiguration _
instance showLifecycleEventConfiguration :: Show LifecycleEventConfiguration where
  show = genericShow
instance decodeLifecycleEventConfiguration :: Decode LifecycleEventConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLifecycleEventConfiguration :: Encode LifecycleEventConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LifecycleEventConfiguration from required parameters
newLifecycleEventConfiguration :: LifecycleEventConfiguration
newLifecycleEventConfiguration  = LifecycleEventConfiguration { "Shutdown": (NullOrUndefined Nothing) }

-- | Constructs LifecycleEventConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLifecycleEventConfiguration' :: ( { "Shutdown" :: NullOrUndefined.NullOrUndefined (ShutdownEventConfiguration) } -> {"Shutdown" :: NullOrUndefined.NullOrUndefined (ShutdownEventConfiguration) } ) -> LifecycleEventConfiguration
newLifecycleEventConfiguration'  customize = (LifecycleEventConfiguration <<< customize) { "Shutdown": (NullOrUndefined Nothing) }



newtype ListTagsRequest = ListTagsRequest 
  { "ResourceArn" :: (ResourceArn)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListTagsRequest :: Newtype ListTagsRequest _
derive instance repGenericListTagsRequest :: Generic ListTagsRequest _
instance showListTagsRequest :: Show ListTagsRequest where
  show = genericShow
instance decodeListTagsRequest :: Decode ListTagsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTagsRequest :: Encode ListTagsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListTagsRequest from required parameters
newListTagsRequest :: ResourceArn -> ListTagsRequest
newListTagsRequest _ResourceArn = ListTagsRequest { "ResourceArn": _ResourceArn, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsRequest' :: ResourceArn -> ( { "ResourceArn" :: (ResourceArn) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"ResourceArn" :: (ResourceArn) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListTagsRequest
newListTagsRequest' _ResourceArn customize = (ListTagsRequest <<< customize) { "ResourceArn": _ResourceArn, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>ListTags</code> request.</p>
newtype ListTagsResult = ListTagsResult 
  { "Tags" :: NullOrUndefined.NullOrUndefined (Tags)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListTagsResult :: Newtype ListTagsResult _
derive instance repGenericListTagsResult :: Generic ListTagsResult _
instance showListTagsResult :: Show ListTagsResult where
  show = genericShow
instance decodeListTagsResult :: Decode ListTagsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTagsResult :: Encode ListTagsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListTagsResult from required parameters
newListTagsResult :: ListTagsResult
newListTagsResult  = ListTagsResult { "NextToken": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }

-- | Constructs ListTagsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsResult' :: ( { "Tags" :: NullOrUndefined.NullOrUndefined (Tags) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Tags" :: NullOrUndefined.NullOrUndefined (Tags) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListTagsResult
newListTagsResult'  customize = (ListTagsResult <<< customize) { "NextToken": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }



-- | <p>Describes a layer's load-based auto scaling configuration.</p>
newtype LoadBasedAutoScalingConfiguration = LoadBasedAutoScalingConfiguration 
  { "LayerId" :: NullOrUndefined.NullOrUndefined (String)
  , "Enable" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "UpScaling" :: NullOrUndefined.NullOrUndefined (AutoScalingThresholds)
  , "DownScaling" :: NullOrUndefined.NullOrUndefined (AutoScalingThresholds)
  }
derive instance newtypeLoadBasedAutoScalingConfiguration :: Newtype LoadBasedAutoScalingConfiguration _
derive instance repGenericLoadBasedAutoScalingConfiguration :: Generic LoadBasedAutoScalingConfiguration _
instance showLoadBasedAutoScalingConfiguration :: Show LoadBasedAutoScalingConfiguration where
  show = genericShow
instance decodeLoadBasedAutoScalingConfiguration :: Decode LoadBasedAutoScalingConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLoadBasedAutoScalingConfiguration :: Encode LoadBasedAutoScalingConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LoadBasedAutoScalingConfiguration from required parameters
newLoadBasedAutoScalingConfiguration :: LoadBasedAutoScalingConfiguration
newLoadBasedAutoScalingConfiguration  = LoadBasedAutoScalingConfiguration { "DownScaling": (NullOrUndefined Nothing), "Enable": (NullOrUndefined Nothing), "LayerId": (NullOrUndefined Nothing), "UpScaling": (NullOrUndefined Nothing) }

-- | Constructs LoadBasedAutoScalingConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoadBasedAutoScalingConfiguration' :: ( { "LayerId" :: NullOrUndefined.NullOrUndefined (String) , "Enable" :: NullOrUndefined.NullOrUndefined (Boolean) , "UpScaling" :: NullOrUndefined.NullOrUndefined (AutoScalingThresholds) , "DownScaling" :: NullOrUndefined.NullOrUndefined (AutoScalingThresholds) } -> {"LayerId" :: NullOrUndefined.NullOrUndefined (String) , "Enable" :: NullOrUndefined.NullOrUndefined (Boolean) , "UpScaling" :: NullOrUndefined.NullOrUndefined (AutoScalingThresholds) , "DownScaling" :: NullOrUndefined.NullOrUndefined (AutoScalingThresholds) } ) -> LoadBasedAutoScalingConfiguration
newLoadBasedAutoScalingConfiguration'  customize = (LoadBasedAutoScalingConfiguration <<< customize) { "DownScaling": (NullOrUndefined Nothing), "Enable": (NullOrUndefined Nothing), "LayerId": (NullOrUndefined Nothing), "UpScaling": (NullOrUndefined Nothing) }



newtype LoadBasedAutoScalingConfigurations = LoadBasedAutoScalingConfigurations (Array LoadBasedAutoScalingConfiguration)
derive instance newtypeLoadBasedAutoScalingConfigurations :: Newtype LoadBasedAutoScalingConfigurations _
derive instance repGenericLoadBasedAutoScalingConfigurations :: Generic LoadBasedAutoScalingConfigurations _
instance showLoadBasedAutoScalingConfigurations :: Show LoadBasedAutoScalingConfigurations where
  show = genericShow
instance decodeLoadBasedAutoScalingConfigurations :: Decode LoadBasedAutoScalingConfigurations where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLoadBasedAutoScalingConfigurations :: Encode LoadBasedAutoScalingConfigurations where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Minute = Minute Int
derive instance newtypeMinute :: Newtype Minute _
derive instance repGenericMinute :: Generic Minute _
instance showMinute :: Show Minute where
  show = genericShow
instance decodeMinute :: Decode Minute where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMinute :: Encode Minute where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where
  show = genericShow
instance decodeNextToken :: Decode NextToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNextToken :: Encode NextToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes supported operating systems in AWS OpsWorks Stacks.</p>
newtype OperatingSystem = OperatingSystem 
  { "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  , "Type" :: NullOrUndefined.NullOrUndefined (String)
  , "ConfigurationManagers" :: NullOrUndefined.NullOrUndefined (OperatingSystemConfigurationManagers)
  , "ReportedName" :: NullOrUndefined.NullOrUndefined (String)
  , "ReportedVersion" :: NullOrUndefined.NullOrUndefined (String)
  , "Supported" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeOperatingSystem :: Newtype OperatingSystem _
derive instance repGenericOperatingSystem :: Generic OperatingSystem _
instance showOperatingSystem :: Show OperatingSystem where
  show = genericShow
instance decodeOperatingSystem :: Decode OperatingSystem where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperatingSystem :: Encode OperatingSystem where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OperatingSystem from required parameters
newOperatingSystem :: OperatingSystem
newOperatingSystem  = OperatingSystem { "ConfigurationManagers": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ReportedName": (NullOrUndefined Nothing), "ReportedVersion": (NullOrUndefined Nothing), "Supported": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs OperatingSystem's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperatingSystem' :: ( { "Name" :: NullOrUndefined.NullOrUndefined (String) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "Type" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManagers" :: NullOrUndefined.NullOrUndefined (OperatingSystemConfigurationManagers) , "ReportedName" :: NullOrUndefined.NullOrUndefined (String) , "ReportedVersion" :: NullOrUndefined.NullOrUndefined (String) , "Supported" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"Name" :: NullOrUndefined.NullOrUndefined (String) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "Type" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManagers" :: NullOrUndefined.NullOrUndefined (OperatingSystemConfigurationManagers) , "ReportedName" :: NullOrUndefined.NullOrUndefined (String) , "ReportedVersion" :: NullOrUndefined.NullOrUndefined (String) , "Supported" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> OperatingSystem
newOperatingSystem'  customize = (OperatingSystem <<< customize) { "ConfigurationManagers": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ReportedName": (NullOrUndefined Nothing), "ReportedVersion": (NullOrUndefined Nothing), "Supported": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



-- | <p>A block that contains information about the configuration manager (Chef) and the versions of the configuration manager that are supported for an operating system.</p>
newtype OperatingSystemConfigurationManager = OperatingSystemConfigurationManager 
  { "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Version" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeOperatingSystemConfigurationManager :: Newtype OperatingSystemConfigurationManager _
derive instance repGenericOperatingSystemConfigurationManager :: Generic OperatingSystemConfigurationManager _
instance showOperatingSystemConfigurationManager :: Show OperatingSystemConfigurationManager where
  show = genericShow
instance decodeOperatingSystemConfigurationManager :: Decode OperatingSystemConfigurationManager where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperatingSystemConfigurationManager :: Encode OperatingSystemConfigurationManager where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OperatingSystemConfigurationManager from required parameters
newOperatingSystemConfigurationManager :: OperatingSystemConfigurationManager
newOperatingSystemConfigurationManager  = OperatingSystemConfigurationManager { "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs OperatingSystemConfigurationManager's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperatingSystemConfigurationManager' :: ( { "Name" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (String) } -> {"Name" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (String) } ) -> OperatingSystemConfigurationManager
newOperatingSystemConfigurationManager'  customize = (OperatingSystemConfigurationManager <<< customize) { "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



newtype OperatingSystemConfigurationManagers = OperatingSystemConfigurationManagers (Array OperatingSystemConfigurationManager)
derive instance newtypeOperatingSystemConfigurationManagers :: Newtype OperatingSystemConfigurationManagers _
derive instance repGenericOperatingSystemConfigurationManagers :: Generic OperatingSystemConfigurationManagers _
instance showOperatingSystemConfigurationManagers :: Show OperatingSystemConfigurationManagers where
  show = genericShow
instance decodeOperatingSystemConfigurationManagers :: Decode OperatingSystemConfigurationManagers where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperatingSystemConfigurationManagers :: Encode OperatingSystemConfigurationManagers where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OperatingSystems = OperatingSystems (Array OperatingSystem)
derive instance newtypeOperatingSystems :: Newtype OperatingSystems _
derive instance repGenericOperatingSystems :: Generic OperatingSystems _
instance showOperatingSystems :: Show OperatingSystems where
  show = genericShow
instance decodeOperatingSystems :: Decode OperatingSystems where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperatingSystems :: Encode OperatingSystems where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Parameters = Parameters (StrMap.StrMap String)
derive instance newtypeParameters :: Newtype Parameters _
derive instance repGenericParameters :: Generic Parameters _
instance showParameters :: Show Parameters where
  show = genericShow
instance decodeParameters :: Decode Parameters where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeParameters :: Encode Parameters where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes stack or user permissions.</p>
newtype Permission = Permission 
  { "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "IamUserArn" :: NullOrUndefined.NullOrUndefined (String)
  , "AllowSsh" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AllowSudo" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "Level" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypePermission :: Newtype Permission _
derive instance repGenericPermission :: Generic Permission _
instance showPermission :: Show Permission where
  show = genericShow
instance decodePermission :: Decode Permission where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePermission :: Encode Permission where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Permission from required parameters
newPermission :: Permission
newPermission  = Permission { "AllowSsh": (NullOrUndefined Nothing), "AllowSudo": (NullOrUndefined Nothing), "IamUserArn": (NullOrUndefined Nothing), "Level": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs Permission's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPermission' :: ( { "StackId" :: NullOrUndefined.NullOrUndefined (String) , "IamUserArn" :: NullOrUndefined.NullOrUndefined (String) , "AllowSsh" :: NullOrUndefined.NullOrUndefined (Boolean) , "AllowSudo" :: NullOrUndefined.NullOrUndefined (Boolean) , "Level" :: NullOrUndefined.NullOrUndefined (String) } -> {"StackId" :: NullOrUndefined.NullOrUndefined (String) , "IamUserArn" :: NullOrUndefined.NullOrUndefined (String) , "AllowSsh" :: NullOrUndefined.NullOrUndefined (Boolean) , "AllowSudo" :: NullOrUndefined.NullOrUndefined (Boolean) , "Level" :: NullOrUndefined.NullOrUndefined (String) } ) -> Permission
newPermission'  customize = (Permission <<< customize) { "AllowSsh": (NullOrUndefined Nothing), "AllowSudo": (NullOrUndefined Nothing), "IamUserArn": (NullOrUndefined Nothing), "Level": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



newtype Permissions = Permissions (Array Permission)
derive instance newtypePermissions :: Newtype Permissions _
derive instance repGenericPermissions :: Generic Permissions _
instance showPermissions :: Show Permissions where
  show = genericShow
instance decodePermissions :: Decode Permissions where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePermissions :: Encode Permissions where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes an instance's RAID array.</p>
newtype RaidArray = RaidArray 
  { "RaidArrayId" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "RaidLevel" :: NullOrUndefined.NullOrUndefined (Int)
  , "NumberOfDisks" :: NullOrUndefined.NullOrUndefined (Int)
  , "Size" :: NullOrUndefined.NullOrUndefined (Int)
  , "Device" :: NullOrUndefined.NullOrUndefined (String)
  , "MountPoint" :: NullOrUndefined.NullOrUndefined (String)
  , "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String)
  , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "VolumeType" :: NullOrUndefined.NullOrUndefined (String)
  , "Iops" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeRaidArray :: Newtype RaidArray _
derive instance repGenericRaidArray :: Generic RaidArray _
instance showRaidArray :: Show RaidArray where
  show = genericShow
instance decodeRaidArray :: Decode RaidArray where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRaidArray :: Encode RaidArray where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RaidArray from required parameters
newRaidArray :: RaidArray
newRaidArray  = RaidArray { "AvailabilityZone": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "Device": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "Iops": (NullOrUndefined Nothing), "MountPoint": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NumberOfDisks": (NullOrUndefined Nothing), "RaidArrayId": (NullOrUndefined Nothing), "RaidLevel": (NullOrUndefined Nothing), "Size": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "VolumeType": (NullOrUndefined Nothing) }

-- | Constructs RaidArray's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRaidArray' :: ( { "RaidArrayId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "RaidLevel" :: NullOrUndefined.NullOrUndefined (Int) , "NumberOfDisks" :: NullOrUndefined.NullOrUndefined (Int) , "Size" :: NullOrUndefined.NullOrUndefined (Int) , "Device" :: NullOrUndefined.NullOrUndefined (String) , "MountPoint" :: NullOrUndefined.NullOrUndefined (String) , "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "VolumeType" :: NullOrUndefined.NullOrUndefined (String) , "Iops" :: NullOrUndefined.NullOrUndefined (Int) } -> {"RaidArrayId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "RaidLevel" :: NullOrUndefined.NullOrUndefined (Int) , "NumberOfDisks" :: NullOrUndefined.NullOrUndefined (Int) , "Size" :: NullOrUndefined.NullOrUndefined (Int) , "Device" :: NullOrUndefined.NullOrUndefined (String) , "MountPoint" :: NullOrUndefined.NullOrUndefined (String) , "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "VolumeType" :: NullOrUndefined.NullOrUndefined (String) , "Iops" :: NullOrUndefined.NullOrUndefined (Int) } ) -> RaidArray
newRaidArray'  customize = (RaidArray <<< customize) { "AvailabilityZone": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "Device": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "Iops": (NullOrUndefined Nothing), "MountPoint": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NumberOfDisks": (NullOrUndefined Nothing), "RaidArrayId": (NullOrUndefined Nothing), "RaidLevel": (NullOrUndefined Nothing), "Size": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "VolumeType": (NullOrUndefined Nothing) }



newtype RaidArrays = RaidArrays (Array RaidArray)
derive instance newtypeRaidArrays :: Newtype RaidArrays _
derive instance repGenericRaidArrays :: Generic RaidArrays _
instance showRaidArrays :: Show RaidArrays where
  show = genericShow
instance decodeRaidArrays :: Decode RaidArrays where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRaidArrays :: Encode RaidArrays where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes an Amazon RDS instance.</p>
newtype RdsDbInstance = RdsDbInstance 
  { "RdsDbInstanceArn" :: NullOrUndefined.NullOrUndefined (String)
  , "DbInstanceIdentifier" :: NullOrUndefined.NullOrUndefined (String)
  , "DbUser" :: NullOrUndefined.NullOrUndefined (String)
  , "DbPassword" :: NullOrUndefined.NullOrUndefined (String)
  , "Region" :: NullOrUndefined.NullOrUndefined (String)
  , "Address" :: NullOrUndefined.NullOrUndefined (String)
  , "Engine" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "MissingOnRds" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeRdsDbInstance :: Newtype RdsDbInstance _
derive instance repGenericRdsDbInstance :: Generic RdsDbInstance _
instance showRdsDbInstance :: Show RdsDbInstance where
  show = genericShow
instance decodeRdsDbInstance :: Decode RdsDbInstance where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRdsDbInstance :: Encode RdsDbInstance where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RdsDbInstance from required parameters
newRdsDbInstance :: RdsDbInstance
newRdsDbInstance  = RdsDbInstance { "Address": (NullOrUndefined Nothing), "DbInstanceIdentifier": (NullOrUndefined Nothing), "DbPassword": (NullOrUndefined Nothing), "DbUser": (NullOrUndefined Nothing), "Engine": (NullOrUndefined Nothing), "MissingOnRds": (NullOrUndefined Nothing), "RdsDbInstanceArn": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs RdsDbInstance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRdsDbInstance' :: ( { "RdsDbInstanceArn" :: NullOrUndefined.NullOrUndefined (String) , "DbInstanceIdentifier" :: NullOrUndefined.NullOrUndefined (String) , "DbUser" :: NullOrUndefined.NullOrUndefined (String) , "DbPassword" :: NullOrUndefined.NullOrUndefined (String) , "Region" :: NullOrUndefined.NullOrUndefined (String) , "Address" :: NullOrUndefined.NullOrUndefined (String) , "Engine" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "MissingOnRds" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"RdsDbInstanceArn" :: NullOrUndefined.NullOrUndefined (String) , "DbInstanceIdentifier" :: NullOrUndefined.NullOrUndefined (String) , "DbUser" :: NullOrUndefined.NullOrUndefined (String) , "DbPassword" :: NullOrUndefined.NullOrUndefined (String) , "Region" :: NullOrUndefined.NullOrUndefined (String) , "Address" :: NullOrUndefined.NullOrUndefined (String) , "Engine" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "MissingOnRds" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> RdsDbInstance
newRdsDbInstance'  customize = (RdsDbInstance <<< customize) { "Address": (NullOrUndefined Nothing), "DbInstanceIdentifier": (NullOrUndefined Nothing), "DbPassword": (NullOrUndefined Nothing), "DbUser": (NullOrUndefined Nothing), "Engine": (NullOrUndefined Nothing), "MissingOnRds": (NullOrUndefined Nothing), "RdsDbInstanceArn": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



newtype RdsDbInstances = RdsDbInstances (Array RdsDbInstance)
derive instance newtypeRdsDbInstances :: Newtype RdsDbInstances _
derive instance repGenericRdsDbInstances :: Generic RdsDbInstances _
instance showRdsDbInstances :: Show RdsDbInstances where
  show = genericShow
instance decodeRdsDbInstances :: Decode RdsDbInstances where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRdsDbInstances :: Encode RdsDbInstances where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RebootInstanceRequest = RebootInstanceRequest 
  { "InstanceId" :: (String)
  }
derive instance newtypeRebootInstanceRequest :: Newtype RebootInstanceRequest _
derive instance repGenericRebootInstanceRequest :: Generic RebootInstanceRequest _
instance showRebootInstanceRequest :: Show RebootInstanceRequest where
  show = genericShow
instance decodeRebootInstanceRequest :: Decode RebootInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRebootInstanceRequest :: Encode RebootInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RebootInstanceRequest from required parameters
newRebootInstanceRequest :: String -> RebootInstanceRequest
newRebootInstanceRequest _InstanceId = RebootInstanceRequest { "InstanceId": _InstanceId }

-- | Constructs RebootInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRebootInstanceRequest' :: String -> ( { "InstanceId" :: (String) } -> {"InstanceId" :: (String) } ) -> RebootInstanceRequest
newRebootInstanceRequest' _InstanceId customize = (RebootInstanceRequest <<< customize) { "InstanceId": _InstanceId }



-- | <p>AWS OpsWorks Stacks supports five lifecycle events: <b>setup</b>, <b>configuration</b>, <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>. For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. In addition, you can provide custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the standard recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a particular layer to be run in response to each of the five events. </p> <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the .rb extension. For example: phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's phpapp2 folder.</p>
newtype Recipes = Recipes 
  { "Setup" :: NullOrUndefined.NullOrUndefined (Strings)
  , "Configure" :: NullOrUndefined.NullOrUndefined (Strings)
  , "Deploy" :: NullOrUndefined.NullOrUndefined (Strings)
  , "Undeploy" :: NullOrUndefined.NullOrUndefined (Strings)
  , "Shutdown" :: NullOrUndefined.NullOrUndefined (Strings)
  }
derive instance newtypeRecipes :: Newtype Recipes _
derive instance repGenericRecipes :: Generic Recipes _
instance showRecipes :: Show Recipes where
  show = genericShow
instance decodeRecipes :: Decode Recipes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRecipes :: Encode Recipes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Recipes from required parameters
newRecipes :: Recipes
newRecipes  = Recipes { "Configure": (NullOrUndefined Nothing), "Deploy": (NullOrUndefined Nothing), "Setup": (NullOrUndefined Nothing), "Shutdown": (NullOrUndefined Nothing), "Undeploy": (NullOrUndefined Nothing) }

-- | Constructs Recipes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecipes' :: ( { "Setup" :: NullOrUndefined.NullOrUndefined (Strings) , "Configure" :: NullOrUndefined.NullOrUndefined (Strings) , "Deploy" :: NullOrUndefined.NullOrUndefined (Strings) , "Undeploy" :: NullOrUndefined.NullOrUndefined (Strings) , "Shutdown" :: NullOrUndefined.NullOrUndefined (Strings) } -> {"Setup" :: NullOrUndefined.NullOrUndefined (Strings) , "Configure" :: NullOrUndefined.NullOrUndefined (Strings) , "Deploy" :: NullOrUndefined.NullOrUndefined (Strings) , "Undeploy" :: NullOrUndefined.NullOrUndefined (Strings) , "Shutdown" :: NullOrUndefined.NullOrUndefined (Strings) } ) -> Recipes
newRecipes'  customize = (Recipes <<< customize) { "Configure": (NullOrUndefined Nothing), "Deploy": (NullOrUndefined Nothing), "Setup": (NullOrUndefined Nothing), "Shutdown": (NullOrUndefined Nothing), "Undeploy": (NullOrUndefined Nothing) }



newtype RegisterEcsClusterRequest = RegisterEcsClusterRequest 
  { "EcsClusterArn" :: (String)
  , "StackId" :: (String)
  }
derive instance newtypeRegisterEcsClusterRequest :: Newtype RegisterEcsClusterRequest _
derive instance repGenericRegisterEcsClusterRequest :: Generic RegisterEcsClusterRequest _
instance showRegisterEcsClusterRequest :: Show RegisterEcsClusterRequest where
  show = genericShow
instance decodeRegisterEcsClusterRequest :: Decode RegisterEcsClusterRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterEcsClusterRequest :: Encode RegisterEcsClusterRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterEcsClusterRequest from required parameters
newRegisterEcsClusterRequest :: String -> String -> RegisterEcsClusterRequest
newRegisterEcsClusterRequest _EcsClusterArn _StackId = RegisterEcsClusterRequest { "EcsClusterArn": _EcsClusterArn, "StackId": _StackId }

-- | Constructs RegisterEcsClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterEcsClusterRequest' :: String -> String -> ( { "EcsClusterArn" :: (String) , "StackId" :: (String) } -> {"EcsClusterArn" :: (String) , "StackId" :: (String) } ) -> RegisterEcsClusterRequest
newRegisterEcsClusterRequest' _EcsClusterArn _StackId customize = (RegisterEcsClusterRequest <<< customize) { "EcsClusterArn": _EcsClusterArn, "StackId": _StackId }



-- | <p>Contains the response to a <code>RegisterEcsCluster</code> request.</p>
newtype RegisterEcsClusterResult = RegisterEcsClusterResult 
  { "EcsClusterArn" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeRegisterEcsClusterResult :: Newtype RegisterEcsClusterResult _
derive instance repGenericRegisterEcsClusterResult :: Generic RegisterEcsClusterResult _
instance showRegisterEcsClusterResult :: Show RegisterEcsClusterResult where
  show = genericShow
instance decodeRegisterEcsClusterResult :: Decode RegisterEcsClusterResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterEcsClusterResult :: Encode RegisterEcsClusterResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterEcsClusterResult from required parameters
newRegisterEcsClusterResult :: RegisterEcsClusterResult
newRegisterEcsClusterResult  = RegisterEcsClusterResult { "EcsClusterArn": (NullOrUndefined Nothing) }

-- | Constructs RegisterEcsClusterResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterEcsClusterResult' :: ( { "EcsClusterArn" :: NullOrUndefined.NullOrUndefined (String) } -> {"EcsClusterArn" :: NullOrUndefined.NullOrUndefined (String) } ) -> RegisterEcsClusterResult
newRegisterEcsClusterResult'  customize = (RegisterEcsClusterResult <<< customize) { "EcsClusterArn": (NullOrUndefined Nothing) }



newtype RegisterElasticIpRequest = RegisterElasticIpRequest 
  { "ElasticIp" :: (String)
  , "StackId" :: (String)
  }
derive instance newtypeRegisterElasticIpRequest :: Newtype RegisterElasticIpRequest _
derive instance repGenericRegisterElasticIpRequest :: Generic RegisterElasticIpRequest _
instance showRegisterElasticIpRequest :: Show RegisterElasticIpRequest where
  show = genericShow
instance decodeRegisterElasticIpRequest :: Decode RegisterElasticIpRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterElasticIpRequest :: Encode RegisterElasticIpRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterElasticIpRequest from required parameters
newRegisterElasticIpRequest :: String -> String -> RegisterElasticIpRequest
newRegisterElasticIpRequest _ElasticIp _StackId = RegisterElasticIpRequest { "ElasticIp": _ElasticIp, "StackId": _StackId }

-- | Constructs RegisterElasticIpRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterElasticIpRequest' :: String -> String -> ( { "ElasticIp" :: (String) , "StackId" :: (String) } -> {"ElasticIp" :: (String) , "StackId" :: (String) } ) -> RegisterElasticIpRequest
newRegisterElasticIpRequest' _ElasticIp _StackId customize = (RegisterElasticIpRequest <<< customize) { "ElasticIp": _ElasticIp, "StackId": _StackId }



-- | <p>Contains the response to a <code>RegisterElasticIp</code> request.</p>
newtype RegisterElasticIpResult = RegisterElasticIpResult 
  { "ElasticIp" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeRegisterElasticIpResult :: Newtype RegisterElasticIpResult _
derive instance repGenericRegisterElasticIpResult :: Generic RegisterElasticIpResult _
instance showRegisterElasticIpResult :: Show RegisterElasticIpResult where
  show = genericShow
instance decodeRegisterElasticIpResult :: Decode RegisterElasticIpResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterElasticIpResult :: Encode RegisterElasticIpResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterElasticIpResult from required parameters
newRegisterElasticIpResult :: RegisterElasticIpResult
newRegisterElasticIpResult  = RegisterElasticIpResult { "ElasticIp": (NullOrUndefined Nothing) }

-- | Constructs RegisterElasticIpResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterElasticIpResult' :: ( { "ElasticIp" :: NullOrUndefined.NullOrUndefined (String) } -> {"ElasticIp" :: NullOrUndefined.NullOrUndefined (String) } ) -> RegisterElasticIpResult
newRegisterElasticIpResult'  customize = (RegisterElasticIpResult <<< customize) { "ElasticIp": (NullOrUndefined Nothing) }



newtype RegisterInstanceRequest = RegisterInstanceRequest 
  { "StackId" :: (String)
  , "Hostname" :: NullOrUndefined.NullOrUndefined (String)
  , "PublicIp" :: NullOrUndefined.NullOrUndefined (String)
  , "PrivateIp" :: NullOrUndefined.NullOrUndefined (String)
  , "RsaPublicKey" :: NullOrUndefined.NullOrUndefined (String)
  , "RsaPublicKeyFingerprint" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceIdentity" :: NullOrUndefined.NullOrUndefined (InstanceIdentity)
  }
derive instance newtypeRegisterInstanceRequest :: Newtype RegisterInstanceRequest _
derive instance repGenericRegisterInstanceRequest :: Generic RegisterInstanceRequest _
instance showRegisterInstanceRequest :: Show RegisterInstanceRequest where
  show = genericShow
instance decodeRegisterInstanceRequest :: Decode RegisterInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterInstanceRequest :: Encode RegisterInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterInstanceRequest from required parameters
newRegisterInstanceRequest :: String -> RegisterInstanceRequest
newRegisterInstanceRequest _StackId = RegisterInstanceRequest { "StackId": _StackId, "Hostname": (NullOrUndefined Nothing), "InstanceIdentity": (NullOrUndefined Nothing), "PrivateIp": (NullOrUndefined Nothing), "PublicIp": (NullOrUndefined Nothing), "RsaPublicKey": (NullOrUndefined Nothing), "RsaPublicKeyFingerprint": (NullOrUndefined Nothing) }

-- | Constructs RegisterInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterInstanceRequest' :: String -> ( { "StackId" :: (String) , "Hostname" :: NullOrUndefined.NullOrUndefined (String) , "PublicIp" :: NullOrUndefined.NullOrUndefined (String) , "PrivateIp" :: NullOrUndefined.NullOrUndefined (String) , "RsaPublicKey" :: NullOrUndefined.NullOrUndefined (String) , "RsaPublicKeyFingerprint" :: NullOrUndefined.NullOrUndefined (String) , "InstanceIdentity" :: NullOrUndefined.NullOrUndefined (InstanceIdentity) } -> {"StackId" :: (String) , "Hostname" :: NullOrUndefined.NullOrUndefined (String) , "PublicIp" :: NullOrUndefined.NullOrUndefined (String) , "PrivateIp" :: NullOrUndefined.NullOrUndefined (String) , "RsaPublicKey" :: NullOrUndefined.NullOrUndefined (String) , "RsaPublicKeyFingerprint" :: NullOrUndefined.NullOrUndefined (String) , "InstanceIdentity" :: NullOrUndefined.NullOrUndefined (InstanceIdentity) } ) -> RegisterInstanceRequest
newRegisterInstanceRequest' _StackId customize = (RegisterInstanceRequest <<< customize) { "StackId": _StackId, "Hostname": (NullOrUndefined Nothing), "InstanceIdentity": (NullOrUndefined Nothing), "PrivateIp": (NullOrUndefined Nothing), "PublicIp": (NullOrUndefined Nothing), "RsaPublicKey": (NullOrUndefined Nothing), "RsaPublicKeyFingerprint": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>RegisterInstanceResult</code> request.</p>
newtype RegisterInstanceResult = RegisterInstanceResult 
  { "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeRegisterInstanceResult :: Newtype RegisterInstanceResult _
derive instance repGenericRegisterInstanceResult :: Generic RegisterInstanceResult _
instance showRegisterInstanceResult :: Show RegisterInstanceResult where
  show = genericShow
instance decodeRegisterInstanceResult :: Decode RegisterInstanceResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterInstanceResult :: Encode RegisterInstanceResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterInstanceResult from required parameters
newRegisterInstanceResult :: RegisterInstanceResult
newRegisterInstanceResult  = RegisterInstanceResult { "InstanceId": (NullOrUndefined Nothing) }

-- | Constructs RegisterInstanceResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterInstanceResult' :: ( { "InstanceId" :: NullOrUndefined.NullOrUndefined (String) } -> {"InstanceId" :: NullOrUndefined.NullOrUndefined (String) } ) -> RegisterInstanceResult
newRegisterInstanceResult'  customize = (RegisterInstanceResult <<< customize) { "InstanceId": (NullOrUndefined Nothing) }



newtype RegisterRdsDbInstanceRequest = RegisterRdsDbInstanceRequest 
  { "StackId" :: (String)
  , "RdsDbInstanceArn" :: (String)
  , "DbUser" :: (String)
  , "DbPassword" :: (String)
  }
derive instance newtypeRegisterRdsDbInstanceRequest :: Newtype RegisterRdsDbInstanceRequest _
derive instance repGenericRegisterRdsDbInstanceRequest :: Generic RegisterRdsDbInstanceRequest _
instance showRegisterRdsDbInstanceRequest :: Show RegisterRdsDbInstanceRequest where
  show = genericShow
instance decodeRegisterRdsDbInstanceRequest :: Decode RegisterRdsDbInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterRdsDbInstanceRequest :: Encode RegisterRdsDbInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterRdsDbInstanceRequest from required parameters
newRegisterRdsDbInstanceRequest :: String -> String -> String -> String -> RegisterRdsDbInstanceRequest
newRegisterRdsDbInstanceRequest _DbPassword _DbUser _RdsDbInstanceArn _StackId = RegisterRdsDbInstanceRequest { "DbPassword": _DbPassword, "DbUser": _DbUser, "RdsDbInstanceArn": _RdsDbInstanceArn, "StackId": _StackId }

-- | Constructs RegisterRdsDbInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterRdsDbInstanceRequest' :: String -> String -> String -> String -> ( { "StackId" :: (String) , "RdsDbInstanceArn" :: (String) , "DbUser" :: (String) , "DbPassword" :: (String) } -> {"StackId" :: (String) , "RdsDbInstanceArn" :: (String) , "DbUser" :: (String) , "DbPassword" :: (String) } ) -> RegisterRdsDbInstanceRequest
newRegisterRdsDbInstanceRequest' _DbPassword _DbUser _RdsDbInstanceArn _StackId customize = (RegisterRdsDbInstanceRequest <<< customize) { "DbPassword": _DbPassword, "DbUser": _DbUser, "RdsDbInstanceArn": _RdsDbInstanceArn, "StackId": _StackId }



newtype RegisterVolumeRequest = RegisterVolumeRequest 
  { "Ec2VolumeId" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: (String)
  }
derive instance newtypeRegisterVolumeRequest :: Newtype RegisterVolumeRequest _
derive instance repGenericRegisterVolumeRequest :: Generic RegisterVolumeRequest _
instance showRegisterVolumeRequest :: Show RegisterVolumeRequest where
  show = genericShow
instance decodeRegisterVolumeRequest :: Decode RegisterVolumeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterVolumeRequest :: Encode RegisterVolumeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterVolumeRequest from required parameters
newRegisterVolumeRequest :: String -> RegisterVolumeRequest
newRegisterVolumeRequest _StackId = RegisterVolumeRequest { "StackId": _StackId, "Ec2VolumeId": (NullOrUndefined Nothing) }

-- | Constructs RegisterVolumeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterVolumeRequest' :: String -> ( { "Ec2VolumeId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: (String) } -> {"Ec2VolumeId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: (String) } ) -> RegisterVolumeRequest
newRegisterVolumeRequest' _StackId customize = (RegisterVolumeRequest <<< customize) { "StackId": _StackId, "Ec2VolumeId": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>RegisterVolume</code> request.</p>
newtype RegisterVolumeResult = RegisterVolumeResult 
  { "VolumeId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeRegisterVolumeResult :: Newtype RegisterVolumeResult _
derive instance repGenericRegisterVolumeResult :: Generic RegisterVolumeResult _
instance showRegisterVolumeResult :: Show RegisterVolumeResult where
  show = genericShow
instance decodeRegisterVolumeResult :: Decode RegisterVolumeResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterVolumeResult :: Encode RegisterVolumeResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterVolumeResult from required parameters
newRegisterVolumeResult :: RegisterVolumeResult
newRegisterVolumeResult  = RegisterVolumeResult { "VolumeId": (NullOrUndefined Nothing) }

-- | Constructs RegisterVolumeResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterVolumeResult' :: ( { "VolumeId" :: NullOrUndefined.NullOrUndefined (String) } -> {"VolumeId" :: NullOrUndefined.NullOrUndefined (String) } ) -> RegisterVolumeResult
newRegisterVolumeResult'  customize = (RegisterVolumeResult <<< customize) { "VolumeId": (NullOrUndefined Nothing) }



-- | <p>A registered instance's reported operating system.</p>
newtype ReportedOs = ReportedOs 
  { "Family" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Version" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeReportedOs :: Newtype ReportedOs _
derive instance repGenericReportedOs :: Generic ReportedOs _
instance showReportedOs :: Show ReportedOs where
  show = genericShow
instance decodeReportedOs :: Decode ReportedOs where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReportedOs :: Encode ReportedOs where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ReportedOs from required parameters
newReportedOs :: ReportedOs
newReportedOs  = ReportedOs { "Family": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs ReportedOs's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReportedOs' :: ( { "Family" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (String) } -> {"Family" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (String) } ) -> ReportedOs
newReportedOs'  customize = (ReportedOs <<< customize) { "Family": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



newtype ResourceArn = ResourceArn String
derive instance newtypeResourceArn :: Newtype ResourceArn _
derive instance repGenericResourceArn :: Generic ResourceArn _
instance showResourceArn :: Show ResourceArn where
  show = genericShow
instance decodeResourceArn :: Decode ResourceArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceArn :: Encode ResourceArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Indicates that a resource was not found.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where
  show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype RootDeviceType = RootDeviceType String
derive instance newtypeRootDeviceType :: Newtype RootDeviceType _
derive instance repGenericRootDeviceType :: Generic RootDeviceType _
instance showRootDeviceType :: Show RootDeviceType where
  show = genericShow
instance decodeRootDeviceType :: Decode RootDeviceType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRootDeviceType :: Encode RootDeviceType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes a user's SSH information.</p>
newtype SelfUserProfile = SelfUserProfile 
  { "IamUserArn" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "SshUsername" :: NullOrUndefined.NullOrUndefined (String)
  , "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeSelfUserProfile :: Newtype SelfUserProfile _
derive instance repGenericSelfUserProfile :: Generic SelfUserProfile _
instance showSelfUserProfile :: Show SelfUserProfile where
  show = genericShow
instance decodeSelfUserProfile :: Decode SelfUserProfile where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSelfUserProfile :: Encode SelfUserProfile where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SelfUserProfile from required parameters
newSelfUserProfile :: SelfUserProfile
newSelfUserProfile  = SelfUserProfile { "IamUserArn": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "SshPublicKey": (NullOrUndefined Nothing), "SshUsername": (NullOrUndefined Nothing) }

-- | Constructs SelfUserProfile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSelfUserProfile' :: ( { "IamUserArn" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "SshUsername" :: NullOrUndefined.NullOrUndefined (String) , "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String) } -> {"IamUserArn" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "SshUsername" :: NullOrUndefined.NullOrUndefined (String) , "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String) } ) -> SelfUserProfile
newSelfUserProfile'  customize = (SelfUserProfile <<< customize) { "IamUserArn": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "SshPublicKey": (NullOrUndefined Nothing), "SshUsername": (NullOrUndefined Nothing) }



-- | <p>Describes an AWS OpsWorks Stacks service error.</p>
newtype ServiceError = ServiceError 
  { "ServiceErrorId" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  , "Type" :: NullOrUndefined.NullOrUndefined (String)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime)
  }
derive instance newtypeServiceError :: Newtype ServiceError _
derive instance repGenericServiceError :: Generic ServiceError _
instance showServiceError :: Show ServiceError where
  show = genericShow
instance decodeServiceError :: Decode ServiceError where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceError :: Encode ServiceError where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceError from required parameters
newServiceError :: ServiceError
newServiceError  = ServiceError { "CreatedAt": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "ServiceErrorId": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs ServiceError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceError' :: ( { "ServiceErrorId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "Type" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) } -> {"ServiceErrorId" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "Type" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) } ) -> ServiceError
newServiceError'  customize = (ServiceError <<< customize) { "CreatedAt": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "ServiceErrorId": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype ServiceErrors = ServiceErrors (Array ServiceError)
derive instance newtypeServiceErrors :: Newtype ServiceErrors _
derive instance repGenericServiceErrors :: Generic ServiceErrors _
instance showServiceErrors :: Show ServiceErrors where
  show = genericShow
instance decodeServiceErrors :: Decode ServiceErrors where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceErrors :: Encode ServiceErrors where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SetLoadBasedAutoScalingRequest = SetLoadBasedAutoScalingRequest 
  { "LayerId" :: (String)
  , "Enable" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "UpScaling" :: NullOrUndefined.NullOrUndefined (AutoScalingThresholds)
  , "DownScaling" :: NullOrUndefined.NullOrUndefined (AutoScalingThresholds)
  }
derive instance newtypeSetLoadBasedAutoScalingRequest :: Newtype SetLoadBasedAutoScalingRequest _
derive instance repGenericSetLoadBasedAutoScalingRequest :: Generic SetLoadBasedAutoScalingRequest _
instance showSetLoadBasedAutoScalingRequest :: Show SetLoadBasedAutoScalingRequest where
  show = genericShow
instance decodeSetLoadBasedAutoScalingRequest :: Decode SetLoadBasedAutoScalingRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetLoadBasedAutoScalingRequest :: Encode SetLoadBasedAutoScalingRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetLoadBasedAutoScalingRequest from required parameters
newSetLoadBasedAutoScalingRequest :: String -> SetLoadBasedAutoScalingRequest
newSetLoadBasedAutoScalingRequest _LayerId = SetLoadBasedAutoScalingRequest { "LayerId": _LayerId, "DownScaling": (NullOrUndefined Nothing), "Enable": (NullOrUndefined Nothing), "UpScaling": (NullOrUndefined Nothing) }

-- | Constructs SetLoadBasedAutoScalingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetLoadBasedAutoScalingRequest' :: String -> ( { "LayerId" :: (String) , "Enable" :: NullOrUndefined.NullOrUndefined (Boolean) , "UpScaling" :: NullOrUndefined.NullOrUndefined (AutoScalingThresholds) , "DownScaling" :: NullOrUndefined.NullOrUndefined (AutoScalingThresholds) } -> {"LayerId" :: (String) , "Enable" :: NullOrUndefined.NullOrUndefined (Boolean) , "UpScaling" :: NullOrUndefined.NullOrUndefined (AutoScalingThresholds) , "DownScaling" :: NullOrUndefined.NullOrUndefined (AutoScalingThresholds) } ) -> SetLoadBasedAutoScalingRequest
newSetLoadBasedAutoScalingRequest' _LayerId customize = (SetLoadBasedAutoScalingRequest <<< customize) { "LayerId": _LayerId, "DownScaling": (NullOrUndefined Nothing), "Enable": (NullOrUndefined Nothing), "UpScaling": (NullOrUndefined Nothing) }



newtype SetPermissionRequest = SetPermissionRequest 
  { "StackId" :: (String)
  , "IamUserArn" :: (String)
  , "AllowSsh" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AllowSudo" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "Level" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeSetPermissionRequest :: Newtype SetPermissionRequest _
derive instance repGenericSetPermissionRequest :: Generic SetPermissionRequest _
instance showSetPermissionRequest :: Show SetPermissionRequest where
  show = genericShow
instance decodeSetPermissionRequest :: Decode SetPermissionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetPermissionRequest :: Encode SetPermissionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetPermissionRequest from required parameters
newSetPermissionRequest :: String -> String -> SetPermissionRequest
newSetPermissionRequest _IamUserArn _StackId = SetPermissionRequest { "IamUserArn": _IamUserArn, "StackId": _StackId, "AllowSsh": (NullOrUndefined Nothing), "AllowSudo": (NullOrUndefined Nothing), "Level": (NullOrUndefined Nothing) }

-- | Constructs SetPermissionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetPermissionRequest' :: String -> String -> ( { "StackId" :: (String) , "IamUserArn" :: (String) , "AllowSsh" :: NullOrUndefined.NullOrUndefined (Boolean) , "AllowSudo" :: NullOrUndefined.NullOrUndefined (Boolean) , "Level" :: NullOrUndefined.NullOrUndefined (String) } -> {"StackId" :: (String) , "IamUserArn" :: (String) , "AllowSsh" :: NullOrUndefined.NullOrUndefined (Boolean) , "AllowSudo" :: NullOrUndefined.NullOrUndefined (Boolean) , "Level" :: NullOrUndefined.NullOrUndefined (String) } ) -> SetPermissionRequest
newSetPermissionRequest' _IamUserArn _StackId customize = (SetPermissionRequest <<< customize) { "IamUserArn": _IamUserArn, "StackId": _StackId, "AllowSsh": (NullOrUndefined Nothing), "AllowSudo": (NullOrUndefined Nothing), "Level": (NullOrUndefined Nothing) }



newtype SetTimeBasedAutoScalingRequest = SetTimeBasedAutoScalingRequest 
  { "InstanceId" :: (String)
  , "AutoScalingSchedule" :: NullOrUndefined.NullOrUndefined (WeeklyAutoScalingSchedule)
  }
derive instance newtypeSetTimeBasedAutoScalingRequest :: Newtype SetTimeBasedAutoScalingRequest _
derive instance repGenericSetTimeBasedAutoScalingRequest :: Generic SetTimeBasedAutoScalingRequest _
instance showSetTimeBasedAutoScalingRequest :: Show SetTimeBasedAutoScalingRequest where
  show = genericShow
instance decodeSetTimeBasedAutoScalingRequest :: Decode SetTimeBasedAutoScalingRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetTimeBasedAutoScalingRequest :: Encode SetTimeBasedAutoScalingRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetTimeBasedAutoScalingRequest from required parameters
newSetTimeBasedAutoScalingRequest :: String -> SetTimeBasedAutoScalingRequest
newSetTimeBasedAutoScalingRequest _InstanceId = SetTimeBasedAutoScalingRequest { "InstanceId": _InstanceId, "AutoScalingSchedule": (NullOrUndefined Nothing) }

-- | Constructs SetTimeBasedAutoScalingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetTimeBasedAutoScalingRequest' :: String -> ( { "InstanceId" :: (String) , "AutoScalingSchedule" :: NullOrUndefined.NullOrUndefined (WeeklyAutoScalingSchedule) } -> {"InstanceId" :: (String) , "AutoScalingSchedule" :: NullOrUndefined.NullOrUndefined (WeeklyAutoScalingSchedule) } ) -> SetTimeBasedAutoScalingRequest
newSetTimeBasedAutoScalingRequest' _InstanceId customize = (SetTimeBasedAutoScalingRequest <<< customize) { "InstanceId": _InstanceId, "AutoScalingSchedule": (NullOrUndefined Nothing) }



-- | <p>The Shutdown event configuration.</p>
newtype ShutdownEventConfiguration = ShutdownEventConfiguration 
  { "ExecutionTimeout" :: NullOrUndefined.NullOrUndefined (Int)
  , "DelayUntilElbConnectionsDrained" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeShutdownEventConfiguration :: Newtype ShutdownEventConfiguration _
derive instance repGenericShutdownEventConfiguration :: Generic ShutdownEventConfiguration _
instance showShutdownEventConfiguration :: Show ShutdownEventConfiguration where
  show = genericShow
instance decodeShutdownEventConfiguration :: Decode ShutdownEventConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeShutdownEventConfiguration :: Encode ShutdownEventConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ShutdownEventConfiguration from required parameters
newShutdownEventConfiguration :: ShutdownEventConfiguration
newShutdownEventConfiguration  = ShutdownEventConfiguration { "DelayUntilElbConnectionsDrained": (NullOrUndefined Nothing), "ExecutionTimeout": (NullOrUndefined Nothing) }

-- | Constructs ShutdownEventConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newShutdownEventConfiguration' :: ( { "ExecutionTimeout" :: NullOrUndefined.NullOrUndefined (Int) , "DelayUntilElbConnectionsDrained" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"ExecutionTimeout" :: NullOrUndefined.NullOrUndefined (Int) , "DelayUntilElbConnectionsDrained" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> ShutdownEventConfiguration
newShutdownEventConfiguration'  customize = (ShutdownEventConfiguration <<< customize) { "DelayUntilElbConnectionsDrained": (NullOrUndefined Nothing), "ExecutionTimeout": (NullOrUndefined Nothing) }



-- | <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a> or <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Custom Recipes and Cookbooks</a>.</p>
newtype Source = Source 
  { "Type" :: NullOrUndefined.NullOrUndefined (SourceType)
  , "Url" :: NullOrUndefined.NullOrUndefined (String)
  , "Username" :: NullOrUndefined.NullOrUndefined (String)
  , "Password" :: NullOrUndefined.NullOrUndefined (String)
  , "SshKey" :: NullOrUndefined.NullOrUndefined (String)
  , "Revision" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeSource :: Newtype Source _
derive instance repGenericSource :: Generic Source _
instance showSource :: Show Source where
  show = genericShow
instance decodeSource :: Decode Source where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSource :: Encode Source where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Source from required parameters
newSource :: Source
newSource  = Source { "Password": (NullOrUndefined Nothing), "Revision": (NullOrUndefined Nothing), "SshKey": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing), "Username": (NullOrUndefined Nothing) }

-- | Constructs Source's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSource' :: ( { "Type" :: NullOrUndefined.NullOrUndefined (SourceType) , "Url" :: NullOrUndefined.NullOrUndefined (String) , "Username" :: NullOrUndefined.NullOrUndefined (String) , "Password" :: NullOrUndefined.NullOrUndefined (String) , "SshKey" :: NullOrUndefined.NullOrUndefined (String) , "Revision" :: NullOrUndefined.NullOrUndefined (String) } -> {"Type" :: NullOrUndefined.NullOrUndefined (SourceType) , "Url" :: NullOrUndefined.NullOrUndefined (String) , "Username" :: NullOrUndefined.NullOrUndefined (String) , "Password" :: NullOrUndefined.NullOrUndefined (String) , "SshKey" :: NullOrUndefined.NullOrUndefined (String) , "Revision" :: NullOrUndefined.NullOrUndefined (String) } ) -> Source
newSource'  customize = (Source <<< customize) { "Password": (NullOrUndefined Nothing), "Revision": (NullOrUndefined Nothing), "SshKey": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "Url": (NullOrUndefined Nothing), "Username": (NullOrUndefined Nothing) }



newtype SourceType = SourceType String
derive instance newtypeSourceType :: Newtype SourceType _
derive instance repGenericSourceType :: Generic SourceType _
instance showSourceType :: Show SourceType where
  show = genericShow
instance decodeSourceType :: Decode SourceType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSourceType :: Encode SourceType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes an app's SSL configuration.</p>
newtype SslConfiguration = SslConfiguration 
  { "Certificate" :: (String)
  , "PrivateKey" :: (String)
  , "Chain" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeSslConfiguration :: Newtype SslConfiguration _
derive instance repGenericSslConfiguration :: Generic SslConfiguration _
instance showSslConfiguration :: Show SslConfiguration where
  show = genericShow
instance decodeSslConfiguration :: Decode SslConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSslConfiguration :: Encode SslConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SslConfiguration from required parameters
newSslConfiguration :: String -> String -> SslConfiguration
newSslConfiguration _Certificate _PrivateKey = SslConfiguration { "Certificate": _Certificate, "PrivateKey": _PrivateKey, "Chain": (NullOrUndefined Nothing) }

-- | Constructs SslConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSslConfiguration' :: String -> String -> ( { "Certificate" :: (String) , "PrivateKey" :: (String) , "Chain" :: NullOrUndefined.NullOrUndefined (String) } -> {"Certificate" :: (String) , "PrivateKey" :: (String) , "Chain" :: NullOrUndefined.NullOrUndefined (String) } ) -> SslConfiguration
newSslConfiguration' _Certificate _PrivateKey customize = (SslConfiguration <<< customize) { "Certificate": _Certificate, "PrivateKey": _PrivateKey, "Chain": (NullOrUndefined Nothing) }



-- | <p>Describes a stack.</p>
newtype Stack = Stack 
  { "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "Region" :: NullOrUndefined.NullOrUndefined (String)
  , "VpcId" :: NullOrUndefined.NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (StackAttributes)
  , "ServiceRoleArn" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultOs" :: NullOrUndefined.NullOrUndefined (String)
  , "HostnameTheme" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultAvailabilityZone" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultSubnetId" :: NullOrUndefined.NullOrUndefined (String)
  , "CustomJson" :: NullOrUndefined.NullOrUndefined (String)
  , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager)
  , "ChefConfiguration" :: NullOrUndefined.NullOrUndefined (ChefConfiguration)
  , "UseCustomCookbooks" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "UseOpsworksSecurityGroups" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "CustomCookbooksSource" :: NullOrUndefined.NullOrUndefined (Source)
  , "DefaultSshKeyName" :: NullOrUndefined.NullOrUndefined (String)
  , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "DefaultRootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType)
  , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeStack :: Newtype Stack _
derive instance repGenericStack :: Generic Stack _
instance showStack :: Show Stack where
  show = genericShow
instance decodeStack :: Decode Stack where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStack :: Encode Stack where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Stack from required parameters
newStack :: Stack
newStack  = Stack { "AgentVersion": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "ChefConfiguration": (NullOrUndefined Nothing), "ConfigurationManager": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CustomCookbooksSource": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "DefaultAvailabilityZone": (NullOrUndefined Nothing), "DefaultInstanceProfileArn": (NullOrUndefined Nothing), "DefaultOs": (NullOrUndefined Nothing), "DefaultRootDeviceType": (NullOrUndefined Nothing), "DefaultSshKeyName": (NullOrUndefined Nothing), "DefaultSubnetId": (NullOrUndefined Nothing), "HostnameTheme": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing), "ServiceRoleArn": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "UseCustomCookbooks": (NullOrUndefined Nothing), "UseOpsworksSecurityGroups": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }

-- | Constructs Stack's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStack' :: ( { "StackId" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Arn" :: NullOrUndefined.NullOrUndefined (String) , "Region" :: NullOrUndefined.NullOrUndefined (String) , "VpcId" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (StackAttributes) , "ServiceRoleArn" :: NullOrUndefined.NullOrUndefined (String) , "DefaultInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "DefaultOs" :: NullOrUndefined.NullOrUndefined (String) , "HostnameTheme" :: NullOrUndefined.NullOrUndefined (String) , "DefaultAvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "DefaultSubnetId" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager) , "ChefConfiguration" :: NullOrUndefined.NullOrUndefined (ChefConfiguration) , "UseCustomCookbooks" :: NullOrUndefined.NullOrUndefined (Boolean) , "UseOpsworksSecurityGroups" :: NullOrUndefined.NullOrUndefined (Boolean) , "CustomCookbooksSource" :: NullOrUndefined.NullOrUndefined (Source) , "DefaultSshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "DefaultRootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType) , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) } -> {"StackId" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Arn" :: NullOrUndefined.NullOrUndefined (String) , "Region" :: NullOrUndefined.NullOrUndefined (String) , "VpcId" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (StackAttributes) , "ServiceRoleArn" :: NullOrUndefined.NullOrUndefined (String) , "DefaultInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "DefaultOs" :: NullOrUndefined.NullOrUndefined (String) , "HostnameTheme" :: NullOrUndefined.NullOrUndefined (String) , "DefaultAvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "DefaultSubnetId" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager) , "ChefConfiguration" :: NullOrUndefined.NullOrUndefined (ChefConfiguration) , "UseCustomCookbooks" :: NullOrUndefined.NullOrUndefined (Boolean) , "UseOpsworksSecurityGroups" :: NullOrUndefined.NullOrUndefined (Boolean) , "CustomCookbooksSource" :: NullOrUndefined.NullOrUndefined (Source) , "DefaultSshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "CreatedAt" :: NullOrUndefined.NullOrUndefined (DateTime) , "DefaultRootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType) , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) } ) -> Stack
newStack'  customize = (Stack <<< customize) { "AgentVersion": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "ChefConfiguration": (NullOrUndefined Nothing), "ConfigurationManager": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "CustomCookbooksSource": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "DefaultAvailabilityZone": (NullOrUndefined Nothing), "DefaultInstanceProfileArn": (NullOrUndefined Nothing), "DefaultOs": (NullOrUndefined Nothing), "DefaultRootDeviceType": (NullOrUndefined Nothing), "DefaultSshKeyName": (NullOrUndefined Nothing), "DefaultSubnetId": (NullOrUndefined Nothing), "HostnameTheme": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing), "ServiceRoleArn": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing), "UseCustomCookbooks": (NullOrUndefined Nothing), "UseOpsworksSecurityGroups": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }



newtype StackAttributes = StackAttributes (StrMap.StrMap String)
derive instance newtypeStackAttributes :: Newtype StackAttributes _
derive instance repGenericStackAttributes :: Generic StackAttributes _
instance showStackAttributes :: Show StackAttributes where
  show = genericShow
instance decodeStackAttributes :: Decode StackAttributes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStackAttributes :: Encode StackAttributes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StackAttributesKeys = StackAttributesKeys String
derive instance newtypeStackAttributesKeys :: Newtype StackAttributesKeys _
derive instance repGenericStackAttributesKeys :: Generic StackAttributesKeys _
instance showStackAttributesKeys :: Show StackAttributesKeys where
  show = genericShow
instance decodeStackAttributesKeys :: Decode StackAttributesKeys where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStackAttributesKeys :: Encode StackAttributesKeys where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes the configuration manager.</p>
newtype StackConfigurationManager = StackConfigurationManager 
  { "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Version" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeStackConfigurationManager :: Newtype StackConfigurationManager _
derive instance repGenericStackConfigurationManager :: Generic StackConfigurationManager _
instance showStackConfigurationManager :: Show StackConfigurationManager where
  show = genericShow
instance decodeStackConfigurationManager :: Decode StackConfigurationManager where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStackConfigurationManager :: Encode StackConfigurationManager where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StackConfigurationManager from required parameters
newStackConfigurationManager :: StackConfigurationManager
newStackConfigurationManager  = StackConfigurationManager { "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs StackConfigurationManager's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStackConfigurationManager' :: ( { "Name" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (String) } -> {"Name" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (String) } ) -> StackConfigurationManager
newStackConfigurationManager'  customize = (StackConfigurationManager <<< customize) { "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



-- | <p>Summarizes the number of layers, instances, and apps in a stack.</p>
newtype StackSummary = StackSummary 
  { "StackId" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Arn" :: NullOrUndefined.NullOrUndefined (String)
  , "LayersCount" :: NullOrUndefined.NullOrUndefined (Int)
  , "AppsCount" :: NullOrUndefined.NullOrUndefined (Int)
  , "InstancesCount" :: NullOrUndefined.NullOrUndefined (InstancesCount)
  }
derive instance newtypeStackSummary :: Newtype StackSummary _
derive instance repGenericStackSummary :: Generic StackSummary _
instance showStackSummary :: Show StackSummary where
  show = genericShow
instance decodeStackSummary :: Decode StackSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStackSummary :: Encode StackSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StackSummary from required parameters
newStackSummary :: StackSummary
newStackSummary  = StackSummary { "AppsCount": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "InstancesCount": (NullOrUndefined Nothing), "LayersCount": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs StackSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStackSummary' :: ( { "StackId" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Arn" :: NullOrUndefined.NullOrUndefined (String) , "LayersCount" :: NullOrUndefined.NullOrUndefined (Int) , "AppsCount" :: NullOrUndefined.NullOrUndefined (Int) , "InstancesCount" :: NullOrUndefined.NullOrUndefined (InstancesCount) } -> {"StackId" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Arn" :: NullOrUndefined.NullOrUndefined (String) , "LayersCount" :: NullOrUndefined.NullOrUndefined (Int) , "AppsCount" :: NullOrUndefined.NullOrUndefined (Int) , "InstancesCount" :: NullOrUndefined.NullOrUndefined (InstancesCount) } ) -> StackSummary
newStackSummary'  customize = (StackSummary <<< customize) { "AppsCount": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "InstancesCount": (NullOrUndefined Nothing), "LayersCount": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



newtype Stacks = Stacks (Array Stack)
derive instance newtypeStacks :: Newtype Stacks _
derive instance repGenericStacks :: Generic Stacks _
instance showStacks :: Show Stacks where
  show = genericShow
instance decodeStacks :: Decode Stacks where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStacks :: Encode Stacks where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StartInstanceRequest = StartInstanceRequest 
  { "InstanceId" :: (String)
  }
derive instance newtypeStartInstanceRequest :: Newtype StartInstanceRequest _
derive instance repGenericStartInstanceRequest :: Generic StartInstanceRequest _
instance showStartInstanceRequest :: Show StartInstanceRequest where
  show = genericShow
instance decodeStartInstanceRequest :: Decode StartInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartInstanceRequest :: Encode StartInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showStartStackRequest :: Show StartStackRequest where
  show = genericShow
instance decodeStartStackRequest :: Decode StartStackRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartStackRequest :: Encode StartStackRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartStackRequest from required parameters
newStartStackRequest :: String -> StartStackRequest
newStartStackRequest _StackId = StartStackRequest { "StackId": _StackId }

-- | Constructs StartStackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartStackRequest' :: String -> ( { "StackId" :: (String) } -> {"StackId" :: (String) } ) -> StartStackRequest
newStartStackRequest' _StackId customize = (StartStackRequest <<< customize) { "StackId": _StackId }



newtype StopInstanceRequest = StopInstanceRequest 
  { "InstanceId" :: (String)
  , "Force" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeStopInstanceRequest :: Newtype StopInstanceRequest _
derive instance repGenericStopInstanceRequest :: Generic StopInstanceRequest _
instance showStopInstanceRequest :: Show StopInstanceRequest where
  show = genericShow
instance decodeStopInstanceRequest :: Decode StopInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStopInstanceRequest :: Encode StopInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StopInstanceRequest from required parameters
newStopInstanceRequest :: String -> StopInstanceRequest
newStopInstanceRequest _InstanceId = StopInstanceRequest { "InstanceId": _InstanceId, "Force": (NullOrUndefined Nothing) }

-- | Constructs StopInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopInstanceRequest' :: String -> ( { "InstanceId" :: (String) , "Force" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"InstanceId" :: (String) , "Force" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> StopInstanceRequest
newStopInstanceRequest' _InstanceId customize = (StopInstanceRequest <<< customize) { "InstanceId": _InstanceId, "Force": (NullOrUndefined Nothing) }



newtype StopStackRequest = StopStackRequest 
  { "StackId" :: (String)
  }
derive instance newtypeStopStackRequest :: Newtype StopStackRequest _
derive instance repGenericStopStackRequest :: Generic StopStackRequest _
instance showStopStackRequest :: Show StopStackRequest where
  show = genericShow
instance decodeStopStackRequest :: Decode StopStackRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStopStackRequest :: Encode StopStackRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showStrings :: Show Strings where
  show = genericShow
instance decodeStrings :: Decode Strings where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStrings :: Encode Strings where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Switch = Switch String
derive instance newtypeSwitch :: Newtype Switch _
derive instance repGenericSwitch :: Generic Switch _
instance showSwitch :: Show Switch where
  show = genericShow
instance decodeSwitch :: Decode Switch where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSwitch :: Encode Switch where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where
  show = genericShow
instance decodeTagKey :: Decode TagKey where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagKey :: Encode TagKey where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TagKeys = TagKeys (Array TagKey)
derive instance newtypeTagKeys :: Newtype TagKeys _
derive instance repGenericTagKeys :: Generic TagKeys _
instance showTagKeys :: Show TagKeys where
  show = genericShow
instance decodeTagKeys :: Decode TagKeys where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagKeys :: Encode TagKeys where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TagResourceRequest = TagResourceRequest 
  { "ResourceArn" :: (ResourceArn)
  , "Tags" :: (Tags)
  }
derive instance newtypeTagResourceRequest :: Newtype TagResourceRequest _
derive instance repGenericTagResourceRequest :: Generic TagResourceRequest _
instance showTagResourceRequest :: Show TagResourceRequest where
  show = genericShow
instance decodeTagResourceRequest :: Decode TagResourceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagResourceRequest :: Encode TagResourceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showTagValue :: Show TagValue where
  show = genericShow
instance decodeTagValue :: Decode TagValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagValue :: Encode TagValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Tags = Tags (StrMap.StrMap TagValue)
derive instance newtypeTags :: Newtype Tags _
derive instance repGenericTags :: Generic Tags _
instance showTags :: Show Tags where
  show = genericShow
instance decodeTags :: Decode Tags where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTags :: Encode Tags where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains the data needed by RDP clients such as the Microsoft Remote Desktop Connection to log in to the instance.</p>
newtype TemporaryCredential = TemporaryCredential 
  { "Username" :: NullOrUndefined.NullOrUndefined (String)
  , "Password" :: NullOrUndefined.NullOrUndefined (String)
  , "ValidForInMinutes" :: NullOrUndefined.NullOrUndefined (Int)
  , "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeTemporaryCredential :: Newtype TemporaryCredential _
derive instance repGenericTemporaryCredential :: Generic TemporaryCredential _
instance showTemporaryCredential :: Show TemporaryCredential where
  show = genericShow
instance decodeTemporaryCredential :: Decode TemporaryCredential where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTemporaryCredential :: Encode TemporaryCredential where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TemporaryCredential from required parameters
newTemporaryCredential :: TemporaryCredential
newTemporaryCredential  = TemporaryCredential { "InstanceId": (NullOrUndefined Nothing), "Password": (NullOrUndefined Nothing), "Username": (NullOrUndefined Nothing), "ValidForInMinutes": (NullOrUndefined Nothing) }

-- | Constructs TemporaryCredential's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTemporaryCredential' :: ( { "Username" :: NullOrUndefined.NullOrUndefined (String) , "Password" :: NullOrUndefined.NullOrUndefined (String) , "ValidForInMinutes" :: NullOrUndefined.NullOrUndefined (Int) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) } -> {"Username" :: NullOrUndefined.NullOrUndefined (String) , "Password" :: NullOrUndefined.NullOrUndefined (String) , "ValidForInMinutes" :: NullOrUndefined.NullOrUndefined (Int) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) } ) -> TemporaryCredential
newTemporaryCredential'  customize = (TemporaryCredential <<< customize) { "InstanceId": (NullOrUndefined Nothing), "Password": (NullOrUndefined Nothing), "Username": (NullOrUndefined Nothing), "ValidForInMinutes": (NullOrUndefined Nothing) }



-- | <p>Describes an instance's time-based auto scaling configuration.</p>
newtype TimeBasedAutoScalingConfiguration = TimeBasedAutoScalingConfiguration 
  { "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  , "AutoScalingSchedule" :: NullOrUndefined.NullOrUndefined (WeeklyAutoScalingSchedule)
  }
derive instance newtypeTimeBasedAutoScalingConfiguration :: Newtype TimeBasedAutoScalingConfiguration _
derive instance repGenericTimeBasedAutoScalingConfiguration :: Generic TimeBasedAutoScalingConfiguration _
instance showTimeBasedAutoScalingConfiguration :: Show TimeBasedAutoScalingConfiguration where
  show = genericShow
instance decodeTimeBasedAutoScalingConfiguration :: Decode TimeBasedAutoScalingConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTimeBasedAutoScalingConfiguration :: Encode TimeBasedAutoScalingConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TimeBasedAutoScalingConfiguration from required parameters
newTimeBasedAutoScalingConfiguration :: TimeBasedAutoScalingConfiguration
newTimeBasedAutoScalingConfiguration  = TimeBasedAutoScalingConfiguration { "AutoScalingSchedule": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing) }

-- | Constructs TimeBasedAutoScalingConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimeBasedAutoScalingConfiguration' :: ( { "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "AutoScalingSchedule" :: NullOrUndefined.NullOrUndefined (WeeklyAutoScalingSchedule) } -> {"InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "AutoScalingSchedule" :: NullOrUndefined.NullOrUndefined (WeeklyAutoScalingSchedule) } ) -> TimeBasedAutoScalingConfiguration
newTimeBasedAutoScalingConfiguration'  customize = (TimeBasedAutoScalingConfiguration <<< customize) { "AutoScalingSchedule": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing) }



newtype TimeBasedAutoScalingConfigurations = TimeBasedAutoScalingConfigurations (Array TimeBasedAutoScalingConfiguration)
derive instance newtypeTimeBasedAutoScalingConfigurations :: Newtype TimeBasedAutoScalingConfigurations _
derive instance repGenericTimeBasedAutoScalingConfigurations :: Generic TimeBasedAutoScalingConfigurations _
instance showTimeBasedAutoScalingConfigurations :: Show TimeBasedAutoScalingConfigurations where
  show = genericShow
instance decodeTimeBasedAutoScalingConfigurations :: Decode TimeBasedAutoScalingConfigurations where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTimeBasedAutoScalingConfigurations :: Encode TimeBasedAutoScalingConfigurations where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UnassignInstanceRequest = UnassignInstanceRequest 
  { "InstanceId" :: (String)
  }
derive instance newtypeUnassignInstanceRequest :: Newtype UnassignInstanceRequest _
derive instance repGenericUnassignInstanceRequest :: Generic UnassignInstanceRequest _
instance showUnassignInstanceRequest :: Show UnassignInstanceRequest where
  show = genericShow
instance decodeUnassignInstanceRequest :: Decode UnassignInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnassignInstanceRequest :: Encode UnassignInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showUnassignVolumeRequest :: Show UnassignVolumeRequest where
  show = genericShow
instance decodeUnassignVolumeRequest :: Decode UnassignVolumeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnassignVolumeRequest :: Encode UnassignVolumeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showUntagResourceRequest :: Show UntagResourceRequest where
  show = genericShow
instance decodeUntagResourceRequest :: Decode UntagResourceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUntagResourceRequest :: Encode UntagResourceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UntagResourceRequest from required parameters
newUntagResourceRequest :: ResourceArn -> TagKeys -> UntagResourceRequest
newUntagResourceRequest _ResourceArn _TagKeys = UntagResourceRequest { "ResourceArn": _ResourceArn, "TagKeys": _TagKeys }

-- | Constructs UntagResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagResourceRequest' :: ResourceArn -> TagKeys -> ( { "ResourceArn" :: (ResourceArn) , "TagKeys" :: (TagKeys) } -> {"ResourceArn" :: (ResourceArn) , "TagKeys" :: (TagKeys) } ) -> UntagResourceRequest
newUntagResourceRequest' _ResourceArn _TagKeys customize = (UntagResourceRequest <<< customize) { "ResourceArn": _ResourceArn, "TagKeys": _TagKeys }



newtype UpdateAppRequest = UpdateAppRequest 
  { "AppId" :: (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "DataSources" :: NullOrUndefined.NullOrUndefined (DataSources)
  , "Type" :: NullOrUndefined.NullOrUndefined (AppType)
  , "AppSource" :: NullOrUndefined.NullOrUndefined (Source)
  , "Domains" :: NullOrUndefined.NullOrUndefined (Strings)
  , "EnableSsl" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "SslConfiguration" :: NullOrUndefined.NullOrUndefined (SslConfiguration)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (AppAttributes)
  , "Environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables)
  }
derive instance newtypeUpdateAppRequest :: Newtype UpdateAppRequest _
derive instance repGenericUpdateAppRequest :: Generic UpdateAppRequest _
instance showUpdateAppRequest :: Show UpdateAppRequest where
  show = genericShow
instance decodeUpdateAppRequest :: Decode UpdateAppRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateAppRequest :: Encode UpdateAppRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateAppRequest from required parameters
newUpdateAppRequest :: String -> UpdateAppRequest
newUpdateAppRequest _AppId = UpdateAppRequest { "AppId": _AppId, "AppSource": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "DataSources": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Domains": (NullOrUndefined Nothing), "EnableSsl": (NullOrUndefined Nothing), "Environment": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "SslConfiguration": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs UpdateAppRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAppRequest' :: String -> ( { "AppId" :: (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "DataSources" :: NullOrUndefined.NullOrUndefined (DataSources) , "Type" :: NullOrUndefined.NullOrUndefined (AppType) , "AppSource" :: NullOrUndefined.NullOrUndefined (Source) , "Domains" :: NullOrUndefined.NullOrUndefined (Strings) , "EnableSsl" :: NullOrUndefined.NullOrUndefined (Boolean) , "SslConfiguration" :: NullOrUndefined.NullOrUndefined (SslConfiguration) , "Attributes" :: NullOrUndefined.NullOrUndefined (AppAttributes) , "Environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables) } -> {"AppId" :: (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "DataSources" :: NullOrUndefined.NullOrUndefined (DataSources) , "Type" :: NullOrUndefined.NullOrUndefined (AppType) , "AppSource" :: NullOrUndefined.NullOrUndefined (Source) , "Domains" :: NullOrUndefined.NullOrUndefined (Strings) , "EnableSsl" :: NullOrUndefined.NullOrUndefined (Boolean) , "SslConfiguration" :: NullOrUndefined.NullOrUndefined (SslConfiguration) , "Attributes" :: NullOrUndefined.NullOrUndefined (AppAttributes) , "Environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables) } ) -> UpdateAppRequest
newUpdateAppRequest' _AppId customize = (UpdateAppRequest <<< customize) { "AppId": _AppId, "AppSource": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "DataSources": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Domains": (NullOrUndefined Nothing), "EnableSsl": (NullOrUndefined Nothing), "Environment": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "SslConfiguration": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype UpdateElasticIpRequest = UpdateElasticIpRequest 
  { "ElasticIp" :: (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUpdateElasticIpRequest :: Newtype UpdateElasticIpRequest _
derive instance repGenericUpdateElasticIpRequest :: Generic UpdateElasticIpRequest _
instance showUpdateElasticIpRequest :: Show UpdateElasticIpRequest where
  show = genericShow
instance decodeUpdateElasticIpRequest :: Decode UpdateElasticIpRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateElasticIpRequest :: Encode UpdateElasticIpRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateElasticIpRequest from required parameters
newUpdateElasticIpRequest :: String -> UpdateElasticIpRequest
newUpdateElasticIpRequest _ElasticIp = UpdateElasticIpRequest { "ElasticIp": _ElasticIp, "Name": (NullOrUndefined Nothing) }

-- | Constructs UpdateElasticIpRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateElasticIpRequest' :: String -> ( { "ElasticIp" :: (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) } -> {"ElasticIp" :: (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) } ) -> UpdateElasticIpRequest
newUpdateElasticIpRequest' _ElasticIp customize = (UpdateElasticIpRequest <<< customize) { "ElasticIp": _ElasticIp, "Name": (NullOrUndefined Nothing) }



newtype UpdateInstanceRequest = UpdateInstanceRequest 
  { "InstanceId" :: (String)
  , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings)
  , "InstanceType" :: NullOrUndefined.NullOrUndefined (String)
  , "AutoScalingType" :: NullOrUndefined.NullOrUndefined (AutoScalingType)
  , "Hostname" :: NullOrUndefined.NullOrUndefined (String)
  , "Os" :: NullOrUndefined.NullOrUndefined (String)
  , "AmiId" :: NullOrUndefined.NullOrUndefined (String)
  , "SshKeyName" :: NullOrUndefined.NullOrUndefined (String)
  , "Architecture" :: NullOrUndefined.NullOrUndefined (Architecture)
  , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUpdateInstanceRequest :: Newtype UpdateInstanceRequest _
derive instance repGenericUpdateInstanceRequest :: Generic UpdateInstanceRequest _
instance showUpdateInstanceRequest :: Show UpdateInstanceRequest where
  show = genericShow
instance decodeUpdateInstanceRequest :: Decode UpdateInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateInstanceRequest :: Encode UpdateInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateInstanceRequest from required parameters
newUpdateInstanceRequest :: String -> UpdateInstanceRequest
newUpdateInstanceRequest _InstanceId = UpdateInstanceRequest { "InstanceId": _InstanceId, "AgentVersion": (NullOrUndefined Nothing), "AmiId": (NullOrUndefined Nothing), "Architecture": (NullOrUndefined Nothing), "AutoScalingType": (NullOrUndefined Nothing), "EbsOptimized": (NullOrUndefined Nothing), "Hostname": (NullOrUndefined Nothing), "InstallUpdatesOnBoot": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "LayerIds": (NullOrUndefined Nothing), "Os": (NullOrUndefined Nothing), "SshKeyName": (NullOrUndefined Nothing) }

-- | Constructs UpdateInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateInstanceRequest' :: String -> ( { "InstanceId" :: (String) , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings) , "InstanceType" :: NullOrUndefined.NullOrUndefined (String) , "AutoScalingType" :: NullOrUndefined.NullOrUndefined (AutoScalingType) , "Hostname" :: NullOrUndefined.NullOrUndefined (String) , "Os" :: NullOrUndefined.NullOrUndefined (String) , "AmiId" :: NullOrUndefined.NullOrUndefined (String) , "SshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "Architecture" :: NullOrUndefined.NullOrUndefined (Architecture) , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean) , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (Boolean) , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) } -> {"InstanceId" :: (String) , "LayerIds" :: NullOrUndefined.NullOrUndefined (Strings) , "InstanceType" :: NullOrUndefined.NullOrUndefined (String) , "AutoScalingType" :: NullOrUndefined.NullOrUndefined (AutoScalingType) , "Hostname" :: NullOrUndefined.NullOrUndefined (String) , "Os" :: NullOrUndefined.NullOrUndefined (String) , "AmiId" :: NullOrUndefined.NullOrUndefined (String) , "SshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "Architecture" :: NullOrUndefined.NullOrUndefined (Architecture) , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean) , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (Boolean) , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) } ) -> UpdateInstanceRequest
newUpdateInstanceRequest' _InstanceId customize = (UpdateInstanceRequest <<< customize) { "InstanceId": _InstanceId, "AgentVersion": (NullOrUndefined Nothing), "AmiId": (NullOrUndefined Nothing), "Architecture": (NullOrUndefined Nothing), "AutoScalingType": (NullOrUndefined Nothing), "EbsOptimized": (NullOrUndefined Nothing), "Hostname": (NullOrUndefined Nothing), "InstallUpdatesOnBoot": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "LayerIds": (NullOrUndefined Nothing), "Os": (NullOrUndefined Nothing), "SshKeyName": (NullOrUndefined Nothing) }



newtype UpdateLayerRequest = UpdateLayerRequest 
  { "LayerId" :: (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Shortname" :: NullOrUndefined.NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (LayerAttributes)
  , "CloudWatchLogsConfiguration" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsConfiguration)
  , "CustomInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String)
  , "CustomJson" :: NullOrUndefined.NullOrUndefined (String)
  , "CustomSecurityGroupIds" :: NullOrUndefined.NullOrUndefined (Strings)
  , "Packages" :: NullOrUndefined.NullOrUndefined (Strings)
  , "VolumeConfigurations" :: NullOrUndefined.NullOrUndefined (VolumeConfigurations)
  , "EnableAutoHealing" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AutoAssignElasticIps" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AutoAssignPublicIps" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "CustomRecipes" :: NullOrUndefined.NullOrUndefined (Recipes)
  , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "UseEbsOptimizedInstances" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "LifecycleEventConfiguration" :: NullOrUndefined.NullOrUndefined (LifecycleEventConfiguration)
  }
derive instance newtypeUpdateLayerRequest :: Newtype UpdateLayerRequest _
derive instance repGenericUpdateLayerRequest :: Generic UpdateLayerRequest _
instance showUpdateLayerRequest :: Show UpdateLayerRequest where
  show = genericShow
instance decodeUpdateLayerRequest :: Decode UpdateLayerRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateLayerRequest :: Encode UpdateLayerRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateLayerRequest from required parameters
newUpdateLayerRequest :: String -> UpdateLayerRequest
newUpdateLayerRequest _LayerId = UpdateLayerRequest { "LayerId": _LayerId, "Attributes": (NullOrUndefined Nothing), "AutoAssignElasticIps": (NullOrUndefined Nothing), "AutoAssignPublicIps": (NullOrUndefined Nothing), "CloudWatchLogsConfiguration": (NullOrUndefined Nothing), "CustomInstanceProfileArn": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "CustomRecipes": (NullOrUndefined Nothing), "CustomSecurityGroupIds": (NullOrUndefined Nothing), "EnableAutoHealing": (NullOrUndefined Nothing), "InstallUpdatesOnBoot": (NullOrUndefined Nothing), "LifecycleEventConfiguration": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Packages": (NullOrUndefined Nothing), "Shortname": (NullOrUndefined Nothing), "UseEbsOptimizedInstances": (NullOrUndefined Nothing), "VolumeConfigurations": (NullOrUndefined Nothing) }

-- | Constructs UpdateLayerRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateLayerRequest' :: String -> ( { "LayerId" :: (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Shortname" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (LayerAttributes) , "CloudWatchLogsConfiguration" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsConfiguration) , "CustomInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "CustomSecurityGroupIds" :: NullOrUndefined.NullOrUndefined (Strings) , "Packages" :: NullOrUndefined.NullOrUndefined (Strings) , "VolumeConfigurations" :: NullOrUndefined.NullOrUndefined (VolumeConfigurations) , "EnableAutoHealing" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoAssignElasticIps" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoAssignPublicIps" :: NullOrUndefined.NullOrUndefined (Boolean) , "CustomRecipes" :: NullOrUndefined.NullOrUndefined (Recipes) , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean) , "UseEbsOptimizedInstances" :: NullOrUndefined.NullOrUndefined (Boolean) , "LifecycleEventConfiguration" :: NullOrUndefined.NullOrUndefined (LifecycleEventConfiguration) } -> {"LayerId" :: (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Shortname" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (LayerAttributes) , "CloudWatchLogsConfiguration" :: NullOrUndefined.NullOrUndefined (CloudWatchLogsConfiguration) , "CustomInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "CustomSecurityGroupIds" :: NullOrUndefined.NullOrUndefined (Strings) , "Packages" :: NullOrUndefined.NullOrUndefined (Strings) , "VolumeConfigurations" :: NullOrUndefined.NullOrUndefined (VolumeConfigurations) , "EnableAutoHealing" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoAssignElasticIps" :: NullOrUndefined.NullOrUndefined (Boolean) , "AutoAssignPublicIps" :: NullOrUndefined.NullOrUndefined (Boolean) , "CustomRecipes" :: NullOrUndefined.NullOrUndefined (Recipes) , "InstallUpdatesOnBoot" :: NullOrUndefined.NullOrUndefined (Boolean) , "UseEbsOptimizedInstances" :: NullOrUndefined.NullOrUndefined (Boolean) , "LifecycleEventConfiguration" :: NullOrUndefined.NullOrUndefined (LifecycleEventConfiguration) } ) -> UpdateLayerRequest
newUpdateLayerRequest' _LayerId customize = (UpdateLayerRequest <<< customize) { "LayerId": _LayerId, "Attributes": (NullOrUndefined Nothing), "AutoAssignElasticIps": (NullOrUndefined Nothing), "AutoAssignPublicIps": (NullOrUndefined Nothing), "CloudWatchLogsConfiguration": (NullOrUndefined Nothing), "CustomInstanceProfileArn": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "CustomRecipes": (NullOrUndefined Nothing), "CustomSecurityGroupIds": (NullOrUndefined Nothing), "EnableAutoHealing": (NullOrUndefined Nothing), "InstallUpdatesOnBoot": (NullOrUndefined Nothing), "LifecycleEventConfiguration": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Packages": (NullOrUndefined Nothing), "Shortname": (NullOrUndefined Nothing), "UseEbsOptimizedInstances": (NullOrUndefined Nothing), "VolumeConfigurations": (NullOrUndefined Nothing) }



newtype UpdateMyUserProfileRequest = UpdateMyUserProfileRequest 
  { "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUpdateMyUserProfileRequest :: Newtype UpdateMyUserProfileRequest _
derive instance repGenericUpdateMyUserProfileRequest :: Generic UpdateMyUserProfileRequest _
instance showUpdateMyUserProfileRequest :: Show UpdateMyUserProfileRequest where
  show = genericShow
instance decodeUpdateMyUserProfileRequest :: Decode UpdateMyUserProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateMyUserProfileRequest :: Encode UpdateMyUserProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateMyUserProfileRequest from required parameters
newUpdateMyUserProfileRequest :: UpdateMyUserProfileRequest
newUpdateMyUserProfileRequest  = UpdateMyUserProfileRequest { "SshPublicKey": (NullOrUndefined Nothing) }

-- | Constructs UpdateMyUserProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateMyUserProfileRequest' :: ( { "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String) } -> {"SshPublicKey" :: NullOrUndefined.NullOrUndefined (String) } ) -> UpdateMyUserProfileRequest
newUpdateMyUserProfileRequest'  customize = (UpdateMyUserProfileRequest <<< customize) { "SshPublicKey": (NullOrUndefined Nothing) }



newtype UpdateRdsDbInstanceRequest = UpdateRdsDbInstanceRequest 
  { "RdsDbInstanceArn" :: (String)
  , "DbUser" :: NullOrUndefined.NullOrUndefined (String)
  , "DbPassword" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUpdateRdsDbInstanceRequest :: Newtype UpdateRdsDbInstanceRequest _
derive instance repGenericUpdateRdsDbInstanceRequest :: Generic UpdateRdsDbInstanceRequest _
instance showUpdateRdsDbInstanceRequest :: Show UpdateRdsDbInstanceRequest where
  show = genericShow
instance decodeUpdateRdsDbInstanceRequest :: Decode UpdateRdsDbInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateRdsDbInstanceRequest :: Encode UpdateRdsDbInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateRdsDbInstanceRequest from required parameters
newUpdateRdsDbInstanceRequest :: String -> UpdateRdsDbInstanceRequest
newUpdateRdsDbInstanceRequest _RdsDbInstanceArn = UpdateRdsDbInstanceRequest { "RdsDbInstanceArn": _RdsDbInstanceArn, "DbPassword": (NullOrUndefined Nothing), "DbUser": (NullOrUndefined Nothing) }

-- | Constructs UpdateRdsDbInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRdsDbInstanceRequest' :: String -> ( { "RdsDbInstanceArn" :: (String) , "DbUser" :: NullOrUndefined.NullOrUndefined (String) , "DbPassword" :: NullOrUndefined.NullOrUndefined (String) } -> {"RdsDbInstanceArn" :: (String) , "DbUser" :: NullOrUndefined.NullOrUndefined (String) , "DbPassword" :: NullOrUndefined.NullOrUndefined (String) } ) -> UpdateRdsDbInstanceRequest
newUpdateRdsDbInstanceRequest' _RdsDbInstanceArn customize = (UpdateRdsDbInstanceRequest <<< customize) { "RdsDbInstanceArn": _RdsDbInstanceArn, "DbPassword": (NullOrUndefined Nothing), "DbUser": (NullOrUndefined Nothing) }



newtype UpdateStackRequest = UpdateStackRequest 
  { "StackId" :: (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (StackAttributes)
  , "ServiceRoleArn" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultOs" :: NullOrUndefined.NullOrUndefined (String)
  , "HostnameTheme" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultAvailabilityZone" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultSubnetId" :: NullOrUndefined.NullOrUndefined (String)
  , "CustomJson" :: NullOrUndefined.NullOrUndefined (String)
  , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager)
  , "ChefConfiguration" :: NullOrUndefined.NullOrUndefined (ChefConfiguration)
  , "UseCustomCookbooks" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "CustomCookbooksSource" :: NullOrUndefined.NullOrUndefined (Source)
  , "DefaultSshKeyName" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultRootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType)
  , "UseOpsworksSecurityGroups" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUpdateStackRequest :: Newtype UpdateStackRequest _
derive instance repGenericUpdateStackRequest :: Generic UpdateStackRequest _
instance showUpdateStackRequest :: Show UpdateStackRequest where
  show = genericShow
instance decodeUpdateStackRequest :: Decode UpdateStackRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateStackRequest :: Encode UpdateStackRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateStackRequest from required parameters
newUpdateStackRequest :: String -> UpdateStackRequest
newUpdateStackRequest _StackId = UpdateStackRequest { "StackId": _StackId, "AgentVersion": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "ChefConfiguration": (NullOrUndefined Nothing), "ConfigurationManager": (NullOrUndefined Nothing), "CustomCookbooksSource": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "DefaultAvailabilityZone": (NullOrUndefined Nothing), "DefaultInstanceProfileArn": (NullOrUndefined Nothing), "DefaultOs": (NullOrUndefined Nothing), "DefaultRootDeviceType": (NullOrUndefined Nothing), "DefaultSshKeyName": (NullOrUndefined Nothing), "DefaultSubnetId": (NullOrUndefined Nothing), "HostnameTheme": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ServiceRoleArn": (NullOrUndefined Nothing), "UseCustomCookbooks": (NullOrUndefined Nothing), "UseOpsworksSecurityGroups": (NullOrUndefined Nothing) }

-- | Constructs UpdateStackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStackRequest' :: String -> ( { "StackId" :: (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (StackAttributes) , "ServiceRoleArn" :: NullOrUndefined.NullOrUndefined (String) , "DefaultInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "DefaultOs" :: NullOrUndefined.NullOrUndefined (String) , "HostnameTheme" :: NullOrUndefined.NullOrUndefined (String) , "DefaultAvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "DefaultSubnetId" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager) , "ChefConfiguration" :: NullOrUndefined.NullOrUndefined (ChefConfiguration) , "UseCustomCookbooks" :: NullOrUndefined.NullOrUndefined (Boolean) , "CustomCookbooksSource" :: NullOrUndefined.NullOrUndefined (Source) , "DefaultSshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "DefaultRootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType) , "UseOpsworksSecurityGroups" :: NullOrUndefined.NullOrUndefined (Boolean) , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) } -> {"StackId" :: (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (StackAttributes) , "ServiceRoleArn" :: NullOrUndefined.NullOrUndefined (String) , "DefaultInstanceProfileArn" :: NullOrUndefined.NullOrUndefined (String) , "DefaultOs" :: NullOrUndefined.NullOrUndefined (String) , "HostnameTheme" :: NullOrUndefined.NullOrUndefined (String) , "DefaultAvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "DefaultSubnetId" :: NullOrUndefined.NullOrUndefined (String) , "CustomJson" :: NullOrUndefined.NullOrUndefined (String) , "ConfigurationManager" :: NullOrUndefined.NullOrUndefined (StackConfigurationManager) , "ChefConfiguration" :: NullOrUndefined.NullOrUndefined (ChefConfiguration) , "UseCustomCookbooks" :: NullOrUndefined.NullOrUndefined (Boolean) , "CustomCookbooksSource" :: NullOrUndefined.NullOrUndefined (Source) , "DefaultSshKeyName" :: NullOrUndefined.NullOrUndefined (String) , "DefaultRootDeviceType" :: NullOrUndefined.NullOrUndefined (RootDeviceType) , "UseOpsworksSecurityGroups" :: NullOrUndefined.NullOrUndefined (Boolean) , "AgentVersion" :: NullOrUndefined.NullOrUndefined (String) } ) -> UpdateStackRequest
newUpdateStackRequest' _StackId customize = (UpdateStackRequest <<< customize) { "StackId": _StackId, "AgentVersion": (NullOrUndefined Nothing), "Attributes": (NullOrUndefined Nothing), "ChefConfiguration": (NullOrUndefined Nothing), "ConfigurationManager": (NullOrUndefined Nothing), "CustomCookbooksSource": (NullOrUndefined Nothing), "CustomJson": (NullOrUndefined Nothing), "DefaultAvailabilityZone": (NullOrUndefined Nothing), "DefaultInstanceProfileArn": (NullOrUndefined Nothing), "DefaultOs": (NullOrUndefined Nothing), "DefaultRootDeviceType": (NullOrUndefined Nothing), "DefaultSshKeyName": (NullOrUndefined Nothing), "DefaultSubnetId": (NullOrUndefined Nothing), "HostnameTheme": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ServiceRoleArn": (NullOrUndefined Nothing), "UseCustomCookbooks": (NullOrUndefined Nothing), "UseOpsworksSecurityGroups": (NullOrUndefined Nothing) }



newtype UpdateUserProfileRequest = UpdateUserProfileRequest 
  { "IamUserArn" :: (String)
  , "SshUsername" :: NullOrUndefined.NullOrUndefined (String)
  , "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String)
  , "AllowSelfManagement" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeUpdateUserProfileRequest :: Newtype UpdateUserProfileRequest _
derive instance repGenericUpdateUserProfileRequest :: Generic UpdateUserProfileRequest _
instance showUpdateUserProfileRequest :: Show UpdateUserProfileRequest where
  show = genericShow
instance decodeUpdateUserProfileRequest :: Decode UpdateUserProfileRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateUserProfileRequest :: Encode UpdateUserProfileRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateUserProfileRequest from required parameters
newUpdateUserProfileRequest :: String -> UpdateUserProfileRequest
newUpdateUserProfileRequest _IamUserArn = UpdateUserProfileRequest { "IamUserArn": _IamUserArn, "AllowSelfManagement": (NullOrUndefined Nothing), "SshPublicKey": (NullOrUndefined Nothing), "SshUsername": (NullOrUndefined Nothing) }

-- | Constructs UpdateUserProfileRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateUserProfileRequest' :: String -> ( { "IamUserArn" :: (String) , "SshUsername" :: NullOrUndefined.NullOrUndefined (String) , "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String) , "AllowSelfManagement" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"IamUserArn" :: (String) , "SshUsername" :: NullOrUndefined.NullOrUndefined (String) , "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String) , "AllowSelfManagement" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> UpdateUserProfileRequest
newUpdateUserProfileRequest' _IamUserArn customize = (UpdateUserProfileRequest <<< customize) { "IamUserArn": _IamUserArn, "AllowSelfManagement": (NullOrUndefined Nothing), "SshPublicKey": (NullOrUndefined Nothing), "SshUsername": (NullOrUndefined Nothing) }



newtype UpdateVolumeRequest = UpdateVolumeRequest 
  { "VolumeId" :: (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "MountPoint" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUpdateVolumeRequest :: Newtype UpdateVolumeRequest _
derive instance repGenericUpdateVolumeRequest :: Generic UpdateVolumeRequest _
instance showUpdateVolumeRequest :: Show UpdateVolumeRequest where
  show = genericShow
instance decodeUpdateVolumeRequest :: Decode UpdateVolumeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateVolumeRequest :: Encode UpdateVolumeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateVolumeRequest from required parameters
newUpdateVolumeRequest :: String -> UpdateVolumeRequest
newUpdateVolumeRequest _VolumeId = UpdateVolumeRequest { "VolumeId": _VolumeId, "MountPoint": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs UpdateVolumeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateVolumeRequest' :: String -> ( { "VolumeId" :: (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "MountPoint" :: NullOrUndefined.NullOrUndefined (String) } -> {"VolumeId" :: (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "MountPoint" :: NullOrUndefined.NullOrUndefined (String) } ) -> UpdateVolumeRequest
newUpdateVolumeRequest' _VolumeId customize = (UpdateVolumeRequest <<< customize) { "VolumeId": _VolumeId, "MountPoint": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



-- | <p>Describes a user's SSH information.</p>
newtype UserProfile = UserProfile 
  { "IamUserArn" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "SshUsername" :: NullOrUndefined.NullOrUndefined (String)
  , "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String)
  , "AllowSelfManagement" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeUserProfile :: Newtype UserProfile _
derive instance repGenericUserProfile :: Generic UserProfile _
instance showUserProfile :: Show UserProfile where
  show = genericShow
instance decodeUserProfile :: Decode UserProfile where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUserProfile :: Encode UserProfile where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UserProfile from required parameters
newUserProfile :: UserProfile
newUserProfile  = UserProfile { "AllowSelfManagement": (NullOrUndefined Nothing), "IamUserArn": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "SshPublicKey": (NullOrUndefined Nothing), "SshUsername": (NullOrUndefined Nothing) }

-- | Constructs UserProfile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUserProfile' :: ( { "IamUserArn" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "SshUsername" :: NullOrUndefined.NullOrUndefined (String) , "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String) , "AllowSelfManagement" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"IamUserArn" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "SshUsername" :: NullOrUndefined.NullOrUndefined (String) , "SshPublicKey" :: NullOrUndefined.NullOrUndefined (String) , "AllowSelfManagement" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> UserProfile
newUserProfile'  customize = (UserProfile <<< customize) { "AllowSelfManagement": (NullOrUndefined Nothing), "IamUserArn": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "SshPublicKey": (NullOrUndefined Nothing), "SshUsername": (NullOrUndefined Nothing) }



newtype UserProfiles = UserProfiles (Array UserProfile)
derive instance newtypeUserProfiles :: Newtype UserProfiles _
derive instance repGenericUserProfiles :: Generic UserProfiles _
instance showUserProfiles :: Show UserProfiles where
  show = genericShow
instance decodeUserProfiles :: Decode UserProfiles where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUserProfiles :: Encode UserProfiles where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ValidForInMinutes = ValidForInMinutes Int
derive instance newtypeValidForInMinutes :: Newtype ValidForInMinutes _
derive instance repGenericValidForInMinutes :: Generic ValidForInMinutes _
instance showValidForInMinutes :: Show ValidForInMinutes where
  show = genericShow
instance decodeValidForInMinutes :: Decode ValidForInMinutes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeValidForInMinutes :: Encode ValidForInMinutes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Indicates that a request was not valid.</p>
newtype ValidationException = ValidationException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeValidationException :: Newtype ValidationException _
derive instance repGenericValidationException :: Generic ValidationException _
instance showValidationException :: Show ValidationException where
  show = genericShow
instance decodeValidationException :: Decode ValidationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeValidationException :: Encode ValidationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ValidationException from required parameters
newValidationException :: ValidationException
newValidationException  = ValidationException { "message": (NullOrUndefined Nothing) }

-- | Constructs ValidationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValidationException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> ValidationException
newValidationException'  customize = (ValidationException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype VirtualizationType = VirtualizationType String
derive instance newtypeVirtualizationType :: Newtype VirtualizationType _
derive instance repGenericVirtualizationType :: Generic VirtualizationType _
instance showVirtualizationType :: Show VirtualizationType where
  show = genericShow
instance decodeVirtualizationType :: Decode VirtualizationType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVirtualizationType :: Encode VirtualizationType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes an instance's Amazon EBS volume.</p>
newtype Volume = Volume 
  { "VolumeId" :: NullOrUndefined.NullOrUndefined (String)
  , "Ec2VolumeId" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "RaidArrayId" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceId" :: NullOrUndefined.NullOrUndefined (String)
  , "Status" :: NullOrUndefined.NullOrUndefined (String)
  , "Size" :: NullOrUndefined.NullOrUndefined (Int)
  , "Device" :: NullOrUndefined.NullOrUndefined (String)
  , "MountPoint" :: NullOrUndefined.NullOrUndefined (String)
  , "Region" :: NullOrUndefined.NullOrUndefined (String)
  , "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String)
  , "VolumeType" :: NullOrUndefined.NullOrUndefined (String)
  , "Iops" :: NullOrUndefined.NullOrUndefined (Int)
  , "Encrypted" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeVolume :: Newtype Volume _
derive instance repGenericVolume :: Generic Volume _
instance showVolume :: Show Volume where
  show = genericShow
instance decodeVolume :: Decode Volume where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVolume :: Encode Volume where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Volume from required parameters
newVolume :: Volume
newVolume  = Volume { "AvailabilityZone": (NullOrUndefined Nothing), "Device": (NullOrUndefined Nothing), "Ec2VolumeId": (NullOrUndefined Nothing), "Encrypted": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "Iops": (NullOrUndefined Nothing), "MountPoint": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "RaidArrayId": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing), "Size": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "VolumeId": (NullOrUndefined Nothing), "VolumeType": (NullOrUndefined Nothing) }

-- | Constructs Volume's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolume' :: ( { "VolumeId" :: NullOrUndefined.NullOrUndefined (String) , "Ec2VolumeId" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "RaidArrayId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "Status" :: NullOrUndefined.NullOrUndefined (String) , "Size" :: NullOrUndefined.NullOrUndefined (Int) , "Device" :: NullOrUndefined.NullOrUndefined (String) , "MountPoint" :: NullOrUndefined.NullOrUndefined (String) , "Region" :: NullOrUndefined.NullOrUndefined (String) , "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "VolumeType" :: NullOrUndefined.NullOrUndefined (String) , "Iops" :: NullOrUndefined.NullOrUndefined (Int) , "Encrypted" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"VolumeId" :: NullOrUndefined.NullOrUndefined (String) , "Ec2VolumeId" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "RaidArrayId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceId" :: NullOrUndefined.NullOrUndefined (String) , "Status" :: NullOrUndefined.NullOrUndefined (String) , "Size" :: NullOrUndefined.NullOrUndefined (Int) , "Device" :: NullOrUndefined.NullOrUndefined (String) , "MountPoint" :: NullOrUndefined.NullOrUndefined (String) , "Region" :: NullOrUndefined.NullOrUndefined (String) , "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "VolumeType" :: NullOrUndefined.NullOrUndefined (String) , "Iops" :: NullOrUndefined.NullOrUndefined (Int) , "Encrypted" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> Volume
newVolume'  customize = (Volume <<< customize) { "AvailabilityZone": (NullOrUndefined Nothing), "Device": (NullOrUndefined Nothing), "Ec2VolumeId": (NullOrUndefined Nothing), "Encrypted": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "Iops": (NullOrUndefined Nothing), "MountPoint": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "RaidArrayId": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing), "Size": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "VolumeId": (NullOrUndefined Nothing), "VolumeType": (NullOrUndefined Nothing) }



-- | <p>Describes an Amazon EBS volume configuration.</p>
newtype VolumeConfiguration = VolumeConfiguration 
  { "MountPoint" :: (String)
  , "RaidLevel" :: NullOrUndefined.NullOrUndefined (Int)
  , "NumberOfDisks" :: (Int)
  , "Size" :: (Int)
  , "VolumeType" :: NullOrUndefined.NullOrUndefined (String)
  , "Iops" :: NullOrUndefined.NullOrUndefined (Int)
  , "Encrypted" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeVolumeConfiguration :: Newtype VolumeConfiguration _
derive instance repGenericVolumeConfiguration :: Generic VolumeConfiguration _
instance showVolumeConfiguration :: Show VolumeConfiguration where
  show = genericShow
instance decodeVolumeConfiguration :: Decode VolumeConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVolumeConfiguration :: Encode VolumeConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs VolumeConfiguration from required parameters
newVolumeConfiguration :: String -> Int -> Int -> VolumeConfiguration
newVolumeConfiguration _MountPoint _NumberOfDisks _Size = VolumeConfiguration { "MountPoint": _MountPoint, "NumberOfDisks": _NumberOfDisks, "Size": _Size, "Encrypted": (NullOrUndefined Nothing), "Iops": (NullOrUndefined Nothing), "RaidLevel": (NullOrUndefined Nothing), "VolumeType": (NullOrUndefined Nothing) }

-- | Constructs VolumeConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolumeConfiguration' :: String -> Int -> Int -> ( { "MountPoint" :: (String) , "RaidLevel" :: NullOrUndefined.NullOrUndefined (Int) , "NumberOfDisks" :: (Int) , "Size" :: (Int) , "VolumeType" :: NullOrUndefined.NullOrUndefined (String) , "Iops" :: NullOrUndefined.NullOrUndefined (Int) , "Encrypted" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"MountPoint" :: (String) , "RaidLevel" :: NullOrUndefined.NullOrUndefined (Int) , "NumberOfDisks" :: (Int) , "Size" :: (Int) , "VolumeType" :: NullOrUndefined.NullOrUndefined (String) , "Iops" :: NullOrUndefined.NullOrUndefined (Int) , "Encrypted" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> VolumeConfiguration
newVolumeConfiguration' _MountPoint _NumberOfDisks _Size customize = (VolumeConfiguration <<< customize) { "MountPoint": _MountPoint, "NumberOfDisks": _NumberOfDisks, "Size": _Size, "Encrypted": (NullOrUndefined Nothing), "Iops": (NullOrUndefined Nothing), "RaidLevel": (NullOrUndefined Nothing), "VolumeType": (NullOrUndefined Nothing) }



newtype VolumeConfigurations = VolumeConfigurations (Array VolumeConfiguration)
derive instance newtypeVolumeConfigurations :: Newtype VolumeConfigurations _
derive instance repGenericVolumeConfigurations :: Generic VolumeConfigurations _
instance showVolumeConfigurations :: Show VolumeConfigurations where
  show = genericShow
instance decodeVolumeConfigurations :: Decode VolumeConfigurations where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVolumeConfigurations :: Encode VolumeConfigurations where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype VolumeType = VolumeType String
derive instance newtypeVolumeType :: Newtype VolumeType _
derive instance repGenericVolumeType :: Generic VolumeType _
instance showVolumeType :: Show VolumeType where
  show = genericShow
instance decodeVolumeType :: Decode VolumeType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVolumeType :: Encode VolumeType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Volumes = Volumes (Array Volume)
derive instance newtypeVolumes :: Newtype Volumes _
derive instance repGenericVolumes :: Generic Volumes _
instance showVolumes :: Show Volumes where
  show = genericShow
instance decodeVolumes :: Decode Volumes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVolumes :: Encode Volumes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes a time-based instance's auto scaling schedule. The schedule consists of a set of key-value pairs.</p> <ul> <li> <p>The key is the time period (a UTC hour) and must be an integer from 0 - 23.</p> </li> <li> <p>The value indicates whether the instance should be online or offline for the specified period, and must be set to "on" or "off"</p> </li> </ul> <p>The default setting for all time periods is off, so you use the following parameters primarily to specify the online periods. You don't have to explicitly specify offline periods unless you want to change an online period to an offline period.</p> <p>The following example specifies that the instance should be online for four hours, from UTC 1200 - 1600. It will be off for the remainder of the day.</p> <p> <code> { "12":"on", "13":"on", "14":"on", "15":"on" } </code> </p>
newtype WeeklyAutoScalingSchedule = WeeklyAutoScalingSchedule 
  { "Monday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule)
  , "Tuesday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule)
  , "Wednesday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule)
  , "Thursday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule)
  , "Friday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule)
  , "Saturday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule)
  , "Sunday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule)
  }
derive instance newtypeWeeklyAutoScalingSchedule :: Newtype WeeklyAutoScalingSchedule _
derive instance repGenericWeeklyAutoScalingSchedule :: Generic WeeklyAutoScalingSchedule _
instance showWeeklyAutoScalingSchedule :: Show WeeklyAutoScalingSchedule where
  show = genericShow
instance decodeWeeklyAutoScalingSchedule :: Decode WeeklyAutoScalingSchedule where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeWeeklyAutoScalingSchedule :: Encode WeeklyAutoScalingSchedule where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs WeeklyAutoScalingSchedule from required parameters
newWeeklyAutoScalingSchedule :: WeeklyAutoScalingSchedule
newWeeklyAutoScalingSchedule  = WeeklyAutoScalingSchedule { "Friday": (NullOrUndefined Nothing), "Monday": (NullOrUndefined Nothing), "Saturday": (NullOrUndefined Nothing), "Sunday": (NullOrUndefined Nothing), "Thursday": (NullOrUndefined Nothing), "Tuesday": (NullOrUndefined Nothing), "Wednesday": (NullOrUndefined Nothing) }

-- | Constructs WeeklyAutoScalingSchedule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWeeklyAutoScalingSchedule' :: ( { "Monday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) , "Tuesday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) , "Wednesday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) , "Thursday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) , "Friday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) , "Saturday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) , "Sunday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) } -> {"Monday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) , "Tuesday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) , "Wednesday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) , "Thursday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) , "Friday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) , "Saturday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) , "Sunday" :: NullOrUndefined.NullOrUndefined (DailyAutoScalingSchedule) } ) -> WeeklyAutoScalingSchedule
newWeeklyAutoScalingSchedule'  customize = (WeeklyAutoScalingSchedule <<< customize) { "Friday": (NullOrUndefined Nothing), "Monday": (NullOrUndefined Nothing), "Saturday": (NullOrUndefined Nothing), "Sunday": (NullOrUndefined Nothing), "Thursday": (NullOrUndefined Nothing), "Tuesday": (NullOrUndefined Nothing), "Wednesday": (NullOrUndefined Nothing) }

