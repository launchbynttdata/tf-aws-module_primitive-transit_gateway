package testimpl

import (
	"context"
	"testing"

	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/config"
	"github.com/aws/aws-sdk-go-v2/service/ec2"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/launchbynttdata/lcaf-component-terratest/types"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestComposableComplete(t *testing.T, ctx types.TestContext) {
	TestComposableCompleteReadonly(t, ctx)
}

func TestComposableCompleteReadonly(t *testing.T, ctx types.TestContext) {
	awsclient := GetAWSTransitGatewayClient(t)
	t.Run("TestTransitGatewayIdExists", func(t *testing.T) {
		tftgwID := terraform.Output(t, ctx.TerratestTerraformOptions(), "transit_gateway_id")

		awsTransitGateways, err := awsclient.DescribeTransitGateways(context.TODO(), &ec2.DescribeTransitGatewaysInput{
			TransitGatewayIds: []string{tftgwID},
		})
		if err != nil {
			t.Errorf("Failure during GetTransitGateway: %v", err)
		}
		assert.Equal(t, *awsTransitGateways.TransitGateways[0].TransitGatewayId, tftgwID, "Expected ID did not match actual ID!")
	})

	t.Run("TestTransitGatewayArnsExists", func(t *testing.T) {
		tftgwARN := terraform.Output(t, ctx.TerratestTerraformOptions(), "transit_gateway_arn")
		tftgwID := terraform.Output(t, ctx.TerratestTerraformOptions(), "transit_gateway_id")

		awsTransitGateways, err := awsclient.DescribeTransitGateways(context.TODO(), &ec2.DescribeTransitGatewaysInput{
			TransitGatewayIds: []string{tftgwID},
		})
		if err != nil {
			t.Errorf("Failure during GetTransitGateway: %v", err)
		}
		assert.Equal(t, *awsTransitGateways.TransitGateways[0].TransitGatewayArn, tftgwARN, "Expected ARN did not match actual ARN!")
	})

	t.Run("TestDefaultRouteTableIdExists", func(t *testing.T) {
		tftgwID := terraform.Output(t, ctx.TerratestTerraformOptions(), "transit_gateway_id")
		tfDefaultRouteTableAssocID := terraform.Output(t, ctx.TerratestTerraformOptions(), "default_route_table_association_id")

		awsTransitGateways, err := awsclient.DescribeTransitGateways(context.TODO(), &ec2.DescribeTransitGatewaysInput{
			TransitGatewayIds: []string{tftgwID},
		})
		if err != nil {
			t.Errorf("Failure during GetTransitGatewayRouteTable: %v", err)
		}
		assert.Equal(t, *awsTransitGateways.TransitGateways[0].Options.AssociationDefaultRouteTableId, tfDefaultRouteTableAssocID, "Expected Default Route Table ID did not match actual Default Route Table ID!")
	})

	t.Run("TestOwnerIDExists", func(t *testing.T) {
		tftgwID := terraform.Output(t, ctx.TerratestTerraformOptions(), "transit_gateway_id")
		tfOwnerID := terraform.Output(t, ctx.TerratestTerraformOptions(), "transit_gateway_owner_id")

		awsTransitGateways, err := awsclient.DescribeTransitGateways(context.TODO(), &ec2.DescribeTransitGatewaysInput{
			TransitGatewayIds: []string{tftgwID},
		})
		if err != nil {
			t.Errorf("Failure during GetTransitGatewayOwnerID: %v", err)
		}
		assert.Equal(t, *awsTransitGateways.TransitGateways[0].OwnerId, tfOwnerID, "Expected Owner ID did not match actual Owner ID!")
	})
}

func GetAWSTransitGatewayClient(t *testing.T) *ec2.Client {
	return ec2.NewFromConfig(GetAWSConfig(t))
}

func GetAWSConfig(t *testing.T) (cfg aws.Config) {
	cfg, err := config.LoadDefaultConfig(context.TODO())
	require.NoErrorf(t, err, "unable to load SDK config, %v", err)
	return cfg
}
