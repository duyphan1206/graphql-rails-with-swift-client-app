# README

Step by step that i had working on this project

* Generate Rails API new project : `rails new todos-api --api -T`. Option **--api** argument to tell Rails that we want an API application. Option **-T** to exclude Minitest the default testing framework
* Add gem for testing : **rpec-rails, factory_girl_rails, shoulda_matchers, database_cleaner, faker**
* Run `bundle install` to update
* Initialize the spec directory (where our tests will reside) by run `rails generate rspec:install`
* Create a factories directory. This is where we will define the model factories by run `mkdir spec/factories`
* Update configuration in spec/rails_helper.rb
* Generating the Todo model by run `rails g model Todo title:string created_by:string`
* Writing some testcase and run it by `bundle exec rspec`
* Run rails app by `rails s`
* Open browser and type `http://localhost:3000` to show result
* ...
