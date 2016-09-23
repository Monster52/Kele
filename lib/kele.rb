require 'httparty'

class Kele
  include HTTParty
  base_uri 'https://www.bloc.io/api/v1'
  @session = 'https://www.bloc.io/api/v1/sessions' # need user email and password

  def initialize(email, password)
    @options = {
      basic_auth: {
        email: email,
        password: password
      }
    }
  end

  def token
    p self.class.post("/sessions", @options)
  end

end
