# your code goes here
class Person
  attr_reader :name, :happiness, :hygiene
  # attr_writer
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num < 0
      @happiness = 0
    else
      @happiness = num
    end
  end

  def hygiene=(num)
    if num > 10
      @hygiene = 10
    elsif num < 0
      @hygiene = 0
    else
      @hygiene = num
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene=(self.hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def work_out
    self.hygiene=(self.hygiene - 3)
    self.happiness=(self.happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(person_class)
    self.happiness = self.happiness + 3
    person_class.happiness = person_class.happiness + 3
    "Hi #{person_class.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(arg, arg2)
    if arg2 == "politics"
      self.happiness = self.happiness - 2
      arg.happiness = arg.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif arg2 == "weather"
      self.happiness = self.happiness + 1
      arg.happiness = arg.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
