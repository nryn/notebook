require_relative 'note'

class Notebook

  def initialize
    @notes = []
  end

  def create_note
    note = Note.new
    @notes << note
    puts "ready to go."
  end

  def search_notes(tag = false)
    if tag == false
      @notes.each {|note|
        puts note.note_text
      }
    else
    puts "no notes in this notebook!" if @notes.empty?
    @notes.each {|note|
      puts note.note_text if note.note_tags.include? tag
    }
    end
  end

  def print_note_count
    puts "There are #{@notes.length} notes in the Notebook."
  end

end
