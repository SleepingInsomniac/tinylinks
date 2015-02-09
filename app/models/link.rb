class Link < ActiveRecord::Base
  
  require 'digest/sha1'
  
  def full=(value)
    self.short = short_hash
    super(value)
  end
  
  def short_hash
    (Digest::SHA1.hexdigest Time.now.to_f.to_s)[0...4]
  end

end
