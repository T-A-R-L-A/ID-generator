# ID-router project
# Alan ve Stajyer-Çalışan seçme işlemi
# with Switch Statement

# The Function for subproject selection
def select_subproject(selection)
  case selection
  when '1'
    id1 = '01'
  when '2'
    id1 = '02'
  when '3'
    id1 = '03'
  when '4'
    id1 = '04'
  when '5'
    id1 = '05'
  when '6'
    id1 = '06'
  when '7'
    id1 = '07'
  when '8'
    id1 = '08'
  when '9'
    id1 = '09'
  when '10'
    id1 = '10'
  else
    id1 = false
  end
end

count1 = 101
count2 = 999
# The Function for position selection
def select_position(selection)
  # Switch statement converted to if-else statement and counter worked
    if selection == '1' then
      id2 = count1
      count1 += 1
    elsif selection == '2' then
      id2 = count2
      count2 -= 1
    else
      id2 = false
    end
end
# The Funcion for slection checking
def check_selection(id_a,id_b)
  # check system for wrong choices
  if ( id_a == false || id_b == false ) then
    puts "Your choice is wrong!"
    id = 'No!'
  else
    id = id_a + id_b.to_s
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
  check_selection(id1,id2)

  puts "Your ID: #{id}"

  if id != 'No!' then   # if choices are true , continue; else back to top
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
      check_selection(id1,id2)

      puts "Your ID: #{id}"
    elsif (selection3 == 'N' || selection3 == 'n')
      break
    else
      puts "Your choice is wrong!"
    end
  end

  puts "Do you want to add a new one?(Y/N)"
  selection3 = gets.chomp
  if (selection3 == 'N' || selection3 == 'n')
    break
  end
end