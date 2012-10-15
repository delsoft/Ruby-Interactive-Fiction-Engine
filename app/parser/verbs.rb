# encoding: utf-8
 
module NLP
  
  class Words
    
    def initialize words
      super
      @words = []
      
      add_range words
      
      init
      
    end
  
    def add word
      word = word.downcase.to_sym
      @words << word unless @words.include? word
    end  
    
    def add_range words
      words.each { |word| add word }
    end
   
    
  end # words
  
  class Verbs < Words
    def init
      add_words %w(vá)
    end
    
  end
  
  
  
  
end
