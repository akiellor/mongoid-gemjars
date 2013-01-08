require 'mongoid'
require 'catalog/artist'

Mongoid.load!("classpath:/mongoid.yml", :development)

describe Catalog::Artist do
  before :each do
    Mongoid::Sessions.default.drop
  end

  it 'should save and find an artist' do
    Catalog::Artist.create(:name => "Silverchair").save!

    Catalog::Artist.count.should == 1
  end
end