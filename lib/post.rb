class Post
  attr_accessor :author, :name
  @@all = []
  def initialize(post)
    @post = post
    @@all << self

  end
  def self.all
    @@all
  end
  def title
    @post
  end
  def author_name
    # binding.pry
    if self.author.name
      self.author.name
    else
      nil
    end

  end


end
