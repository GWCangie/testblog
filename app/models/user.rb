class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

      attr_accessor :email, :password, :password_confirmation, :remember_me, :username


  def will_save_change_to_email?
  end


end
