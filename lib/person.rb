# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene, :friend #:person 
    attr_reader :name
    # bank = []
    def initialize(name, bank_account = 25)
        #name_hash = {}
        #@name_hash.each do |person, name|
        #@person = person
        @name = name
        @bank_account = bank_account
        @happiness = 8
        @hygiene = 8
        @friend = friend
    end

        def happiness=(happiness)
        if happiness < 0 
            @happiness = 0
        elsif happiness > 10
                 @happiness = 10
        else
            @happiness = happiness
        end 
    end 
       def hygiene=(hygiene)
        if hygiene < 0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else
            @hygiene = hygiene
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
        return 'all about the benjamins'
    end

    def take_bath
        self.hygiene=(self.hygiene + 4)

        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else 
        @hygiene = hygiene
        end
    
    end

    def work_out
        self.hygiene=(self.hygiene - 3)
        self.happiness=(self.happiness + 2)
        return "♪ another one bites the dust ♫"
    end
    def call_friend(person)
        self.happiness=(self.happiness + 3)
        person.happiness=(person.happiness + 3)
        if self
        return "Hi Felix! It's Penelope. How are you?"
        else
            return "Hi Penelope! It's Felix. How are you?"
        end

    end


    end 