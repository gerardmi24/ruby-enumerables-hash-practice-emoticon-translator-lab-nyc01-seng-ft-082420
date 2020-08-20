# require modules here
require 'yaml'

def load_library(file_path)
  #code goes here
  emojis = YAML.load_file(file_path)
  new_hash = {}
  emojis.each do |key, value|
    new_hash[key] = {}
    new_hash[key][english:] = value[0]
    new_hash[key][japanese:] = value[1]
  end
  new_hash
end

def get_japanese_emoticon(file_path, emojis)
  #code goes here
  library = load_library(file_path)
  emojis = library.keys.find do |key|
    library[key][english:] == emojis
  end
  emojis ? library[emojis][japanese:] : "Sorry, that emoji was not found"
end

def get_english_meaning(file_path, emojis)
  #code goes here
  library = load_library(file_path)
emojis = library.keys.find do |key|
  library[key][japanee:] == emojis
end
emojis ? emojis : "Sorry, that emoji was not found"
end
