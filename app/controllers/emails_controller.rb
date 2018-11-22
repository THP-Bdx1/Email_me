class EmailsController < ApplicationController
  def index
    @emailspage = Email.order('created_at DESC')
    @emails=Email.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def display
  
    @emails=Email.all
    @mail = Email.find(params[:mail_id])
    @mail.update(read: true)

    puts "Les params 2 #{params}"
    puts "Voici le mail #{@mail.object}"
    respond_to do |format|
      format.html
      format.js
    end
    
  end

  def destroy
  @mail = Email.find(params[:mail_id])

      respond_to do |format|
      format.html
      format.js { render :layout => false }
    end
      @mail.destroy
  end

  def unread
      @mail = Email.find(params[:mail_id])
      @mails=Email.all
      @mail.update(read: false)
      respond_to do |format|
        format.html
        format.js
      end
  end

end
