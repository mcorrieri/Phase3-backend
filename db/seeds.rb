# Seed Your Database 

require 'csv'
require 'pry'

State.destroy_all
Vaccine.destroy_all
Statevaccine.destroy_all


State.create(name: "California", population: 39512223)
State.create(name: "New York", population: 19453561)
State.create(name: "New York City", population: 8419000)
State.create(name: "Texas", population: 28995881)

Vaccine.create(name: "Moderna", doses: 2)
Vaccine.create(name: "Pfizer", doses: 2)
Vaccine.create(name: "Janssen", doses: 1)

csv_file_janssen = File.read("/Users/petercrawford/Development/code/Mod3/Phase3-Project/Phase3-backend/db/Janssen.csv")
csv_janssen = CSV.parse(csv_file_janssen, :headers => false)
csv_janssen.each do |row|
    # binding.pry
    Statevaccine.create({allocation_date: row[1], first_dose_allocation: row[2], second_dose_allocation: row[2], state_id: State.find_by(name: row[0]).id, vaccine_id: Vaccine.find_by(name: "Janssen").id})
end

csv_file_moderna = File.read("/Users/petercrawford/Development/code/Mod3/Phase3-Project/Phase3-backend/db/Moderna.csv")
csv_moderna = CSV.parse(csv_file_moderna, :headers => false)
csv_moderna.each do |row|
    # binding.pry
    Statevaccine.create({allocation_date: row[1], first_dose_allocation: row[2], second_dose_allocation: row[3], state_id: State.find_by(name: row[0]).id, vaccine_id: Vaccine.find_by(name: "Moderna").id})
end

csv_file_pfizer = File.read("/Users/petercrawford/Development/code/Mod3/Phase3-Project/Phase3-backend/db/Moderna.csv")
csv_pfizer = CSV.parse(csv_file_pfizer, :headers => false)
csv_pfizer.each do |row|
    # binding.pry
    Statevaccine.create({allocation_date: row[1], first_dose_allocation: row[2], second_dose_allocation: row[3], state_id: State.find_by(name: row[0]).id, vaccine_id: Vaccine.find_by(name: "Pfizer").id})
end