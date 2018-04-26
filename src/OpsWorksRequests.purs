
module AWS.OpsWorks.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.OpsWorks as OpsWorks
import AWS.OpsWorks.Types as OpsWorksTypes


-- | <p>Assign a registered instance to a layer.</p> <ul> <li> <p>You can assign registered on-premises instances to any layer type.</p> </li> <li> <p>You can assign registered Amazon EC2 instances only to custom layers.</p> </li> <li> <p>You cannot use this action with instances that were created with AWS OpsWorks Stacks.</p> </li> </ul> <p> <b>Required Permissions</b>: To use this action, an AWS Identity and Access Management (IAM) user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
assignInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.AssignInstanceRequest -> Aff (exception :: EXCEPTION | eff) Unit
assignInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "assignInstance"


-- | <p>Assigns one of the stack's registered Amazon EBS volumes to a specified instance. The volume must first be registered with the stack by calling <a>RegisterVolume</a>. After you register the volume, you must call <a>UpdateVolume</a> to specify a mount point before calling <code>AssignVolume</code>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
assignVolume :: forall eff. OpsWorks.Service -> OpsWorksTypes.AssignVolumeRequest -> Aff (exception :: EXCEPTION | eff) Unit
assignVolume (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "assignVolume"


-- | <p>Associates one of the stack's registered Elastic IP addresses with a specified instance. The address must first be registered with the stack by calling <a>RegisterElasticIp</a>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
associateElasticIp :: forall eff. OpsWorks.Service -> OpsWorksTypes.AssociateElasticIpRequest -> Aff (exception :: EXCEPTION | eff) Unit
associateElasticIp (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "associateElasticIp"


-- | <p>Attaches an Elastic Load Balancing load balancer to a specified layer. AWS OpsWorks Stacks does not support Application Load Balancer. You can only use Classic Load Balancer with AWS OpsWorks Stacks. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html">Elastic Load Balancing</a>.</p> <note> <p>You must create the Elastic Load Balancing instance separately, by using the Elastic Load Balancing console, API, or CLI. For more information, see <a href="http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html"> Elastic Load Balancing Developer Guide</a>.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
attachElasticLoadBalancer :: forall eff. OpsWorks.Service -> OpsWorksTypes.AttachElasticLoadBalancerRequest -> Aff (exception :: EXCEPTION | eff) Unit
attachElasticLoadBalancer (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachElasticLoadBalancer"


-- | <p>Creates a clone of a specified stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html">Clone a Stack</a>. By default, all parameters are set to the values used by the parent stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
cloneStack :: forall eff. OpsWorks.Service -> OpsWorksTypes.CloneStackRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.CloneStackResult
cloneStack (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cloneStack"


-- | <p>Creates an app for a specified stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
createApp :: forall eff. OpsWorks.Service -> OpsWorksTypes.CreateAppRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.CreateAppResult
createApp (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createApp"


-- | <p>Runs deployment or stack commands. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html">Deploying Apps</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html">Run Stack Commands</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
createDeployment :: forall eff. OpsWorks.Service -> OpsWorksTypes.CreateDeploymentRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.CreateDeploymentResult
createDeployment (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createDeployment"


-- | <p>Creates an instance in a specified stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">Adding an Instance to a Layer</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
createInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.CreateInstanceRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.CreateInstanceResult
createInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createInstance"


-- | <p>Creates a layer. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html">How to Create a Layer</a>.</p> <note> <p>You should use <b>CreateLayer</b> for noncustom layer types such as PHP App Server only if the stack does not have an existing layer of that type. A stack can have at most one instance of each noncustom layer; if you attempt to create a second instance, <b>CreateLayer</b> fails. A stack can have an arbitrary number of custom layers, so you can call <b>CreateLayer</b> as many times as you like for that layer type.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
createLayer :: forall eff. OpsWorks.Service -> OpsWorksTypes.CreateLayerRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.CreateLayerResult
createLayer (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createLayer"


-- | <p>Creates a new stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html">Create a New Stack</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
createStack :: forall eff. OpsWorks.Service -> OpsWorksTypes.CreateStackRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.CreateStackResult
createStack (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createStack"


-- | <p>Creates a new user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
createUserProfile :: forall eff. OpsWorks.Service -> OpsWorksTypes.CreateUserProfileRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.CreateUserProfileResult
createUserProfile (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createUserProfile"


-- | <p>Deletes a specified app.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deleteApp :: forall eff. OpsWorks.Service -> OpsWorksTypes.DeleteAppRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteApp (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteApp"


-- | <p>Deletes a specified instance, which terminates the associated Amazon EC2 instance. You must stop an instance before you can delete it.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html">Deleting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deleteInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.DeleteInstanceRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteInstance"


-- | <p>Deletes a specified layer. You must first stop and then delete all associated instances or unassign registered instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html">How to Delete a Layer</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deleteLayer :: forall eff. OpsWorks.Service -> OpsWorksTypes.DeleteLayerRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteLayer (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteLayer"


-- | <p>Deletes a specified stack. You must first delete all instances, layers, and apps or deregister registered instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html">Shut Down a Stack</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deleteStack :: forall eff. OpsWorks.Service -> OpsWorksTypes.DeleteStackRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteStack (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteStack"


-- | <p>Deletes a user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deleteUserProfile :: forall eff. OpsWorks.Service -> OpsWorksTypes.DeleteUserProfileRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteUserProfile (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteUserProfile"


-- | <p>Deregisters a specified Amazon ECS cluster from a stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete"> Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html</a>.</p>
deregisterEcsCluster :: forall eff. OpsWorks.Service -> OpsWorksTypes.DeregisterEcsClusterRequest -> Aff (exception :: EXCEPTION | eff) Unit
deregisterEcsCluster (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deregisterEcsCluster"


-- | <p>Deregisters a specified Elastic IP address. The address can then be registered by another stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deregisterElasticIp :: forall eff. OpsWorks.Service -> OpsWorksTypes.DeregisterElasticIpRequest -> Aff (exception :: EXCEPTION | eff) Unit
deregisterElasticIp (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deregisterElasticIp"


-- | <p>Deregister a registered Amazon EC2 or on-premises instance. This action removes the instance from the stack and returns it to your control. This action can not be used with instances that were created with AWS OpsWorks Stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deregisterInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.DeregisterInstanceRequest -> Aff (exception :: EXCEPTION | eff) Unit
deregisterInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deregisterInstance"


-- | <p>Deregisters an Amazon RDS instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deregisterRdsDbInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.DeregisterRdsDbInstanceRequest -> Aff (exception :: EXCEPTION | eff) Unit
deregisterRdsDbInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deregisterRdsDbInstance"


-- | <p>Deregisters an Amazon EBS volume. The volume can then be registered by another stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
deregisterVolume :: forall eff. OpsWorks.Service -> OpsWorksTypes.DeregisterVolumeRequest -> Aff (exception :: EXCEPTION | eff) Unit
deregisterVolume (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deregisterVolume"


-- | <p>Describes the available AWS OpsWorks Stacks agent versions. You must specify a stack ID or a configuration manager. <code>DescribeAgentVersions</code> returns a list of available agent versions for the specified stack or configuration manager.</p>
describeAgentVersions :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeAgentVersionsRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeAgentVersionsResult
describeAgentVersions (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAgentVersions"


-- | <p>Requests a description of a specified set of apps.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeApps :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeAppsRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeAppsResult
describeApps (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeApps"


-- | <p>Describes the results of specified commands.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeCommands :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeCommandsRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeCommandsResult
describeCommands (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeCommands"


-- | <p>Requests a description of a specified set of deployments.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeDeployments :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeDeploymentsRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeDeploymentsResult
describeDeployments (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeDeployments"


-- | <p>Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID, you can use the <code>MaxResults</code> and <code>NextToken</code> parameters to paginate the response. However, AWS OpsWorks Stacks currently supports only one cluster per layer, so the result set has a maximum of one element.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permission. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>
describeEcsClusters :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeEcsClustersRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeEcsClustersResult
describeEcsClusters (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEcsClusters"


-- | <p>Describes <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP addresses</a>.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeElasticIps :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeElasticIpsRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeElasticIpsResult
describeElasticIps (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeElasticIps"


-- | <p>Describes a stack's Elastic Load Balancing instances.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeElasticLoadBalancers :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeElasticLoadBalancersRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeElasticLoadBalancersResult
describeElasticLoadBalancers (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeElasticLoadBalancers"


-- | <p>Requests a description of a set of instances.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeInstances :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeInstancesRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeInstancesResult
describeInstances (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeInstances"


-- | <p>Requests a description of one or more layers in a specified stack.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeLayers :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeLayersRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeLayersResult
describeLayers (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeLayers"


-- | <p>Describes load-based auto scaling configurations for specified layers.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeLoadBasedAutoScaling :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeLoadBasedAutoScalingRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeLoadBasedAutoScalingResult
describeLoadBasedAutoScaling (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeLoadBasedAutoScaling"


-- | <p>Describes a user's SSH information.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeMyUserProfile :: forall eff. OpsWorks.Service ->  Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeMyUserProfileResult
describeMyUserProfile (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method unit where
    method = AWS.MethodName "describeMyUserProfile"


-- | <p>Describes the operating systems that are supported by AWS OpsWorks Stacks.</p>
describeOperatingSystems :: forall eff. OpsWorks.Service ->  Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeOperatingSystemsResponse
describeOperatingSystems (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method unit where
    method = AWS.MethodName "describeOperatingSystems"


-- | <p>Describes the permissions for a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describePermissions :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribePermissionsRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribePermissionsResult
describePermissions (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describePermissions"


-- | <p>Describe an instance's RAID arrays.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeRaidArrays :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeRaidArraysRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeRaidArraysResult
describeRaidArrays (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeRaidArrays"


-- | <p>Describes Amazon RDS instances.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>
describeRdsDbInstances :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeRdsDbInstancesRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeRdsDbInstancesResult
describeRdsDbInstances (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeRdsDbInstances"


-- | <p>Describes AWS OpsWorks Stacks service errors.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>
describeServiceErrors :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeServiceErrorsRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeServiceErrorsResult
describeServiceErrors (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeServiceErrors"


-- | <p>Requests a description of a stack's provisioning parameters.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeStackProvisioningParameters :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeStackProvisioningParametersRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeStackProvisioningParametersResult
describeStackProvisioningParameters (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeStackProvisioningParameters"


-- | <p>Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as <code>running_setup</code> or <code>online</code>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeStackSummary :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeStackSummaryRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeStackSummaryResult
describeStackSummary (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeStackSummary"


-- | <p>Requests a description of one or more stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeStacks :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeStacksRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeStacksResult
describeStacks (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeStacks"


-- | <p>Describes time-based auto scaling configurations for specified instances.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeTimeBasedAutoScaling :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeTimeBasedAutoScalingRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeTimeBasedAutoScalingResult
describeTimeBasedAutoScaling (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeTimeBasedAutoScaling"


-- | <p>Describe specified users.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeUserProfiles :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeUserProfilesRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeUserProfilesResult
describeUserProfiles (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeUserProfiles"


-- | <p>Describes an instance's Amazon EBS volumes.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
describeVolumes :: forall eff. OpsWorks.Service -> OpsWorksTypes.DescribeVolumesRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.DescribeVolumesResult
describeVolumes (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeVolumes"


-- | <p>Detaches a specified Elastic Load Balancing instance from its layer.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
detachElasticLoadBalancer :: forall eff. OpsWorks.Service -> OpsWorksTypes.DetachElasticLoadBalancerRequest -> Aff (exception :: EXCEPTION | eff) Unit
detachElasticLoadBalancer (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachElasticLoadBalancer"


-- | <p>Disassociates an Elastic IP address from its instance. The address remains registered with the stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
disassociateElasticIp :: forall eff. OpsWorks.Service -> OpsWorksTypes.DisassociateElasticIpRequest -> Aff (exception :: EXCEPTION | eff) Unit
disassociateElasticIp (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disassociateElasticIp"


-- | <p>Gets a generated host name for the specified layer, based on the current host name theme.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
getHostnameSuggestion :: forall eff. OpsWorks.Service -> OpsWorksTypes.GetHostnameSuggestionRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.GetHostnameSuggestionResult
getHostnameSuggestion (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getHostnameSuggestion"


-- | <note> <p>This action can be used only with Windows stacks.</p> </note> <p>Grants RDP access to a Windows instance for a specified time period.</p>
grantAccess :: forall eff. OpsWorks.Service -> OpsWorksTypes.GrantAccessRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.GrantAccessResult
grantAccess (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "grantAccess"


-- | <p>Returns a list of tags that are applied to the specified stack or layer.</p>
listTags :: forall eff. OpsWorks.Service -> OpsWorksTypes.ListTagsRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.ListTagsResult
listTags (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTags"


-- | <p>Reboots a specified instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
rebootInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.RebootInstanceRequest -> Aff (exception :: EXCEPTION | eff) Unit
rebootInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "rebootInstance"


-- | <p>Registers a specified Amazon ECS cluster with a stack. You can register only one cluster with a stack. A cluster can be registered with only one stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html"> Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html"> Managing User Permissions</a>.</p>
registerEcsCluster :: forall eff. OpsWorks.Service -> OpsWorksTypes.RegisterEcsClusterRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.RegisterEcsClusterResult
registerEcsCluster (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerEcsCluster"


-- | <p>Registers an Elastic IP address with a specified stack. An address can be registered with only one stack at a time. If the address is already registered, you must first deregister it by calling <a>DeregisterElasticIp</a>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
registerElasticIp :: forall eff. OpsWorks.Service -> OpsWorksTypes.RegisterElasticIpRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.RegisterElasticIpResult
registerElasticIp (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerElasticIp"


-- | <p>Registers instances that were created outside of AWS OpsWorks Stacks with a specified stack.</p> <note> <p>We do not recommend using this action to register instances. The complete registration operation includes two tasks: installing the AWS OpsWorks Stacks agent on the instance, and registering the instance with the stack. <code>RegisterInstance</code> handles only the second step. You should instead use the AWS CLI <code>register</code> command, which performs the entire registration operation. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html"> Registering an Instance with an AWS OpsWorks Stacks Stack</a>.</p> </note> <p>Registered instances have the same requirements as instances that are created by using the <a>CreateInstance</a> API. For example, registered instances must be running a supported Linux-based operating system, and they must have a supported instance type. For more information about requirements for instances that you want to register, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html"> Preparing the Instance</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
registerInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.RegisterInstanceRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.RegisterInstanceResult
registerInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerInstance"


-- | <p>Registers an Amazon RDS instance with a stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
registerRdsDbInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.RegisterRdsDbInstanceRequest -> Aff (exception :: EXCEPTION | eff) Unit
registerRdsDbInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerRdsDbInstance"


-- | <p>Registers an Amazon EBS volume with a specified stack. A volume can be registered with only one stack at a time. If the volume is already registered, you must first deregister it by calling <a>DeregisterVolume</a>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
registerVolume :: forall eff. OpsWorks.Service -> OpsWorksTypes.RegisterVolumeRequest -> Aff (exception :: EXCEPTION | eff) OpsWorksTypes.RegisterVolumeResult
registerVolume (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerVolume"


-- | <p>Specify the load-based auto scaling configuration for a specified layer. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing Load with Time-based and Load-based Instances</a>.</p> <note> <p>To use load-based auto scaling, you must create a set of load-based auto scaling instances. Load-based auto scaling operates only on the instances from that set, so you must ensure that you have created enough instances to handle the maximum anticipated load.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
setLoadBasedAutoScaling :: forall eff. OpsWorks.Service -> OpsWorksTypes.SetLoadBasedAutoScalingRequest -> Aff (exception :: EXCEPTION | eff) Unit
setLoadBasedAutoScaling (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setLoadBasedAutoScaling"


-- | <p>Specifies a user's permissions. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html">Security and Permissions</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
setPermission :: forall eff. OpsWorks.Service -> OpsWorksTypes.SetPermissionRequest -> Aff (exception :: EXCEPTION | eff) Unit
setPermission (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setPermission"


-- | <p>Specify the time-based auto scaling configuration for a specified instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing Load with Time-based and Load-based Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
setTimeBasedAutoScaling :: forall eff. OpsWorks.Service -> OpsWorksTypes.SetTimeBasedAutoScalingRequest -> Aff (exception :: EXCEPTION | eff) Unit
setTimeBasedAutoScaling (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setTimeBasedAutoScaling"


-- | <p>Starts a specified instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
startInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.StartInstanceRequest -> Aff (exception :: EXCEPTION | eff) Unit
startInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startInstance"


-- | <p>Starts a stack's instances.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
startStack :: forall eff. OpsWorks.Service -> OpsWorksTypes.StartStackRequest -> Aff (exception :: EXCEPTION | eff) Unit
startStack (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startStack"


-- | <p>Stops a specified instance. When you stop a standard instance, the data disappears and must be reinstalled when you restart the instance. You can stop an Amazon EBS-backed instance without losing data. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
stopInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.StopInstanceRequest -> Aff (exception :: EXCEPTION | eff) Unit
stopInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopInstance"


-- | <p>Stops a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
stopStack :: forall eff. OpsWorks.Service -> OpsWorksTypes.StopStackRequest -> Aff (exception :: EXCEPTION | eff) Unit
stopStack (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopStack"


-- | <p>Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks. For more information about how tagging works, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html">Tags</a> in the AWS OpsWorks User Guide.</p>
tagResource :: forall eff. OpsWorks.Service -> OpsWorksTypes.TagResourceRequest -> Aff (exception :: EXCEPTION | eff) Unit
tagResource (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "tagResource"


-- | <p>Unassigns a registered instance from all of it's layers. The instance remains in the stack as an unassigned instance and can be assigned to another layer, as needed. You cannot use this action with instances that were created with AWS OpsWorks Stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
unassignInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.UnassignInstanceRequest -> Aff (exception :: EXCEPTION | eff) Unit
unassignInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "unassignInstance"


-- | <p>Unassigns an assigned Amazon EBS volume. The volume remains registered with the stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
unassignVolume :: forall eff. OpsWorks.Service -> OpsWorksTypes.UnassignVolumeRequest -> Aff (exception :: EXCEPTION | eff) Unit
unassignVolume (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "unassignVolume"


-- | <p>Removes tags from a specified stack or layer.</p>
untagResource :: forall eff. OpsWorks.Service -> OpsWorksTypes.UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) Unit
untagResource (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "untagResource"


-- | <p>Updates a specified app.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateApp :: forall eff. OpsWorks.Service -> OpsWorksTypes.UpdateAppRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateApp (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateApp"


-- | <p>Updates a registered Elastic IP address's name. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateElasticIp :: forall eff. OpsWorks.Service -> OpsWorksTypes.UpdateElasticIpRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateElasticIp (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateElasticIp"


-- | <p>Updates a specified instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.UpdateInstanceRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateInstance"


-- | <p>Updates a specified layer.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateLayer :: forall eff. OpsWorks.Service -> OpsWorksTypes.UpdateLayerRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateLayer (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateLayer"


-- | <p>Updates a user's SSH public key.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateMyUserProfile :: forall eff. OpsWorks.Service -> OpsWorksTypes.UpdateMyUserProfileRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateMyUserProfile (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateMyUserProfile"


-- | <p>Updates an Amazon RDS instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateRdsDbInstance :: forall eff. OpsWorks.Service -> OpsWorksTypes.UpdateRdsDbInstanceRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateRdsDbInstance (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateRdsDbInstance"


-- | <p>Updates a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateStack :: forall eff. OpsWorks.Service -> OpsWorksTypes.UpdateStackRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateStack (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateStack"


-- | <p>Updates a specified user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateUserProfile :: forall eff. OpsWorks.Service -> OpsWorksTypes.UpdateUserProfileRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateUserProfile (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateUserProfile"


-- | <p>Updates an Amazon EBS volume's name or mount point. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
updateVolume :: forall eff. OpsWorks.Service -> OpsWorksTypes.UpdateVolumeRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateVolume (OpsWorks.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateVolume"
