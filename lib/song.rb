require 'pry'

class Song
  extend Memorable::ClassMethods, Findable::ClassMethods
  include Memorable:: InstanceMethods, Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
