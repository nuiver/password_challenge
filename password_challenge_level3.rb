def passwordcheck_1(p)
	if p.length < 10
		puts "Password failed"
	else
		puts "Password accepted"
	end
end

def passwordcheck_2(p)
	un = p.match /[a-z]/
	up = p.match /[A-Z]/
	nu = p.match /\d/
	sp = p.match (/\W/)
	un == nil || up == nil ? ( lt = nil ) : (lt = true)
	if lt == nil &&  nu != nil && sp != nil
		pass_bolean = true
	elsif lt != nil && nu == nil && sp != nil
		pass_bolean = true
	elsif lt != nil && nu != nil && sp == nil
		pass_bolean = true
	elsif lt != nil &&  nu != nil && sp != nil
		pass_bolean = true
	else
		pass_bolean = false
	end
	if pass_bolean == true
		puts "Password accepted"
	else
		puts "Password failed"
	end
	return pass_bolean
end

def passwordcheck_3(p)
	wordlist = ["the", "be", "to", "of", "and", "in", "that", "have", "it", "for", "not", "on", "with", "he", "as", "you", "do", "at", "this", "but", "his", "by", "from", "they", "we", "say", "her", "she", "or", "an", "will", "my", "one", "all", "would", "there", "their", "what", "so", "up", "out", "if", "about", "who", "get", "which", "go", "me", "when", "make", "can", "like", "time", "no", "just", "him", "know", "take", "people", "into", "year", "your", "good", "some", "could", "them", "see", "other", "than", "then", "now", "look", "only", "come", "its", "over", "think", "also", "back", "after", "use", "two", "how", "our", "work", "first", "well", "way", "even", "new", "want", "because", "any", "these", "give", "day", "most", "us"]
	word_check = false
	pass_bolean = false
	wordlist.each do |i|
		word_check = true if p.match i
		if word_check == true
			puts "Password failed because it contains the word '#{i}'"
			pass_bolean = false
		end
		break if word_check == true
	end
	if word_check != true
		un = p.match /[a-z]/
		up = p.match /[A-Z]/
		nu = p.match /\d/
		sp = p.match (/\W/)
		un == nil || up == nil ? ( lt = nil ) : (lt = true)
		if lt == nil &&  nu != nil && sp != nil
			pass_bolean = true
		elsif lt != nil && nu == nil && sp != nil
			pass_bolean = true
		elsif lt != nil && nu != nil && sp == nil
			pass_bolean = true
		elsif lt != nil &&  nu != nil && sp != nil
			pass_bolean = true
		else
			pass_bolean = false
		end
		if pass_bolean == true
			puts "Password accepted"
		else
			puts "Password failed because of the characters"
		end
	end
	#puts pass_bolean
	return pass_bolean
end

#tests
passwordcheck_3("Tthlad!iola")
passwordcheck_3("22thing!11")
passwordcheck_3("22thiag11")
