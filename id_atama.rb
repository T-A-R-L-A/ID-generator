# ID-router project
# Alan ve Stajyer-Çalışan seçme işlemi
# with Switch Statement

# The Function for subproject selection
def select_subproject(selection)
  case selection
  when '1'
    $id1 = '1'
  when '2'
    $id1 = '2'
  when '3'
    $id1 = '3'
  when '4'
    $id1 = '4'
  when '5'
    $id1 = '5'
  when '6'
    $id1 = '6'
  when '7'
    $id1 = '7'
  when '8'
    $id1 = '8'
  when '9'
    $id1 = '9'
  when '10'
    $id1 = '10'
  else
    $id1 = false
  end
end

$count1 = 101
$count2 = 999
# The Function for position selection
def select_position(selection)
  # Switch statement converted to if-else statement and counter worked
    if selection == '1' then
      $id2 = $count1
      $count1 += 1
    elsif selection == '2' then
      $id2 = $count2
      $count2 -= 1
    else
      $id2 = false
    end
end
# The Funcion for slection checking
def check_selection(id_a,id_b)
  # check system for wrong choices
  if ( id_a == false || id_b == false ) then
    puts "Your choice is wrong!"
    $id = 'No!'
  else
    $id = id_a + id_b.to_s
  end
end

while 1 do
  puts "Please select your subproject: "
  subprojects = ['Management','Beam Physics','Control','Electric','Electronics','IT','Mechanical Systems','RF','Vacuum','Radiation Safety']
  i = 1
  subprojects.each do |value|
    puts "#{i}- #{value}"
    i += 1
  end
  selection1 = gets.chomp

  select_subproject(selection1)

  puts "Are you employee or intern?"
  print " 1-Employee\n 2-Intern\n"
  selection2 = gets.chomp

  select_position(selection2)
  check_selection($id1,$id2)

  puts "Your ID: #{$id}"

  if $id != 'No!' then   # if choices are true , continue; else back to top
    #Did or will it continue or end of the cycle that determines the code block
    puts "Do you want to add a new one?(Y/N)"
    selection3 = gets.chomp
    if (selection3 == 'Y' || selection3 == 'y') then
      puts "Please select your subproject: "
      subprojects = ['Management','Beam Physics','Control','Electric','Electronics','IT','Mechanical Systems','RF','Vacuum','Radiation Safety']
      i = 1
      subprojects.each do |value|
        puts "#{i}- #{value}"
        i += 1
      end
      selection1 = gets.chomp

      select_subproject(selection1)

      puts "Are you employee or intern?"
      print " 1-Employee\n 2-Intern\n"
      selection2 = gets.chomp

      select_position(selection2)
      check_selection($id1,$id2)

      puts "Your ID: #{$id}"
    elsif (selection3 == 'N' || selection3 == 'n')
      break
    else
      puts "Your choice is wrong!"
    end
  end
# The user enters an incorrect character, it warns
  while(1) do
    puts "Do you want to add a new one?(Y/N)"
    selection3 = gets.chomp
    if (selection3 == 'N' || selection3 == 'n')
      break
    elsif (selection3 == 'Y' || selection3 == 'y')
      break
    else
      puts "Your choice is wrong!"
    end
  end
  if (selection3 == 'N' || selection3 == 'n')
    break
  end
end
