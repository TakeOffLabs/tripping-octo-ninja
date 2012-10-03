class PagesController < ApplicationController

  def print
    @message = params[:message]

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "print", disposition: "attachment"
      end
    end
  end
end
