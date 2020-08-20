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

def get_japanese_emoticon(file_path, emoticon)
  #code goes here
  library = load_library(file_path)
  result = library["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  #code goes here
  library = load_library(file_path)
  result = library["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
