# # begin to build a simple program that 
# models Instagram you should have a
#  User class, a Photo class and a comment
#   class


# program inst

photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]



photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]


########## PROGRAM ############



class Photo
  attr_accessor :comments
  attr_reader :user

  def initialize
    @comments = []
  end

  def make_comment(comment_content)
    comment_content = Comment.new(comment_content)
    @comments << comment_content
  end

  def user=(user)
    @user = user
    user.photos << self
  end
end



class User
attr_accessor :name

   def initialize(name)
   @name = name
   @photo_array = []
   end

   def photos
   @photo_array
   end

end


class Comment
@@all = []

  def initialize(new_comment_string)
    @text = new_comment_string
    @@all << self
  end

  def self.all
    @@all
  end

end
