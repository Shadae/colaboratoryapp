class Content < ActiveRecord::Base
  belongs_to :user
  belongs_to :provider

  # def search(search_term)
  #   User.where("username LIKE ? OR name LIKE ?", search_term, search_term)
  # end
end
