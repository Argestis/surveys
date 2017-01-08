class Survey < ActiveRecord::Base
    
    has_many :questions
    validates_presence_of :name
    accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true
    
end
