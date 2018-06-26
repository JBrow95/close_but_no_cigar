
def cigar(num,winnum)
	num = num.split("")
	winnum = winnum.split("")
	counter = 0
	num.each_with_index do |ticket, index| 
		unless ticket == winnum[index]
			counter += 1
		end
	end
	counter
end

def cigararr(mytickarray, winningtick) 
	ret = []
	mytickarray.each do |ticket|
		ret << cigar(ticket, winningtick)
	end
	ret     
end





