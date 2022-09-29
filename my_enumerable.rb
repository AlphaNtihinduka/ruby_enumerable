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
end