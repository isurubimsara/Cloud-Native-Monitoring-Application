import boto3

# Specify the AWS region
region = 'us-east-1'  # Replace with your desired region

# Create a Boto3 ECR client with the specified region
ecr_client = boto3.client('ecr', region_name=region)

# Specify the repository name
repository_name = "my_monitoring_app_image"

# Create the repository
response = ecr_client.create_repository(repositoryName=repository_name)

# Get the repository URI from the response
repository_uri = response['repository']['repositoryUri']

# Print the repository URI
print(repository_uri)
