![Branch main](https://img.shields.io/badge/branch-main-brightgreen.svg?style=flat-square) [![release](https://github.com/govindsme/JenkinsfileLint/actions/workflows/release.yml/badge.svg)](https://github.com/govindsme/JenkinsfileLint/actions/workflows/release.yml)  [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/govindsme/JenkinsfileLint/blob/main/LICENSE)  ![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/govindsme/JenkinsfileLint)   ![Files](https://img.shields.io/github/directory-file-count/govindsme/JenkinsfileLint  )

# JenkinsfileLint

This pre-commit hook uses [nvuillam/npm-groovy-lint](https://github.com/nvuillam/npm-groovy-lint) docker image for linting Jenkinsfile.


Table of Contents
-----------------

  * [Requirements](#requirements)
  * [Install](#installation)
  * [Contributing](#contributing)
  * [License](#license)
  * [Author](#author)

Requirements
------------
  JenkinsfileLint requires the following to run:

  * [pre-commit](http://pre-commit.com)
  * [Docker](https://docs.docker.com/engine/install/)
    

Installation
---------

1. Please refer the list of available tags [here](https://github.com/govindsme/JenkinsfileLint/tags)
2. create .pre-commit-config.yaml in your git project
3. pre-commit install 


A sample .pre-commit-config.yaml may look like the following:

```yaml
- repo: https://github.com/govindsme/JenkinsfileLint
    rev: v1.2.0.                                        # tag
    hooks:
      - id: JenkinsfileLinter
        args: ['Jenkinsfile']                           # name of the Jenkinsfile
```

You may require to add .groovylintrc.json to have the required exclusion

```json
{
    "extends": "recommended-jenkinsfile",
    "rules": {
        "ignoreVariableNames": "off",
        "VariableName": {
            "severity": "info"
        }
    }
}
```

Contributing
------------

To contribute to JenkinsfileLint, fork this repo and raise a pull request. 


Author
------

> GitHub [@govindarajanv](https://github.com/govindarajanv)     


License
-------

pre-commit-shell is licensed under the [MIT](https://github.com/govindsme/JenkinsfileLint/blob/main/LICENSE) license.  
