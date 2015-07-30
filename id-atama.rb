# ID-router project
# Modification : Added Modules

# Show subproject of TARLA
require 'mysql2'
#  The function takes subprojects from the database and shows them
def show_subproject
  puts "Please select your subproject: "
  begin
      con = Mysql2::Client.new(:host => 'tarla.org.tr',:username => 'generator_id', :password => '!hotbut_bsk', :database => 'id_generator')
      rs = con.query"SELECT *FROM projects WHERE parent_id = 1 ORDER BY name"
      rs.each do |row|
        puts row ['name']
      end
          con.close
  end
end
# Select subpojects
def select_subproject(selection)
  case selection
  when '1'
    '1'
  when '2'
    '2'
  when '3'
    '3'
  when '4'
    '4'
  when '5'
    '5'
  when '6'
    '6'
  when '7'
    '7'
  when '8'
    '8'
  when '9'
    '9'
  when '10'
    '10'
  else
    false
  end
end

# Show position at TARLA
def show_position
  puts "Are you employee or intern?"
  print " 1-Employee\n 2-Intern\n"
end
# The function takes assigned last id and assigned new id
def select_position(last_id,selection)
  count1 = (last_id.to_i*1000) + 101
  count2 = (last_id.to_i*1000) + 999
  begin
    if selection == '1' then
      con = Mysql2::Client.new(:host => 'tarla.org.tr',:username => 'generator_id', :password => '!hotbut_bsk', :database => 'id_generator')
      sm = con.query"SELECT value FROM id_generator.custom_values WHERE custom_field_id = 1 AND value>(#{last_id}*1000) AND value<((#{last_id}+1)*1000) ORDER BY value ASC"
        sm.each do |row|
          if row ['value'].to_i == count1 then
            count1 += 1
          end
        end
      puts "Your ID:  ",count1.to_s
    #    $count1 += 1
    elsif selection == '2' then
      con = Mysql2::Client.new(:host => 'tarla.org.tr',:username => 'generator_id', :password => '!hotbut_bsk', :database => 'id_generator')
      sm = con.query"SELECT value FROM id_generator.custom_values WHERE custom_field_id = 1 AND value>(#{last_id}*1000) AND value<((#{last_id}+1)*1000) ORDER BY value DESC"
        sm.each do |row|
          if row ['value'].to_i == count2 then
            count2 -= 1
          end
        end
      puts "Your ID:  ",count2.to_s
  #    $count2 -= 1
    else
      return false
    end
  end
#  puts "son id #{last_id}"
end
# selection control
def check_selection(id_a, id_b)
  if ( id_a == false || id_b == false ) then
    puts "Your choice is wrong! Your ID: No!"
  end
end
# Asks whether to continue
def ask_continue
  puts "Do you want to add a new one?(Y/N)"
  answer = gets.chomp
  if answer == 'y' || answer == 'Y'
  elsif answer == 'n' || answer == 'N'
    exit(1)
  else
    puts "Your choice is wrong!"
  end
end

while 1 do
# Main modules
  show_subproject
  selection1 = gets.chomp
  id1 = select_subproject(selection1) # id1 => The first two digits of ID
  #puts "id1: #{id1}"

  show_position
  selection2 = gets.chomp
  id2 = select_position(selection1,selection2)
#  id2 = select_position(selection2) # id2 => The last three digits of ID
  #puts "id2: #{id2}"
  check_selection(id1 ,id2)

  ask_continue
end
