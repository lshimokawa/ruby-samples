require 'savon'

#Ejemplo para que correr un cliente de Web Service SOAP desarrollado en Apache CXF
client = Savon::Client.new("http://localhost:8080/apachecxf-jaxws-helloworld/helloworld?wsdl")
response = client.request "saludar" do
  soap.body = "<nombre>Lennon</nombre>"
end

if response.success?
  puts response.to_xml
end
