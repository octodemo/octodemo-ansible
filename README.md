# octodemo-ansible

This repository contains the Container image for a pre-built ansible installation that can be used to perform automation task in GitHub Actions workflows.

It takes some time to install and configure Ansible (to the version and along with necessary thirdparty supporting python libraries, i.e. Azure, AWS, etc...), so this container can be used to speed up the execution process in workflows.

## Versioning

The container image will be versioned using the Git tag on the repoistory. These tags should correspond at least with the version of Ansible that is being installed as part of the build process.

For example if installing Ansible `2.9.8` the tag on the container should start with at least `2.9.8` but might include qualifiers related to the installed thirdpary plugins, `2.9.8-azure` for instance.