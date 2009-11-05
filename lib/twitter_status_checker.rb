require 'fastercsv'

class TwitterStatusChecker
  def initialize(data_file)
    @data_file = data_file
  end
  
  def check(mp)
    FasterCSV.parse(File.read(@data_file), :headers => true) do |row|
      if mp.url == row['url']
        return row['twitter']
      end
    end
  end
  
  def self.load
    new(File.join($APPLICATION_ROOT, 'data', 'members.csv'))
  end
end