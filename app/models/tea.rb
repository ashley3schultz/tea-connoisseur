class Tea <ActiveRecord::Base
  has_many :posts
  belongs_to :user

  def self.type(tea_type)
    all.select { |t| t.oxidation == tea_type}
  end

  def self.finder(params)
    find_by(name: params[:name]) || find_by(name: params[:aka]) || find_by(aka: params[:name])
  end
end
