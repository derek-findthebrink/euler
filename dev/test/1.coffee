should = require('should')
assert = require('assert')

describe('Modulo', ()->
	describe("by itself", ()->
		it("should return 0 when operated on by itself", ()->
			assert.equal(0, 3 % 3)
			assert.equal(0, 5 % 5)
			assert.equal(0, -1 % -1)
			assert.equal(1, 16 % 5)
			)
		)
	describe("comparator", ()->
		it("should compare correctly with 0", ()->
			assert.equal(true, 3 % 3 == 0)
			assert.equal(true, 10 % 5 == 0)
			assert.equal(true, 12 % 3 == 0)
			assert.equal(true, 12 % 4 == 0)
			assert.equal(false, 4 % 12 == 0)
			)
		)
	)