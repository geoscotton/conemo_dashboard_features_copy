require './lib/pages/shared/nurse_tasks_forms'
require './lib/pages/navigation'
require './lib/pages/translations/nurse_tasks/help_request'

class NurseTasks
  # page object for help requests
  class HelpRequest
    include Capybara::DSL
    include NurseTasksForms
    include Translations::NurseTaskTitles::HelpRequest

    def initialize(help_request)
      @locale ||= help_request[:locale]
    end

    def active?
      has_list_item? help_request_title
    end

    def visible?
      has_css?('h1', text: help_request_title)
    end

    def mark_resolved
      mark_task_resolved help_request_title
      visible?
    end

    def complete_resolution_form
      sleep(0.25)
      selector[5].click
      options.delete_at(0)
      options.delete_at(4)
      options.delete_at(4)
      options.delete_at(-1)
      @response ||= options.sample
      select_list_item(@response)
      navigation.submit
    end

    def has_response?
      has_text? @response
    end

    def contact_supervisor
      contact_supervisor_for_task help_request_title
    end

    def toggle_options_list
      selector[5].click
    end

    def has_form_headings?
      has_task_form_headings?(1)
    end

    def has_current_date_selections?
      has_date_selectors?(Date.today, 1, locale(0, 0, 2), locale(2, 2, 0)) &&
        has_time_selectors?(3, 4)
    end

    def has_reason_options?
      selector[5].click
      actual = (0..11).map { |i| all('.select2-result-label')[i].text }
      expect(actual).to eq(options)
    end

    def resolve_as_canceled
      sleep(0.25)
      selector[5].click
      @cancel_response ||= resolve_as_canceled_responses.sample
      select_list_item(@cancel_response)
      navigation.submit
    end

    def has_cancel_reason?
      has_text? @cancel_response
    end

    def has_resolution_confirmation_alert?
      has_css?('.alert',
               text: locale('Solicitud de ayuda guardada exitosamente',
                            'Pedido de ajuda salvo com sucesso',
                            'Help request saved successfully'))
    end

    private

    def navigation
      @navigation ||= Navigation.new(locale: @locale)
    end
  end
end
