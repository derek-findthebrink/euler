_ = require("underscore")

# determine how to find prime numbers

# function to get multiples of a number

# filter out non-prime numbers

# make list of prime numbers

isOdd = (num)->
	if 0 != num % 2
		return true
	return false

isPrime = (num)->
	a = Math.floor(Math.sqrt(num))
	checkComplete = false
	# runCount = 0
	check = (x)->
		# console.log(x)
		if x < 2
			checkComplete = true
			# console.log("%s is prime!", num)
			return true
		else if num % x == 0
			checkComplete = true
			# console.log("%s is not prime! ", num, "divided by " + x)
			return false
		else
			# console.log("ran %s times", runCount)
			a = x - 1
	while !checkComplete
		c = check(a)
	return c

findMultiples = (num)->
	final = "none found!"
	# i is the upper limit of count
	i = Math.floor(num / 2)
	if i % 2 == 0
		i--
	check = (cnt)->
		console.log(cnt)
		# console.log(cnt)
		n = num % cnt
		if n == 0 and isPrime(cnt)
			console.log(cnt)
			return final = cnt
		if cnt <= 1 
			return final
		n = undefined
		y = cnt - 2
		z = ()->
			check(y)
		setImmediate(z)
	check(i)

genPrimesTo = (num)->
	arr = []
	check = (y)->
		if y >= num
			return arr
		if isPrime(y)
			arr.push(y)
		z = y + 1
		allowGC = ()->
			check(z)
		setImmediate(allowGC)
	check(1)
	




num = 13195
num = num * 135
# num = 600851475143
console.log(findMultiples(num))
# console.log(genPrimesTo(num))

# console.log(findMultiples(24))
# console.log(findMultiples(7))
# console.log(findMultiples(165))


exports = module.exports = {
	isPrime: isPrime
	findMultiples: findMultiples
	genPrimesTo: genPrimesTo
}