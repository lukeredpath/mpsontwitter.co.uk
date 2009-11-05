class MP
  attr_accessor :member_id
  attr_accessor :full_name, :constituency, :party
  attr_accessor :twitter_username
  
  def initialize(attrs = {})
    attrs.each do |key, value|
      send("#{key}=", value) if respond_to?(key)
    end
  end
  
  def check_twitter_status
    self.twitter_username = TwitterStatusChecker.load.check(self)
  end
  
  def url
    "uk.org.publicwhip/member/#{member_id}"
  end
end
