class RailsAdminMailer < ActionMailer::Base
	def email_model(hash)
      	@message = hash[:message]
    	mail(:to => hash[:to], :from => hash[:from],  :cc => hash[:cc], :reply_to => hash[:from], :subject => hash[:subject])
  end
end