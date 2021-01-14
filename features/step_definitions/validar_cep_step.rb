Dado("que faco uma busca pelo CEP {string}") do |cep_cidade|
  @response_teste = cep.client.get_cep(cep_cidade)
end

Entao("valido o codigo {string}") do |status_code|
  expect(@response_teste.code).to eql(status_code.to_i)
end

Entao("o campo IBGE com {string}") do |cod_ibge|
  expect(@response_teste['ibge']).to eql(cod_ibge)
  puts "Código do IBGE: #{@response_teste['ibge']}"
end

Entao("valido o retorno de erro") do
  expect(@response_teste['erro']).to be_truthy  
end