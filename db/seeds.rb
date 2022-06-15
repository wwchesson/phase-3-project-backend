puts "🌱 Seeding spices..."

10.times do(
    Resident.create(
        name: Faker::Name.name,
        ssn: Faker::Number.number(digits: 9),
        age: Faker::Number.within(range: 18..70),
        email: Faker::Internet.safe_email,
        needs: Faker::Lorem.paragraph(sentence_count: 2),
        interests: Faker::Lorem.paragraph(sentence_count: 3)
    )
)
end

Activity.create(activity: "Gardening", day_of_week: "Monday", instructor: Faker::Name.name, resident_id: Faker::Number.within(range: 1..10))
Activity.create(activity: "Classes", day_of_week: "Tuesday", instructor: Faker::Name.name, resident_id: Faker::Number.within(range: 1..10))
Activity.create(activity: "Cooking", day_of_week: "Wednesday", instructor: Faker::Name.name, resident_id: Faker::Number.within(range: 1..10))
Activity.create(activity: "Exercise", day_of_week: "Thursday", instructor: Faker::Name.name, resident_id: Faker::Number.within(range: 1..10))
Activity.create(activity: "Counseling", day_of_week: "Friday", instructor: Faker::Name.name, resident_id: Faker::Number.within(range: 1..10))
Activity.create(activity: "Construction", day_of_week: "Monday", instructor: Faker::Name.name, resident_id: Faker::Number.within(range: 1..10))
Activity.create(activity: "Study Hall", day_of_week: "Tuesday", instructor: Faker::Name.name, resident_id: Faker::Number.within(range: 1..10))
Activity.create(activity: "Cleaning", day_of_week: "Wednesday", instructor: Faker::Name.name, resident_id: Faker::Number.within(range: 1..10))



    


puts "✅ Done seeding!"
