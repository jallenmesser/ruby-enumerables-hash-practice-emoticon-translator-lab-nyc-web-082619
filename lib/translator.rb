# require modules here

def load_library(library)
  # code goes here
  require 'yaml'
  hash = YAML.load_file(library)
  library = {
    
  }
  hash.each do |key, value|
    hash[key][1]
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end