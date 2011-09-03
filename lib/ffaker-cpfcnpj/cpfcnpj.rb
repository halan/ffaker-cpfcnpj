require 'brazilian-rails'
require 'ffaker-cpfcnpj/brazilian-rails/cpfcnpj'

module Faker
  module CpfCnpj
    extend ModuleUtils
    extend self

    def cpf seed = nil
      Cpf.new('').gerar generate_seed(seed)
    end

    def cnpj seed = nil
      Cnpj.new('').gerar generate_seed(seed)
    end

    private
    def generate_seed seed = nil
      seed or (1..99999).to_a.choice
    end
  end
end
