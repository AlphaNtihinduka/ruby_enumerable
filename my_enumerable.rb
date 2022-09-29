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
            if(yield e) == true
                checked=true
                break
            end
        end
        puts checked
    end
end