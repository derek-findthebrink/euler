assert = require("assert")
t = require('../build/3')

describe("isPrime", ()->
	it("returns true if a number is prime", ()->
		assert.equal(true, t.isPrime(7))
		assert.equal(true, t.isPrime(3))
		assert.equal(true, t.isPrime(1))
		assert.equal(false, t.isPrime(4))
		assert.equal(false, t.isPrime(6))
		assert.equal(false, t.isPrime(28))
		assert.equal(false, t.isPrime(114))
		)
	)

describe("findMultiples", ()->
	it("finds the first prime multiple of a number", ()->
		assert.equal(29, t.findMultiples(13195))
		assert.equal(5, t.findMultiples(15))
		assert.equal(5, t.findMultiples(10))
		assert.equal(3, t.findMultiples(27))
		))

# describe("genPrimesTo", ()->
# 	it("generates a list of prime numbers up to input", ()->
# 		assert.deepEqual(, t.genPrimesTo(15))))