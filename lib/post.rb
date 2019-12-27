class Post
  attr_accessor :author, :name
  @@all = []
  def initialize(post)
    @name = post
    @@all << self
  end

  def self.all
    @@all
  end

  def title
    @name
  end

  def author_name
    # binding.pry
    if self.author
      self.author.name
    else
      nil
    end
  end
end
