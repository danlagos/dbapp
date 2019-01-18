class PhonesController < ApplicationController
   def index
     @phones = Phone.all
   end

    def new
      @phone = Phone.new
    end

    def create
      @phone = Phone.create(phone_params)
      if @phone.valid? #validation is in models
        redirect_to phones_path
      else
        render :new
      end
      # @phone = Phone.new(phone_params)
      # if @phone.save?
      #   redirect_to phones_path
      # else
      #   render :new
      # end

    end

    private

    def phone_params
      params.require(:phone).permit(:number, :manufacturer)
    end
end
