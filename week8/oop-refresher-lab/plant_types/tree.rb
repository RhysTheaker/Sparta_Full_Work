module Tree

  def self.common_tree_traits
    puts "Trees are (generally) a very large type of plant"
  end

  class CommonTreeFacts

    def self.shed
      puts "(Most) trees will shed their leaves in order to conserve energy in the autumn/winter"
    end

  end

  class BigTree

    def big
      puts "Big trees are bigger than smaller trees"
    end

  end

  class SmallTree

    def small
      puts "Small trees are smaller than bigger trees"
    end

  end

end
