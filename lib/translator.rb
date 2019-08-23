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
  found_emoticon = hash[:get_emoticon][emoticon]
  if found_emoticon.nil?
    found_emoticon = "Sorry, that emoticon was not found"
  end
  found_emoticon
end

def get_english_meaning(yaml, meaning)
  hash = load_library(yaml)
  found_meaning = hash[:get_meaning][meaning]
  if found_meaning.nil?
    found_meaning = "Sorry, that emoticon was not found"
  end
  found_meaning
end