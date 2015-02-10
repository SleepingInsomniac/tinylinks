class Link < ActiveRecord::Base
  
  require 'digest/sha1'
  
  before_create :set_short_hash
  
  def full=(value)
    unless value =~ /^http/
      value = "http://#{value}"
    end
    super(value)
  end
  
  def set_short_hash
    self.short = (Digest::SHA1.hexdigest Time.now.to_f.to_s)[0...4]
  end

end
