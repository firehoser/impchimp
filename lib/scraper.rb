require 'rubygems'
require 'httparty'
require 'active_support/all'
require 'csv'
 
BASE_URL = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=500000&name=pizza&sensor=false&key=AIzaSyCtyfLCGa
-gaRzEdiX_20JrMT8esLGnvrE"
 
resp = ActiveSupport::JSON.decode(HTTParty.get(BASE_URL).body)
next_token = resp['next_page_token']
url = BASE_URL
 
1000.times do |n|
        url = BASE_URL + "&pagetoken=" + next_token
        resp['results'].each do |r|
                name = r['name']
                lat  = r['geometry']['location']['lat']
                lng  = r['geometry']['location']['lng']
                puts [name, lat, lng].to_csv
        end
end
