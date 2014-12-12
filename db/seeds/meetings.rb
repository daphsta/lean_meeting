meetings = [
  {
    title: 'DOR Dev',
    venue_id: 1,
    organiser_id: 1,
    description: 'Software as a service architecture briefing',
    time: Date.tomorrow
  },
  {
    title: 'Sales review',
    venue_id: 2,
    organiser_id: 2,
    description: 'Sales performance review',
    time: Date.today
  }
]

meetings.each do |meeting|
  Meeting.create(meeting)
end
