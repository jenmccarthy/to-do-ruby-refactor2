class List

  @@all_lists = []

  def List.all
    @@all_lists
  end

  def List.clear
    @@all_lists = []
  end

  def initialize(name)
    @name = name
    @tasks = []

  end

  def save
    @@all_lists << self
  end

  def tasks
    @tasks
  end

  def add_task(task)
    @tasks << task

  end

  def name
    @name
  end

  def tasks_by(criteria)

    if criteria == "p"
      @tasks.sort! {|a,b| b.priority <=> a.priority}
    elsif criteria == "n"
      @tasks.sort! {|a,b| a.description <=> b.description}
    elsif criteria == "d"
      @tasks.sort! {|a,b| a.date <=> b.date}
    end
  end

  # def tasks_by(criteria)
  #   self.sort_by {|self| self.criteria }
  # end

end
