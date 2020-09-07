# A proc defined inside a method will return like a lambda
def run_2_procs(a, b)
  a.call
  b.call
end

proc_1 = proc {puts 'this is proc 1'}
proc_2 = proc {puts 'this is proc 2'}
proc_3 = proc { |a, b, c| puts "#{a} #{b} #{c}"}
l1 = -> { puts 'This is a lambda'; return }

proc4 = proc { puts 'This is a proc'; return }

def return_proc_vs_lambda(p)
  puts 'Starting a proc/lambda'
  p.call
  puts 'Finished running proc/lambda'
end

# return_proc_vs_lambda proc4

# proc4.call

# run_2_procs proc_1, proc_2
# proc_3.call(1, 2, 3, 4)

l = ->(a, b, c) { puts "#{a} #{b} #{c}" }
# l.call(1, 2, 3)

def test
  puts 'inside'
  my_proc = proc { return('ahihi') }
  puts "Proc result: #{my_proc.call}"
  puts 'arstnioarst'
end

a = test
puts a.class
