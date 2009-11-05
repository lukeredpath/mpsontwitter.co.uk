class TwitterStatusChecker
  def initialize(data_file)
    @data_file = data_file
  end
  
  def check(mp)
    
  end
  
  def self.load
    new(File.join($APPLICATION_ROOT, 'data', 'list.csv'))
  end
end