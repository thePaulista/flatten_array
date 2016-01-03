require 'pry'

  def my_flatten(array)
binding.pry
    result = []
    until array.empty?
      if array.first.is_a?(Array)
        if array.first.empty?
          array.shift
        else
          array << array.first.shift
        end
      else
        result << array.shift
      end
    end
    puts result
  end

my_flatten([3,[5, [2, 4]],[]])

# are you an array?
#    are you empty?
#     delete yourself
# if not, then go here, and
# empty out the first element
