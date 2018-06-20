class User <ActiveRecord::Base
  has_secure_password
  has_many :posts
  has_many :teas

  def friends
    friends = []
    self.posts.each do |post|
      post.tea.posts.each do |p|
        friends << p.user if !friends.include?(p.user) && self.id != p.user.id
      end
    end
    friends
  end
end
