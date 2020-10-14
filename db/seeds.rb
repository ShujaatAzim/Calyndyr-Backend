print "Seeding..."

activity01 = Activity.create(name: "Git Commit", complete: false)
activity02 = Activity.create(name: "Japanese", complete: false)
activity03 = Activity.create(name: "Chess Game", complete: false)
activity04 = Activity.create(name: "Application", complete: false)

day01 = Day.create(date: "Wed Oct 14 2020")
day02 = Day.create(date: "Thu Oct 15 2020")

day_activities01 = DayActivity.create(day_id: day01.id, activity_id: activity01.id)
day_activities02 = DayActivity.create(day_id: day01.id, activity_id: activity02.id)
day_activities03 = DayActivity.create(day_id: day01.id, activity_id: activity03.id)
day_activities04 = DayActivity.create(day_id: day01.id, activity_id: activity04.id)

day_activities05 = DayActivity.create(day_id: day02.id, activity_id: activity01.id)
day_activities06 = DayActivity.create(day_id: day02.id, activity_id: activity02.id)
day_activities07 = DayActivity.create(day_id: day02.id, activity_id: activity03.id)
day_activities08 = DayActivity.create(day_id: day02.id, activity_id: activity04.id)

print "Done!"