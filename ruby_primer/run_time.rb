=begin
Time to run code

Problem Statement
You are given some code in the form of lambdas.
Measure and return the time taken to execute that code.
You may use Time.now to get the current time.
=end

def exec_time(proc)
  start = Time.now
  proc.call
  return (Time.now - start)
end