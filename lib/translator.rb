# require modules here

def load_library(library)
  # code goes here
  require 'yaml'
  hash = YAML.load_file(library)
  library = {
    get_meaning: {},
    get_emoticon: {}
  }
  hash.each do |key, value|
    library[:get_meaning] = "value"
  end 
  library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end