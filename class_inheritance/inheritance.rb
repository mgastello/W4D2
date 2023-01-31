class Employee
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus = salary * multiplier
    end

    protected
    attr_reader :name, :title, :salary, :boss
end

class Manager < Employee
    def initialize(name, title, salary, boss, employees)
        super(name, title, salary, boss)
        @employees = employees
    end

    def bonus(multiplier)
        employees
        .inject {|acc, ele| acc.salary + ele.salary}
    end
    attr_reader :employees
end

