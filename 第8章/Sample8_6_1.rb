module Library
  class Book
    def initialize(title, author, genre)
      @title = title
      @author = author
      @genre = genre
    end
  end
end

module Train
  class Book
    def initialize(name, seat, date)
      @name = name
      @seat = seat
      @date = date
    end
  end
end

p Library::Book.new('坊っちゃん', '夏目漱石', '小説')
# #<Library::Book:0x00007fc5d20a5fb0 @title="坊っちゃん", @author="夏目漱石", @genre="小説">

p Train::Book.new('田中太郎', '7-A-3', '2021-8-14')
# #<Train::Book:0x00007f9c94091db0 @name="田中太郎", @seat="7-A-3", @date="2021-8-14">