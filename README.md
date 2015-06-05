# Lumx-angularjs-starter-kit

[![Join the chat at https://gitter.im/mo-zag/Lumx-angularjs-starter-kit](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/mo-zag/Lumx-angularjs-starter-kit?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Lumx, Angularjs, Sass, Coffeescript, Grunt, Bower starter kit

#### Dependancies:

*Nodejs, bower, grunt*

#### How to install
Head over to [nodejs](https://nodejs.org) for instruction on how to install on your relevant OS. Once you have installed node run the following commands. 

> NOTE: on some systems you may need to be root to install npm globally as -g stands for globally install this npm. **sudo npm install -g modulename**

```
npm install -g grunt-cli
```

```
npm install -g bower
```

Once you have installed these dependancies, Download Lumx-angularjs-starter-kit from git navigate to directory in your terminal, shell run the follwoing command to install the relevant dependacies needed to run the starter kit.


```
npm install
```
Visit [Lumx](http://ui.lumapps.com/) for docs and place the HTML inside the templates folder and use the Directives, Services provided bu Lumx.
### Starter kit commands

#### Run the server on http://localhost:8000

```
grunt connect
```

#### Watch HTML, SASS, Coffeescript grunt will covert .scss lib/css and .coffee into lib/js 

```
grunt watch
```

#### Compile SASS from SCSS into lib/css

```
grunt sass
```

#### Compile Coffeescript into lib/js

```
grunt coffee
```
