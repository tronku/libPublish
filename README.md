# Library Release Action

It is used to bump current library's version and publish a new package and release tag.

## Params required
```yaml
inputs:
  github_token:
    description: 'Github token to access your repo'
    required: true

  default_branch:
    description: 'Default branch of the repo'
    required: false
    default: 'development'

  main_branch:
    description: 'Main branch of the repo for release'
    required: false
    default: 'master'

  version_file_path:
    description: 'Path of version.properties file'
    required: true

  release_tag:
    description: 'Should release tag or not'
    required: true
    default: false  
```