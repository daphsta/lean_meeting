venues = [
  {
    id: 1,
    room: 'Freedom Towers',
    location_address: 'LS'
  },
  {
    id: 2,
    room: 'Sears Tower',
    location_address: 'LS'
  }
]

venues.each do |venue|
  Venue.create(venue)
end