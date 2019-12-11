class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def greater_than_less_than(score)
        if score < 0
            score = 0
        elsif score > 10
            score = 10
        else
            score
        end
        score
    end
    def happiness=(happiness)
        @happiness = happiness
        @happiness = greater_than_less_than(@happiness)
    end
    def hygiene=(hygiene)
        @hygiene = hygiene
        @hygiene = greater_than_less_than(@hygiene)
    end
    def clean?
        @hygiene > 7
    end
    def happy?
        @happiness > 7
    end
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene +=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end
