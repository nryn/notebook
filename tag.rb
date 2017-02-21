class Tag

  attr_reader :tag_name

  private

  @@tags = []

  def initialize
    choose_tag
  end

  def choose_tag
    puts "here are all the current tags:"
    @@tags.each { |tag|
      puts tag
    }
    puts "write your tag:"
    @tag_name = gets.chomp
    @@tags << @tag_name unless @@tags.include? @tag_name
  end

end
