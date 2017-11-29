# PWAMP

PWA + AMP => Seamless experience for user

##### Goods

1. AMP look like the main app
2. Items are clickable, will be directed to real app with selected item
3. Cart are clickable, will be directed to real app with cart page
4. Burger Menu are clickable, will be directed to real app with opened menu
5. Service Worker of real app will be registered when enter the AMP

* Thank to (5) we have 2, 3, 4 load almost instantly 

##### Bads

- There is no animation when click on burger menu on AMP
- The cart on AMP won't relfect the number of item in cart

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
    
### Demo
Please follow the below gif
https://i.imgur.com/7wwNO9a.gifv

Explain what happend in video

- Search for Shop
- Shop is in search result with AMP Enabled icon 
- When clicked, the AMP is appeared instantly, thanks to google cache!
- While user is browsing information, the PWA is cached in background (via service worker)
- Hence, when user click an item, it redirect user to real app in seconds!
- Finally, user have full experience in our app with minimal loading time (at least, user don't feel so)
