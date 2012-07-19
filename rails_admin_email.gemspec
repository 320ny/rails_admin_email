$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_email/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_email"
  s.version     = RailsAdminEmail::VERSION
  s.authors     = ["Ryan Bennick"]
  s.email       = ["ryan@320ny.com"]
  s.homepage    = "https://github.com/bennick/rails_admin_email.git"
  s.summary     = "Enables an Email Action on a model instance in Rails Admin"
  s.description = %q{ RailsAdminEmail is an extention to the popular Ruby on Rails admin interface, Rails Admin.
  					  This gem allows you to include an email action on any model instance that meets certain criteria.
  					  The email action will allow the Admin user to send emails through the Rails Admin interface to an
  					  email address specified on the model instance. 	
  				 }

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.6"
end
