# ID atama
# alan seçme işlemi
puts "Please select your subproject: "
subprojects = ['Management','Beam Physics','Control','Electric','Electronics','IT','Mechanical Systems','RF','Vacuum','Radiation Safety']
i = 1
subprojects.each do |value|
  puts "#{i}- #{value}"
  i += 1
end
selection1 = gets.chomp

if selection1 == '1'
  $id1 = '01'
elsif selection1 == '2'
  $id1 = '02'
elsif selection1 == '3'
  $id1 = '03'
elsif selection1 == '4'
  $id1 = '04'
elsif selection1 == '5'
  $id1 = '05'
elsif selection1 == '6'
  $id1 = '06'
elsif selection1 == '7'
  $id1 = '07'
elsif selection1 == '8'
  $id1 = '08'
elsif selection1 == '9'
  $id1 = '09'
elsif selection1 == '10'
  $id1 = '10'
else
  puts "Your choice is wrong!"
  $id1 = 'No!'
end

puts "Your ID: #$id1"
