class Author
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def posts
    Post.all
  end
  def add_post(post_to_add)
    new_post= Post.new(post_to_add)
    new_post.author = self
    new_post
  end
  def name
    @name
  end
  def self.post_count
    Post.all.length
  end
  def self.all
    @@all
  end
  def add_post(post_title)
    new_post, new_post.author = post_title, self
    # binding.pry

  end
  def add_post_by_title(post_title)
    new_post, new_post.author= Post.new(post_title), self

    # binding.pry
  end

end
