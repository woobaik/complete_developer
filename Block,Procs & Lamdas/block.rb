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


# any?
# map
