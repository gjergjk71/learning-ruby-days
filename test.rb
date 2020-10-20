class Customer
    @@no_of_customers = 0
    def initialize(id, name, addr)
       @cust_id = id
       @cust_name = name
       @cust_addr = addr
       @@no_of_customers += 1;
       puts @@no_of_customers
    end
    def print_out()
        puts @cust_name;
    end
    def self.handle_karen()
        puts "Yes, I'm the manager."
    end
end

cust1 = Customer.new(1,"Gjergj","Taslixhe")
cust2 = Customer.new(1,"Gjergj","Taslixhe")
cust3 = Customer.new(1,"Gjergj","Taslixhe")
cust1.print_out()
puts Customer.handle_karen()

a = 1
b = 1_000_000;
c = [1,2,3,"DDDD"]
puts (a + b + c[2]).to_i + 1.5;

c.each do |i,a|
    puts i;
    puts a;
end

d = {
    "a" => 2    ,
    "b" => 2
}

d.each do |key,value| 
    puts "%{key} + %{value}" % { :key => key, :value => value }
end

puts d["b"] + d["a"];

(0..10).each do |num|
    puts num;
end

=begin
asdasdasdasd
asd
asd
sd
sad
asd
=end
#dasdasdas

print "it's true\n" if true;
print "it's false\n" if true == false;


$years_exp = 15;
case $years_exp
when 1..2
    puts "Junior"
when 3..7
    puts "Mid"
when 8..15
    puts "Senior"
end

puts "-------------"

$i = 0;
while $i < 5 do 
    puts "i = #$i"
    $i += 1;
end

puts "-------------";

$i = 0
begin 
    puts "i = #$i";
    $i += 1;
end while $i < 5;

puts "-------------";

$i = 0;
while $i < 10
    puts $i
    $i += 1;
end

puts "--------------";

puts [1,2,3];

puts "--------------";

def test
    yield 5,2
    puts "You are in the method test"
    yield 100,3
 end
 test {|i,a| puts "You are in the block #{i}-#{a}"}

puts "--------------";

$a = 1;
puts "DASDAS #$a - #{1 + 3 + "5".to_i}"


names = Array.new(2,5)
puts "#{names}"

digits = Array(0..9)
num = digits.at(9)
puts "#{num}"

months = Hash.new( "month" )

puts "#{months[0]}"
puts "#{months[72]}"

print "Enter a value: "
$val = gets
puts "You entered: #$val"