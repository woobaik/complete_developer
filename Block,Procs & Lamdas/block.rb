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
