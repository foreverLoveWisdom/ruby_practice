def run_2_procs(a, b)
  a.call
  b.call
end

proc_1 = proc {puts 'this is proc 1'}
proc_2 = proc {puts 'this is proc 2'}
proc_3 = proc { |a, b, c| puts "#{a} #{b} #{c}"}

run_2_procs proc_1, proc_2
proc_3.call(1, 2, 3, 4)

l = ->(a, b, c) { puts "#{a} #{b} #{c}" }
l.call(1, 2, 3, 4)
