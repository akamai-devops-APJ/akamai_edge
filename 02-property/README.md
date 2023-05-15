# Akamai Property 

Manage DNS Zones with Edge DNS with Terraform

## Before you begin

- [Setup Akamai Developer Tools](https://techdocs.akamai.com/developer/docs/welcome-to-the-akamai-developer-documentation-hub) : In this documentation, you will find instructions to setup API credentials, setup Akamai CLi and Terraform. 
- Install Terraform with the [official install guide](https://developer.hashicorp.com/terraform/downloads) *
- A registered domain name. This tutorial will use `your_domain`. *
- DNS set up for your domain name. *
- Setup VSCode
- Install Git

## What does this tempalate do?

- Creates a property configuration, edge hostname, CP code and a set of out of the box behaviours
- The configuration is created based on the variables defined by you for your web application
- Default setup is to simply create configuration and NOT push to staging / production network. You can un-comment / modify `# Activate property in staging` in `main.tf` if you wish to push to staging while creating the configuration or you can do that latter after configuration creation.

## Setup

## PART I
> This section explains steps to setup your local enviroment with the terraform property configuration.

### Clone github repo on your local

``` git clone https://github.com/akamai-devops-APJ/akamai_compute.git```