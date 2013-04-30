require 'securerandom'

class Link < ActiveRecord::Base
  attr_accessible :link_in, :link_out
  before_create :create_key

  def get_link
  	:link_out
  end

  def create_key
    self.link_in = SecureRandom.urlsafe_base64(4) 
  end

end
