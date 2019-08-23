# require modules here
require 'yaml'

def load_library(yaml)
  # code goes here
  hash = YAML.load_file(yaml)
  library = {
    get_meaning: {},
    get_emoticon: {}
  }
  hash.each do |english_word, emoticons|
    library[:get_meaning][emoticons.last] = english_word
    library[:get_emoticon][emoticons.first] = emoticons.last
  end 
  library
end

def get_japanese_emoticon(yaml, emoticon)
  hash = load_library(yaml)
  meaning = hash[:get_emoticon]
  found_emoticon = nil 
  if emoticon
    temp = meaning.find {|key, value| key == emoticon}
    found_emoticon = temp
  else
    return "Sorry, I don't know what you mean!"
  end
  found_emoticon
end

def get_english_meaning
  # code goes here
end