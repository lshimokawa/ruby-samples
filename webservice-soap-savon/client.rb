require 'savon'

client = Savon::Client.new("http://www.webservicex.net/uszip.asmx?WSDL")
response = client.request :web, :get_info_by_zip, body: { "USZip" => "90210" }

if response.success?
  data = response.to_array(:get_info_by_zip_response, :get_info_by_zip_result, :new_data_set, :table).first
  if data
    puts  data[:state] + ' '+ data[:city]
  end
end
