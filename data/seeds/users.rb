# Seed files in the ./data/seeds directory can be run one at a time, or all at once:
#  ~: rake dm:seed[users]
# or
#  ~: rake db:seed:all

Event.create name: 'Music Midtown', start_date: '2012-05-20 13:02:57 -0500', end_date: '2012-05-22 13:02:57 -0500'
Event.create name: 'Jazz Fest', start_date: '2012-04-20 13:02:57 -0500', end_date: '2012-04-22 13:02:57 -0500'
Event.create name: 'Dragoncon', start_date: '2012-09-05 13:02:57 -0500', end_date: '2012-09-08 13:02:57 -0500'
Event.create name: 'Sec Games', start_date: '2012-11-30 13:02:57 -0500', end_date: '2012-12-02 13:02:57 -0500'

