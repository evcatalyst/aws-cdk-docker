Example to get you into a bash environment with CDK (right now aligned for Node apps)

### Windows
- AWS_CRED_DIR: Typically `.aws` within your user directory for example `c:/Users/<yourusername>/.aws`
- CDK_APP_DIR: the directory where your CDK application resides for present working directory you can use `${PWD}`

`docker run --rm -it -v AWS_CRED_DIR:/root/.aws -v CDK_APP_DIR:/data onehudson/aws-cdk /bin/bash`

### MacOS/Linux

- AWS_CRED_DIR: Typically `.aws` within your user directory for example `~/.aws`
- CDK_APP_DIR: the directory where your CDK application resides - for current working directory you can use `.`

`docker run --rm -it -v AWS_CRED_DIR:/root/.aws -v CDK_APP_DIR:/data onehudson/aws-cdk /bin/bash`

