# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

place = Place.create(name: 'Mash', slug: 'mash', description: 'Caffe Bar Mash postoji od 2003 i jedan je od najpoznatijih klubova u Sarajevu. Sa raznovrsnim programom i sirokim spektrom alkoholnih i bezalkoholnih pica spremni smo da ispunimo svacije zelje.', address: 'Branilaca Sarajeva 20/1', phone: '')
owner = Owner.create(username: place.slug, password: "#{place.slug}1234", place: place)
