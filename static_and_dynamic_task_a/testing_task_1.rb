### Testing task 1 code:

# Carry out static testing on the code below.
# Read through the code.
# Comment any errors you can see without correcting them.


def func1 val
  if val = 1 # use of assignment operator in a conditional statement
  return true # indentation error (no indentation)
  else
  return false # indentation error (no indentation)
  end
end

dif max a b # typo in word 'def'. 'dif' instead.
  if a > b
      return a #indentation error (extra indentation)
  else
  b # indentation error (no indentation)
  end
end
end # duplicated 'end' line

def looper
  for i in 1..10
  puts i # indentation error (no indentation)
end
# for the test to pass, the function should be returning the last value
# if i, which will be 10. Shoud add 'return i' after the first end
end

failures = 0

if looper == 10
  puts "looper passed"
else
  puts "looper failed"
  failures = failures + 1
# missing end keyword

if func1(3) == false
  puts "func1(3) passed"
else
  puts "func1(3) failed"
  failures = failures + 1
end


if max(100,1) == 100
  puts "max(100,1) passed"
else
  puts "func1(3) failed"
  failrues = failures + 1 #typo in 'failrues'. Should read 'failures'
end


if failures
  # for the test to pass 'failures' has to be evaluated to being greater than 0
  puts "Test Failed"
else
  puts "Test Passed"
end
