class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise *[:database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable,
           :omniauthable, omniauth_providers: [:twitter, :developper]]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :twitter_uid
  # attr_accessible :title, :body

  cattr_reader :admin_uids

  @@admin_uids = ["30605924", # eielh
                 ]

  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
    users = User.where(twitter_uid: auth.uid)
    user = users.first
    unless user
      user = users.create!(email: "#{auth.uid}-twitter@wtm.eiel.info",
                         password: Devise.friendly_token[0,20]
                         )
    end
    user
  end

  def admin?
    User.admin_uids.include? twitter_uid
  end
end
