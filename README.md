# My Rails Base

This application is only a lot of initial configurations for starting a rails app faster

## Base information

App Version: 0.0.1

Ruby version: not specified

Rails version: 5.0.5

## What this base code have?
* Webpack configured
* Database config with Postgres
* Rspec suite
* Lot of gems

## Which gems this base do have? 

* all base gems from rails
* [Simple Form](https://github.com/plataformatec/simple_form)
* [Will Paginate](https://github.com/mislav/will_paginate)
* [Simple Enum](https://github.com/lwe/simple_enum)
* [Annotate](https://github.com/ctran/annotate_models) 
* [Better Errors](https://github.com/charliesome/better_errors)
* [Binding of Caller](https://github.com/banister/binding_of_caller)
* [Rspec](http://rspec.info/)

## Which Components/Package/Library this base do have?

* [Bootstrap, 3.3.7](http://getbootstrap.com/)
* [Font Awesome, 4.7.0](http://fontawesome.io/)
* [ImmutableJS, 3.8.1](https://facebook.github.io/immutable-js/)
* [Jquery, 3.1.1](https://jquery.com/)
* [React](https://facebook.github.io/react/)
* [React-Boostrap](https://react-bootstrap.github.io/)

## Wich Helpers this base do have?

### React Component
This helper is a easier way to call React component from Rails view.

		*= react_component 'ComponentName', props: :some_props*