# frozen_string_literal: true

# define MyEnumerable file
module MyEnumerable
  def all?
    check = true
    @list.each do |e|
      if (yield e) == false
        check = false
        break
      end
    end
    puts check
  end

  def any?
    checked = false
    @list.each do |e|
      if (yield e) == true
        checked = true
        break
      end
    end
    puts checked
  end

  def filter
    filtered = []
    @list.each do |i|
      filtered.push(i) if (yield i) == true
    end
    print filtered
  end
end
