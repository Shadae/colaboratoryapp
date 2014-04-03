class Provider < ActiveRecord::Base

  def self.create_with_omniauth(auth_hash, user_id)
    self.create!(
      user_id: user_id,
      uid: auth_hash['uid'],
      username: auth_hash['info']['nickname'],
      avatar: auth_hash['info']['image'],
      token: auth_hash['credentials']['token'],
      secret: auth_hash['credentials']['secret'],
      email: auth_hash['info']['email'],
      type: auth_hash['provider'].titleize
      )
    
  end
end