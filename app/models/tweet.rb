class Tweet < ActiveRecord::Base
  validates_presence_of :status
end
