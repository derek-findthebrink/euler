_ = require("underscore")

limit = 1000

listed = (cb, cb2)->
	arr = []
	i = 0
	checkNum = (num, x)->
		if (0 == (x % num))
			return true
		else 
			return false
		return x % num

	while (i < limit)
		if (checkNum(3, i))
			arr.push(i)
			i++
		else if (checkNum(5, i))
			arr.push(i)
			i++
		else
			i++
	cb(arr, cb2)

sum = (memo, num)->
	return memo + num

addNumbers = (narr, nfn)->
	a = _.reduce(narr, sum, 0)
	return a

a = listed(addNumbers, console.log)
console.log("Program result is: ", a)
