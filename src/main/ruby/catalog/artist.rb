require 'mongoid'
require 'catalog/instrument'

module Catalog
  class Artist
    include Mongoid::Document
    field :name, :type => String
    embeds_many :instruments
  end
end
