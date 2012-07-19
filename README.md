# Welcome to Rails Admin Email

This an extention to the popular Ruby on Rails admin interface, [Rails Admin][rails_admin].
This gem allows you to include an email action on any model instance.
The email action will allow the Admin user to send emails through the Rails Admin interface.
Developed by [320ny](http://320ny.com)

## Installation
In your `Gemfile`, add the following dependencies:
	
	gem 'rails_admin' # If not included already
	gem 'rails_admin_email', , :git => "https://github.com/320ny/rails_admin_email.git"

Run:

	$ bundle install

Install and configure Rails Admin according to their [docuementation][rails_admin].

[rails_admin]: https://github.com/sferik/rails_admin

You need to tell Rails Admin Email what models you would like to have the email functionality included for.
Modify your `config/initializers/rails_admin.rb` by adding:

```ruby
RailsAdmin.config do |config|

	config.rails_admin_email do |config|
    	config.include_models = ['AwesomeModel', 'SuperCoolUser']
  	end
  	
end
```

Make sure your email settings are configured for ActiveMailer.

Restart you server and you should be good to go.

## Default Behavior

When a model in Rails Admin uses the email functionality an email form will display with the following fields:

* To # Will autopotulate with `model.email` if the model has an email field
* From # Will autopotulate with the email of the current admin user
* CC # Same as From
* Subject # Blank
* Message # Blank

## Screenshots
![Email Action View](https://github.com/320ny/rails_admin_email/raw/master/screenshots/email_action.png "email action view")

## To Do

* Testing
* Add ability to configure To, From, and CC defaults for each model
* Email templates
** Allow user to select from a list of templates. 
** Once selected the template will populate the Subject and Message fields
** Templates will be derived from another model in the DB
** Template base model and default fields can be configured for each model that employes rails_admin_email
* Revise email UI
* Ability to send email to multiple email addresses


## License

Rails Admin Email is released under the MIT license:

[http://www.opensource.org/licenses/MIT](http://www.opensource.org/licenses/MIT)