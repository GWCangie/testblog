class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :user
  #changes state to false 
  validates_uniqueness_of :email, :allow_blank => false

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,:validatable, :confirmable
   attr_accessor :email, :password, :password_confirmation, :remember_me, :user_name
  end



  def will_save_change_to_email?
  end


