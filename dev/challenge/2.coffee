# Each new term in the Fibonacci sequence is generated by adding 
# the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose 
# values do not exceed four million, find the sum of the even-valued terms.


# Derek's challenges ->
# 	1. use underscore
# 	2. do not use any intermediate values -> no atomic assignments allowed!

_ = require('underscore')

evenTester = (num)->
	if 0 == num % 2
		return true
	else
		return false

fibonacciSum = ()->
	# generate next fibonacci number
	limit = 4000000
	curr = 1
	prev = 0

	sum = 0

	fib = [0]
	sumArr = [0]

	closure = (x, y)->
		fib.push(x)
		if evenTester(x)
			sum += x
			sumArr.push(x)
		prev = x
		curr = y + x
			
	while(curr < limit)
		closure(curr, prev)
	console.log(fib)
	console.log(sumArr)
	console.log(sum)

fibonacciSum()


exports = module.exports = evenTester
	# determine if equal

	# add numbers together