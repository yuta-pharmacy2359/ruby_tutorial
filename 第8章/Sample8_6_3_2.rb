class Book
  def initialize(name, seat, date)
    @name = name
    @seat = seat
    @date = date
  end
end

module Library
  class Book
    def initialize(title, author)
      @title = title
      @author = author
      @train_book = ::Book.new('山田太郎', '3-B-5', '2021-5-18')
    end
  end
end

p Library::Book.new('走れメロス', '太宰治')
# #<Library::Book:0x00007fbafc08e3a0 @title="走れメロス", @author="太宰治", @train_book=#<Book:0x00007fbafc08e300 @name="山田太郎", @seat="3-B-5", @date="2021-5-18">>