# PWAMP

PWA + AMP => Seamless experience for user

##### Prerequisites

Install [polymer-cli](https://github.com/Polymer/polymer-cli):
(Need at least npm v0.3.0)

    npm install -g polymer-cli


##### Setup
    bower install

### Start the development server

    polymer serve
    
Default: http://localhost:8080/

AMP: http://localhost:8080/amp/index.html

### Run web-component-tester tests

    polymer test

### Build

    polymer build

### Test the build

This command serves the minified version of the app in an unbundled state, as it would be served by a push-compatible server:

    polymer serve build/unbundled
    
This command serves the minified version of the app generated using fragment bundling:

    polymer serve build/bundled

### Update gh-pages
    ./scripts/build-page.sh 
