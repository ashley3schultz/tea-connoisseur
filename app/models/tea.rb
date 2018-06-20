class Tea <ActiveRecord::Base
  has_many :posts
  belongs_to :user

  def self.type(tea_type)
    all.select { |t| t.type == tea_type}
  end
end
