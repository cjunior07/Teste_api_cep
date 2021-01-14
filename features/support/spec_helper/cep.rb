# module APIs
module API
  class CEP
    attr_reader :client

    def initialize
      @client = Client::CEPClient.new
    end
  end
end

module SpecHelper
  def cep
    API::CEP.new
  end
end
