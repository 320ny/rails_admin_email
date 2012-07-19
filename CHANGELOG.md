## 0.0.1.alpha (June 18, 2012) ##

* Ability to send basic email from a model instance.
* Can configure what models to include email functionality for by altering `config/initalizers/rails_admin.rb`settings with:

	```ruby
	config.rails_admin_email do |config|
    	config.include_models = ['AwesomeModel', 'SuperCoolUser']
  	end
  	```