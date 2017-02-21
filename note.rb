require_relative 'tag'

class Note

  attr_reader :note_text, :note_tags

  private

  def initialize
    @note_text = ""
    @note_tags = []
    write_note
  end

  def write_note
    puts "write a note:"
    text = gets.chomp
    save_note(text)
  end

  def save_note(text)
    @note_text += text
    add_tag_to_note
    puts "note saved."
  end

  def add_tag_to_note
    puts "give your note a tag:"
    tag = Tag.new
    @note_tags << tag.tag_name
    puts "tag added."
  end

end
