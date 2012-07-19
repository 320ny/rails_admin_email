module RailsAdmin
  module Config
  	class << self

	  #
	  # Add to RailsAdmin configurations
	  #
	  def rails_admin_email(&block)
	    RailsAdminEmail::Config.instance_eval(&block) if block
	  end

    end
  end
end

module RailsAdminEmail
  module Config
 	class << self

	  # Configuration option to specify which models you want to inclide for email.
	  attr_accessor :include_models

    end
  end
end