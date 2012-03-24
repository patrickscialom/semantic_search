require File.join(File.dirname(__FILE__), '..', 'wget.rb')

describe Wget do
  
  describe '#cmd' do
    
    it "should return wget cmd" do
      Wget.cmd.include?('wget').should be true
    end
    
  end
  
end