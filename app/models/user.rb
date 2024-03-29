class User < ActiveRecord::Base
  scope :latest ,order('created_at desc') ##登録日付の新しい順
  scope :young ,where('age < 10 and age >= 3') ##ageが3以上10よりも下
  scope :teen ,where('age < 20 and age >= 10') ##ageが20よりも下で10以上
  validates :name, :presence => true, :length => {:minimum => 1, :maximum => 254},:ngword=>true
  validates :age, :presence =>true, :on => :create
  has_one :user_detail
end
