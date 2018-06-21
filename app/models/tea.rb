class Tea <ActiveRecord::Base
  has_many :posts
  belongs_to :user

  def self.sort_by_type
    tea_hash = {Black: [], Green: [], Oolong: [], Puerh: [], White: [], Yellow: []}
    all.each { |t| tea_hash[:"#{t.oxidation}"] << t}
    tea_hash
  end

  def self.finder(params)
    find_by(name: params[:name]) || find_by(name: params[:aka]) || find_by(aka: params[:name])
  end
end
