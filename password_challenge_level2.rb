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

passwordcheck_1("password")
passwordcheck_1("thisIsALongerPassword")

passwordcheck_2("thisIsALongerPassword")
passwordcheck_2("Unicorn!125")