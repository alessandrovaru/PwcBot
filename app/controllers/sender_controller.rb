class SenderController < ApplicationController

    def index
      @telegramusers= TeleNotify::TelegramUser.all

      @messages = Message.all
    end


  def create

    @hola=params[:message]

    require "uri"
    require "net/http"
    require 'net/http/post/multipart'

    #IDS PARA PRUEBAS
      #332541532
      #"@PwC_Venezuela"

    id = "@PwC_Venezuela"


    token = "433749830:AAEhbBaPZIhZC5bGzmwwBZZ7NgzH5ZfcdCA"




    params = {'chat_id' => id,
    'text' => @hola
    }
    @x = Net::HTTP.post_form(URI.parse("https://api.telegram.org/bot" + token + "/sendMessage"), params)

  end


end
