require "rails_admin_email/engine"
require "rails_admin_email/config"

module RailsAdminEmail
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config

    include RailsAdminEmail::Config

    module Actions
      class Email < Base
        RailsAdmin::Config::Actions.register(self)
        
        #
        # Controller
        #
        register_instance_option :controller do
          Proc.new do
            if request.post?
              RailsAdminMailer.email_model(params[:email]).deliver
              flash[:notice] = "Your email has been sent to #{params[:email][:to]}."
            end
            render :action => @action.template_name
          end
        end

        #
        # Configuration
        #

        register_instance_option :http_methods do
          [:get, :post]
        end

        register_instance_option :visible? do
          RailsAdminEmail::Config.include_models.include?(bindings[:object].class.to_s)
        end

        register_instance_option :member do
          true
        end

        

        register_instance_option :link_icon do
          'icon-envelope'
        end
      end
    end
  end
end

