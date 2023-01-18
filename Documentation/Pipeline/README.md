## pipeline process inside circle ci
1- continous integration
Continuous integration is a group of many steps in our pipeline. The goal of continuous integration is to verify if code is ready to be merged when a pull request is submitted or to see if code is ready and safe to be deployed. By installing dependencies and testing the code, we are building confidence that our application is ready to be deployed. To do so, we can include the following steps in our pipeline:

Linting refers to verifying if the code follows certain standards of quality. This is the step responsible for calling lint scripts such as ESLint or Prettier.
Installing is the step responsible for calling npm install to download node modules locally
Testing is the step responsible for calling the different test scripts in our application
Building is the step responsible for calling the build script of our application

2- continuos deployment
to make the complete process automatic without human approval by pipeline in circle ci and link circle ci with github repo by creating config.yml in circlci folder

Pipelines are normally written inside configuration files as a list of steps. In the case of CircleCI, this file will always be located inside a .circleci folder and will be named config.yml.

It contains the following sections:

CircleCI version: This is simply indicating which version of the platform our pipeline should use.
## Orbs 
are a set of instructions created by CircleCi that allow us to configure the pipeline on which we will run our actions. These instructions will instruct the server to setup specific software on the server executing our pipeline. We could use orbs to setup node.js or install the AWS CLI for example.
## Jobs
 are groups of commands that we want to run. This is where we will run commands to install, build or deploy our application.
## Workflows
 are instructions about the order of the jobs. They allow us to create complex flows and specify manual approvals.

 ## pipeline process
 A Deployment pipeline is the process of taking code from version control and making it readily available to users of your application in an automated fashion through steps
 1- Version Control the first stage of the deployment pipeline is started which triggers:
    Code compilation
    Unit tests
    Code analysis
    Installer creation
    If all of these steps complete successfully the executables are assembled into binaries and stored into an artefact repository for later use.

2-  Independent Deployment
    An independent deployment is the process of deploying the compiled and tested artefacts onto development environments
3-  Production Deployment
    deliver the code to live production servers