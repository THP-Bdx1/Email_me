class EmailsController < ApplicationController
  def index
    @emails=Email.all
  end

  def display
        puts "Les params 1 #{params}"
        @emails=Email.all
    @mail = Email.find(params[:mail_id])
    puts "Les params 2 #{params}"
    puts "Voici le mail #{@mail.object}"
    respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
  @mail = Email.find(params[:mail_id])
  @mail.destroy
      respond_to do |format|
      format.html
      format.js { render :layout => false }
    end
  end

end
