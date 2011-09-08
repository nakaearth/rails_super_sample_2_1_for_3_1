class User < ActiveRecord::Base
  scope :latest ,order('created_at desc') ##“o˜^“ú•t‚ÌV‚µ‚¢‡
  scope :young ,where('age < 10 and age >= 3') ##age‚ª3ˆÈã10‚æ‚è‚à‰º
  scope :teen ,where('age < 20 and age >= 10') ##age‚ª20‚æ‚è‚à‰º‚Å10ˆÈã
  validates :name, :presence => true, :length => {:minimum => 1, :maximum => 254}
  #validates :name, :presence => true, :ngword =>true
  validates :age, :presence =>true, :on => :create
  has_one :user_detail
end
