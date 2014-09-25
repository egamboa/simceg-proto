Simceg - Prototipo

El producto a desarrollar es un software, el cual consiste en un sistema web profesional, el cual incluirá un sistema completo de matrícula y control de estudiantes, así como un sistema de intercomunicación entre profesores y encargados de los estudiantes.

1.	Valeria León Solís.
2.	Paolo Vargas Campos.
3.	Daniel Bolaños Herrera.
4.	Esteban Gamboa Arrieta.

------------------------------------------

###Conocimientos Necesarios

A successful Git branching model
http://nvie.com/posts/a-successful-git-branching-model/

HTML/CSS/JS

CMS y Front Web development

###Requerimientos(En order):

Git
Ruby
Node - NPM
Grunt
Jekyll
Bower

###Instalación

Primero, vamos a la cuenta de GitHub y verificamos que seamos parte del repositorio **simceg-proto**.

Asegurarse de que su red no tiene firewalls que impidan la instalación

* 1.On the terminal go to Preferences, Startup, change the opcion "Chell open with: Command and add the path /bin/bash --login".

* 2.Clone the repo: `git clone https://github.com/egamboa/simceg-proto.git`.

* 4.Now install all node modules. in Terminal use "npm install"

* 5.Now install all the gems using "bundle install". Si no sirve instalar bundler "npm install bundler"

* 6.Now install grunt [**Grunt**](http://gruntjs.com/installing-grunt) `npm install -g grunt`.

* 7.After that run the command "sudo npm install" to install all the dependencies, after that, you can find a new folder created called **node_modules**, doesn't need to put to the repo, it's excluded by .gitignore file.

* 6.Finally compile with `grunt server`.

###Server-side development

Estructura básica del proyecto:

*   ├── Gemfile
*   ├── Gemfile.lock
*   ├── Gruntfile.js
*   ├── README.md
*   ├── _config.build.yml
*   ├── _config.yml
*   ├── app
*   │   ├── _includes
*   │   ├── _layouts
*   │   ├── _sass
*   │   ├── _posts
*   │   ├── _tabs
*   │   ├── css
*   │   ├── img
*   │   ├── js
*   ├── bower.json
*   └── package.json

