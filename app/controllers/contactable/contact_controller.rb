require_dependency "contactable/application_controller"

module Contactable
  class ContactController < ApplicationController

    def new
      @contact ||= Contact.new
      set_meta_tags title: t('.title')
    end

    def create
      @contact = Contact.new(contact_params)
      if @contact.valid? and Mailer.despatch(@contact).deliver
        redirect_to contact_path, notice: t('.notice')
      else
        render :new, alert: t('.alert')
      end
    end

    private
      def contact_params
        params.require(:contact).permit(:name, :email, :subject, :body) if params[:contact]
      end
  end
end