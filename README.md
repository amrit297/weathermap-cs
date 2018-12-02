
[![Build Status](https://travis-ci.org/amrit297/weathermap-cs.svg?branch=master)](https://travis-ci.org/amrit297/weathermap-cs) 

***
Simple project to run cucumber tests on weathermap. Uses cucumberboiler plate provided by WDIO team.

## Requirements

- Node version 6 or higher

## Quick start

Choose one of the following options:

1. Clone the git repo — `git clone https://github.com/amrit297/weathermap-cs.git`

2. Clean the project (Optional):
- * On OSX/Linux: *
-- Run `yarn run clean`

- *On Windows:*
-- Remove the directories `/.git`, `/.github`
-- Remove the files `.travis.yml`, `jest.json` & `wdio.BUILD.conf.js`
-- Remove all the demo features from the `/src/features` directory

3. Install the dependencies (`yarn install`)


4. To run tests just call the [WDIO runner](http://webdriver.io/guide/testrunner/gettingstarted.html):

```sh
$ yarn run wdio
```

_please note_ The WDIO runner uses the configuration file `wdio.conf.js` by default.

# Configurations

To configure tests, checkout the [`wdio.conf.js`]

