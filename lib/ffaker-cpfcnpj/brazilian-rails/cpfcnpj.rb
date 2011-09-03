module CpfCnpj
  def gerar n
    numbers_length = (self.instance_of?(Cpf) ? 11 : 14 )
    @numero = n.to_s.rjust(numbers_length-2, '0')+'00'
    @numero_puro = @numero[0..-3]
    primeiro_verificador = primeiro_digito_verificador
    segundo_verificador = segundo_digito_verificador(primeiro_verificador)
    verificadores = primeiro_verificador+segundo_verificador
    self.class.new(@numero_puro+verificadores)
  end
end
