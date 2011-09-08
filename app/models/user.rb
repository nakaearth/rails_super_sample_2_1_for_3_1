class User < ActiveRecord::Base
  scope :latest ,order('created_at desc') ##�o�^���t�̐V������
  scope :young ,where('age < 10 and age >= 3') ##age��3�ȏ�10������
  scope :teen ,where('age < 20 and age >= 10') ##age��20��������10�ȏ�
  validates :name, :presence => true, :length => {:minimum => 1, :maximum => 254}
  #validates :name, :presence => true, :ngword =>true
  validates :age, :presence =>true, :on => :create
  has_one :user_detail
end
