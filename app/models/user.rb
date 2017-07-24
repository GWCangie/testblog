class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
         :recoverable, :rememberable, :trackable,:validatable, :confirmable
   attr_accessor :email, :password, :password_confirmation, :remember_me, :user_name
       end

def will_save_change_to_email?
end
=======
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

      attr_accessor :email, :password, :password_confirmation, :remember_me, :username


  def will_save_change_to_email?
  end


end
>>>>>>> sengrindtesting
