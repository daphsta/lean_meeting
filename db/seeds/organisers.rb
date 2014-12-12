organisers = [
  {
    id: 1,
    name: 'LeAnn Rimes',
    role: 'Sales Coordinator'
  },
  {
    id: 2,
    name: 'Garth Brookes',
    role: 'Cowboy Sales'
  }
]

organisers.each do |organiser|
  Organiser.create(organiser)
end