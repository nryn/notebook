# Notebook Skills Workshop

Workshop exercise on domain modelling.


## Usage

- `cd` to repo's root directory and use `irb` to `require './notebook.rb'`
- you can create a notebook by `notebook = Notebook.new`
- you can then interact with it in 3 ways:
	- `notebook.create_note` to create a note. when saving, you're prompted to save it with a tag, and also reminded of all existing tags.
	- `notebook.search_notes` returns all your notes, one after the other
		- if you want to filter your search, you can call this with a string argument, which is the tag you made when you created a note.
		- `notebook.search_notes("sports")`
	- `notebook.print_note_count` to show you how many notes you have.
