require './lib/pages/shared/nurse_tasks_forms'
require './lib/pages/shared/translations/nurse_tasks/final_appointment'

class YourPatients
  class NurseTasks
    # page object for first contact page of active participants
    class FinalAppointment
      include Capybara::DSL
      include NurseTasksForms
      include Translations::NurseTasks::FinalAppointment

      def initialize(final_appointment)
        @locale ||= final_appointment[:locale]
      end

      def scheduled?
        has_no_list_item?(final_appointment_title) &&
          has_scheduled_progress_bar_item?(final_appointment_title)
      end

      def active?
        has_list_item?(final_appointment_title) &&
          has_active_progress_bar_item?(final_appointment_title)
      end

      def canceled?
        has_no_list_item?(final_appointment_title) &&
          has_canceled_progress_bar_item?(final_appointment_title)
      end

      def complete?
        has_no_list_item?(final_appointment_title) &&
          has_complete_progress_bar_item?(final_appointment_title)
      end

      def confirm
        confirm_task final_appointment_title
        visible?
      end

      def cancel
        cancel_task final_appointment_title
      end

      def open_reschedule_form
        open_reschedule final_appointment_title
      end

      def reschedule
        open_reschedule_form
        reschedule_task
      end

      def visible?
        has_css?('h1', text: final_appointment_title)
      end

      def enter_location
        enter_task_location(5)
      end

      def toggle_options_list
        selector[5].click
      end

      def general_notes
        'Final notes'
      end

      def enter_notes
        fill_in 'final_appointment[notes]', with: general_notes
      end

      def choose_phone_returned
        resp = ['true', 'false'].sample
        find("#final_appointment_phone_returned_#{resp}").click
      end

      def choose_phone_returned_negative
        find('#final_appointment_phone_returned_false').click
      end

      def has_form_headings?
        has_task_form_headings?(3)
      end

      def has_current_date_selections?
        has_date_selectors?(Date.today, 1, locale(0, 0, 2), locale(2, 2, 0)) &&
          has_hour_selector?(3, Time.now)
      end

      def has_location_options?
        has_task_options?(5, 9)
      end
    end
  end
end
