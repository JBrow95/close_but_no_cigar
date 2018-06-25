def cigar(num,winnum)
	num = num.split("")
	winnum = winnum.split("")
	counter = 0
	num.each_with_index do |n, i| 
		if n == winnum[i]
			counter += 1
		end
	end
	counter
end

def cigararr() 

end