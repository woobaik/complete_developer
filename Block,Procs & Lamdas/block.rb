#Custom iterator methods

class Array
  def custom_each
    i = 0
    while i < self.length
      yield(self[i])
      i += 1
    end

    self
  end
end


class Array
  def group_by_criteria
    yes_group = []
    no_group = []

    self.each do |x|
      if yield(x)
        yes_group << x
      else
        no_group << x
      end
    end
    return [yes_group, no_group]
  end

end

# (1..10).to_a.group_by_criteria {|x| x.even? }

#
# select

class Array

  def custom_select
    selected_array = []
    self.each do |x|
      selected_array << x if yield(x)
    end
    selected_array
  end
end


# find

class Array
  def custom_find
    i = 0
    while i < self.length
      return self[i] if yield(self[i])
      i += 1
    end
  end
end


cube = Proc.new { |x| x ** 3 }

p cube.call(3)


def methods_with_proc(p1, arg)
  p1.call(arg)
end

p methods_with_proc(cube, 32)

#& convert proc to block <=> proc

p (1..10).map(&cube)


procs = [
  #standard procs
  Proc.new {|x,y| p x + y},
  proc {p "hello squirrels"},

  #lambda (special types of proc)
  lambda { |x| p x ** 2 },
  ->(name) {puts "Hello " + name }
]

p procs
