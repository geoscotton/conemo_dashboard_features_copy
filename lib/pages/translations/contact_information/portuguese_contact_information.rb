module Translations
  module ContactInformation
    # Spanish translations for contact information page
    module PortugueseContactInformation
      def portuguese_headings
        @portuguese_headings ||= [
          'Unidade de Saúde da Família (múltipla escolha com os ' \
          'nomes das unidades – a ser definido):',
          'Telefone fixo:',
          'Contato de Emergência (nome):',
          'Telefone fixo (Contato de Emergência):',
          'Data de nascimento:',
          'Endereço:',
          'Data de inclusão no estudo:',
          'Sexo:'
        ]
      end
    end
  end
end
