class Feed < ActiveRecord::Base
  def initialize(*args)
    super
    self.token ||= ActiveSupport::SecureRandom.hex(16)
  end
end
