assert = require('assert')
evenTester = require('../build/2')

describe("even tester", ()->
	it("should return true if number is even", ()->
		assert.equal(true, evenTester(2))
		assert.equal(true, evenTester(4))
		assert.equal(true, evenTester(28))
		assert.equal(true, evenTester(-28))
		assert.equal(false, evenTester(-27))
		assert.equal(false, evenTester(-1))
		assert.equal(false, evenTester(3))
		assert.equal(false, evenTester(103))
		)
	)