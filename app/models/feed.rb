class Feed < ActiveRecord::Base
  def initialize(*args)
    super
    self.token ||= ActiveSupport::SecureRandom.hex(16)
  end
  
  def to_param
    self.token
  end
  
  def self.from_param(param)
    self.find_by_token(param)
  end
end
