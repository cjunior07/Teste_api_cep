# frozen_string_literal: true
module Client

  class CEPClient
    include HTTParty
    URL_TESTE = CONFIG['urls']['url_busca_cep']

    def get_cep(cep)
      HTTParty.get("#{URL_TESTE}/#{cep}/json/")
    end
  end
end
