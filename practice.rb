class Practice
  attr_accessor :weight
  attr_reader :read
  attr_writer :write

  @cla_ins_var = 1
  cla_var = 1

  def self.test_cla_1
    cla_var += 1
    @cla_ins_var += 1
  end

  def self.test_cla_2
    cla_var += 1
    @cla_ins_var += 1
    puts @cla_ins_var
  end

  def initialize(ahihi = nil)
    @h = ahihi
    @write = 1
  end

  def ins_test_1
    @write += 1
    cla_var += 1
    puts 'Printing the value of class var'
    puts cla_var
  end

  def inst_test_2
    puts @write
  end
end

p = Practice.new
Practice.test_cla_1
Practice.test_cla_2
p.ins_test_1
p.inst_test_2
