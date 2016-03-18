require './lib/pages/shared/translations/nurse_tasks'

module Translations
  module NurseTasks
    # translations for follow up call week 3
    module FollowUpCallWeekThree
      include Translations::NurseTasks

      def expected_headings
        locale(spanish_headings, portuguese_headings, english_headings)
      end

      def options
        locale(spanish_options, portuguese_options, english_options)
      end

      private

      def spanish_headings
        @spanish_headings ||= [
          'Fecha/hora de la llamada',
          'Duración de la llamada (min)',
          '¿El paciente ha tenido algunas dificultades usando CONEMO?',
          'En caso afirmativo, especifique:',
          'Fecha/hora para la Llamada por no-conectividad',
          'Notas'
        ]
      end

      def portuguese_headings
        @portuguese_headings ||= [
          'Data da ligação',
          'Duração da chamada (minutos)',
          'O paciente tem tido dificuldades com CONEMO?',
          'Se sim, especifica qual:',
          'Data/hora Chamada por não-conectividade',
          'Observações'
        ]
      end

      def english_headings
        @english_options ||= [
          'Date of phone call',
          'Length of phone call (minutes)',
          'Did the patient have any difficulties using CONEMO?',
          'If YES, specify:',
          'Next contact date/time',
          'Notes'
        ]
      end

      def spanish_options
        @spanish_options ||= [
          'Dificultades con el celular inteligente ' \
          '(batería, contraseña, encenderlo, volumen)',
          'Dificultades para entrar a CONEMO',
          'Dificultades para leer las sesiones',
          'Dificultades para ver los videos',
          'Dificultades para seleccionar actividades',
          'Otras dificultades'
        ]
      end

      def portuguese_options
        @portuguese_options ||= [
          'Dificuldade com o smartphone (bateria, PIN, ligar, volume, etc.)',
          'Dificuldade para entrar no CONEMO app',
          'Dificuldade para ler sessões',
          'Dificuldade para ver vídeo(s)',
          'Dificuldade na seleção de atividades',
          'Outras dificuldades'
        ]
      end

      def english_options
        @english_options ||= [
          'Difficulty with cell phone (battery, PIN code, turning it on, ' \
          'volume, etc.)',
          'Difficulty accessing CONEMO app',
          'Difficulty reading sessions',
          'Difficulty watching video(s)',
          'Difficulties with activity selection',
          'Other difficulties'
        ]
      end
    end
  end
end
