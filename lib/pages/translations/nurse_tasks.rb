require './lib/pages/translations'

module Translations
  # translations for Nurse Tasks
  module NurseTasksTranslations
    include Translations

    def confirmation_call_title
      locale('Llamada confirmando cita', 'Chamada de confirmação',
             'Confirmation call')
    end

    def initial_appointment_title
      locale('Cita de inicio', 'Encontro inicial',
             'Initial in person appointment')
    end

    def follow_up_week_one_title
      locale('Llamada de seguimiento sem. 1', 'Chamada de seguimento sem. 1',
             'Follow up call week 1')
    end

    def follow_up_week_three_title
      locale('Llamada de seguimiento sem. 3', 'Chamada de seguimento sem. 3',
             'Follow up call week 3')
    end

    def call_to_schedule_final_title
      locale('Llamada para programar cita final',
             'Chamada para agendar encontro final',
             'Call to schedule final in person appointment')
    end

    def final_appointment_title
      locale('Cita final', 'Encontro final', 'Final in person appointment')
    end

    def additional_contact_title
      locale('Contacto adicional', 'Contato adicional', 'Additional contact')
    end

    def help_request_title
      locale('Solicitud de ayuda', 'Pedido de ajuda',
             'Help request')
    end

    def non_adherence_call_title
      locale('Llamada por no-adherencia', 'Chamada por não aderência',
             'Non-adherence call')
    end

    def lack_of_connectivity_call_title
      locale('Llamada por no-conectividad', 'Chamada por não-conectividade',
             'Call due to no connectivity')
    end

    def mark_resolved_button
      locale('Tarea resuelta', 'Marcar tarefa como resolvida',
             'Mark as resolved')
    end

    def contact_supervisor_button
      locale('Contactar supervisor/a', 'Contactar supervisor',
             'Contact Supervisor')
    end

    def contact_supervisor_alert
      locale(
        '¿Estás seguro/a de que quieres enviar una solicitud de ayuda al ' \
        'supervisor?',
        'Tem certeza que quer pedir ajuda ao seu supervisor?',
        'are you sure you want to notify the supervisor that you need help?'
      )
    end

    def last_supervisor_contact_heading
      locale(
        'último contacto supervisor de enviado en',
        'último aviso para supervisor enviado em',
        'last supervisor contact sent'
      )
    end

    def contact_supervisor_confirmation
      locale(
        'Una solicitud de ayuda fue enviada a tu supervisor/a para que ' \
        'revise este asunto',
        'Uma notificação foi enviada para o seu supervisor sobre este assunto',
        'a notification has been sent for your supervisor to review this issue'
      )
    end

    def clear_supervisor_contact_button
      locale('Borrar tarea', 'Limpar tarefa', 'clear')
    end
  end
end
