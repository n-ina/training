module StringExtensions
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, '')
    end

    def reverse
      'esrever'
    end
  end
end

# refinements needs using method
module StringStuff
  using StringExtensions
  p 'my_string'.reverse
  p 'my *1st* refinement!'.to_alphanumeric
end

p 'my_string'.reverse
