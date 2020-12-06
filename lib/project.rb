class Project

    attr_accessor :title, :backers
  
    def initialize(title)
      @title = title
      @backers = []
    end
    
    def add_backer(backer)
      @backers << backer
      backer.backed_projects << self
      ProjectBacker.new(self, backer)
    end

end