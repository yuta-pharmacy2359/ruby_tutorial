module Library
end

class Library::Book
  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre
  end
end

p Library::Book.new('雪国', '川端康成', '小説')
# #<Library::Book:0x00007fd1cc8667f8 @title="雪国", @author="川端康成", @genre="小説">