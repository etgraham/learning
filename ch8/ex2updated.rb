line_width = 75
puts("Table of Contents".center(line_width))
Names = [("Chapter 1: Getting Started".ljust(line_width/2)), ("Chapter 2: Numbers".ljust(line_width/2)), ("Chapter 3: Letters".ljust(line_width/2))]
PageNumber = [("page  1".rjust(line_width/2)), ("page  9".rjust(line_width/2)), ("page 13".rjust(line_width/2))]
Names.each_with_index {|a,i| 
print a
puts PageNumber[i]
}
