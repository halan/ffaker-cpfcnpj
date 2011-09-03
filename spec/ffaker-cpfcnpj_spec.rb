require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'ffaker'
require 'ffaker-cpfcnpj'

describe "FfakerCpfcnpj" do
  describe 'Cpf' do
    subject {Faker::CPFCNPJ.cpf }

    it { should be_valido }
    it { should be_kind_of(Cpf) }
  end

  describe 'Cnpj' do
    subject {Faker::CPFCNPJ.cnpj }

    it { should be_valido }
    it { should be_kind_of(Cnpj) }
  end
end
