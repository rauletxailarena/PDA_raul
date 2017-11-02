var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })

  it('it should be able to add multiply two numbers', function(){
    calculator.numberClick(3)
    calculator.operatorClick("*")
    calculator.numberClick(5)
    calculator.operatorClick("=")
    assert.equal(calculator.runningTotal, 15)
  })

  it('it should be able to divide two numbers', function(){
    calculator.numberClick(21)
    calculator.operatorClick("/")
    calculator.numberClick(7)
    calculator.operatorClick("=")
    assert.equal(calculator.runningTotal, 3)
  })

  it('it should be able to add two numbers', function(){
    calculator.numberClick(1)
    calculator.operatorClick("+")
    calculator.numberClick(4)
    calculator.operatorClick("=")
    assert.equal(calculator.runningTotal, 5)
  })

  it('it should be able to subtract two numbers', function(){
    calculator.numberClick(7)
    calculator.operatorClick("-")
    calculator.numberClick(4)
    calculator.operatorClick("=")
    assert.equal(calculator.runningTotal, 3)
  })

  it('it should be able to concatenate multiple number button clicks', function(){
    calculator.numberClick(7)
    calculator.operatorClick("+")
    calculator.numberClick(4)
    calculator.numberClick(3)
    calculator.operatorClick("=")
    assert.equal(calculator.runningTotal, 50)
  })

  it('it should be able to concatenate multiple operations together', function(){
    calculator.numberClick(7)
    calculator.operatorClick("+")
    calculator.numberClick(4)
    calculator.numberClick(3)
    calculator.operatorClick("/")
    calculator.numberClick(10)
    calculator.operatorClick("=")
    assert.equal(calculator.runningTotal, 5)
  })
  it('it should be able to clear the running total without affecting the calculation', function(){
    calculator.numberClick(7)
    calculator.operatorClick("+")
    calculator.numberClick(4)
    calculator.numberClick(3)
    calculator.operatorClick("/")
    calculator.numberClick(10)
    calculator.operatorClick("=")
    calculator.clearClick()
    assert.equal(calculator.runningTotal, 0)
    assert.equal(calculator.previousTotal, 5)
  })



});
