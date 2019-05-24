require 'open-uri'
require 'net/http'
require 'uri'
require 'json'

uri = URI.parse('https://api.clashroyale.com/v1/players/%23PLJVRYUJ')
puts uri
result = open(uri,
     "content-type"  => "application/json; charset=utf-8",
     "cache-control" => "max-age=60",
     "authorization" => "Bearer  eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6IjVhZjZkMzI3LWUxNjctNDU5OC04ZTc2LTY4NzNjOWY4MTBlNCIsImlhdCI6MTU1ODY1NTA3MCwic3ViIjoiZGV2ZWxvcGVyLzM3OTI4ZTBiLWJlNzUtMWMyNy1mNjY1LTJiNzE4ZDA1MDAwOSIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyIxMTguMjM4LjIxOS4yNDIiXSwidHlwZSI6ImNsaWVudCJ9XX0.BhpFQBUfIt37XLo0NGC7v6UwpBaUHdFWZ-WbieKt6rut0jBeicu4GesQiHCgXNuO3rPw1TdlQOo_81s8iJVLDg")

File.open(result) do |j|
  hash = JSON.load(j)
  puts hash["name"]
  puts hash["wins"]
  puts hash["losses"]
  puts "マルチ総対戦数：#{hash["wins"] + hash["losses"]}"
  puts "総対戦数：#{hash["battleCount"]}"
  puts hash["currentDeck"]
end
