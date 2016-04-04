Dir['./lib/pages/nurse_tasks/*.rb'].each { |file| require file }
require './lib/pages/translations'
require './lib/pages/translations/nurse_tasks'
require './lib/pages/translations/your_patients'

# page object for active participants
class YourPatients
  include RSpec::Matchers
  include Capybara::DSL
  include Translations
  include Translations::NurseTasksTranslations
  include Translations::YourPatientsTranslations

  def initialize(your_patients)
    @pt_id ||= your_patients[:pt_id]
    @locale ||= your_patients[:locale]
  end

  def return
    find('.navbar-brand', text: 'CONEMO').click
  end

  def visible?
    has_css?('h2', text: 'Your Patients')
  end

  def in_table?
    has_css?('tr', text: @pt_id)
  end

  def has_assigned_patients?
    assigned_participants.all? { |i| has_text? i }
  end

  def has_token?
    expected_text = row_text.gsub("#{@pt_id} #{confirmation_call_title}", '')
    expect(expected_text).to match(/.+/)
  end

  def has_configuration_tokens?
    ids = [338, 300, 326, 318, 305, 337, 308, 322, 325, 339]
    ids.each { |i| find('tr', text: i).has_text? "aBc#{i}XyZ" }
  end

  def ordered_correctly?
    actual_results = (1..12).map { |i| all('tr')[i].text }
    expect(actual_results).to eq(expected_results)
  end

  def has_tasks_ordered_correctly?
    expected_text = row_text.gsub("#{@pt_id} ", '')
    expect(expected_text)
      .to eq "#{confirmation_call_title}, #{help_request_title}, " \
             "#{lack_of_connectivity_call_title}"
  end

  def has_tasks_completed?
    has_css?('.success', text: @pt_id)
  end

  def has_tasks_active?
    has_css?('.info', text: @pt_id)
  end

  def has_tasks_overdue?
    has_css?('.danger', text: @pt_id)
  end

  def has_confirmation_call?
    patient_row.has_text? confirmation_call_title
  end

  def has_initial_appointment?
    patient_row.has_text? initial_appointment_title
  end

  def has_follow_up_week_1?
    patient_row.has_text? follow_up_week_one_title
  end

  def has_follow_up_week_3?
    patient_row.has_text? follow_up_week_three_title
  end

  def has_call_to_schedule_final_appt?
    patient_row.has_text? call_to_schedule_final_title
  end

  def has_final_appointment?
    patient_row.has_text? final_appointment_title
  end

  def has_help_request?
    patient_row.has_text? help_request_title
  end

  def has_lack_of_connectivity_task?
    patient_row.has_text? lack_of_connectivity_call_title
  end

  def has_non_adherence_task?
    patient_row.has_text? non_adherence_call_title
  end

  def has_table_headers?
    actual_headers = (0..2).map { |i| all('th')[i].text }
    expect(actual_headers).to eq(expected_headers)
  end

  def has_key?
    key = find('.table-condensed')
    success_text = key.find('.success').text
    expect(success_text).to eq('no active/overdue task')
    info_text = key.find('.info').text
    expect(info_text).to eq('active task')
    danger_text = key.find('.danger').text
    expect(danger_text).to eq('overdue task')
  end

  private

  def patient_row
    find('tr', text: @pt_id)
  end

  def row_text
    @row_text ||= find('tr', text: @pt_id).text
  end

  def assigned_participants
    locale(spanish_nurse_patients, portuguese_nurse_patients,
           english_nurse_patients)
  end

  def english_nurse_patients
    patients = [1000, 480, 490]
    ranges = [(300..340), (342..344), (400..405), (410..415), (420..428),
              (430..432), (440..442), (450..452), (460..462), (470..472),
              (700..709), (800..804)]
    ranges.each { |i| patients.concat i.to_a }
    @english_nurse_patients ||= patients.sample(10)
  end

  def spanish_nurse_patients
    @spanish_nurse_patients ||= (500..505).to_a.sample(3)
  end

  def portuguese_nurse_patients
    @portuguese_nurse_patients ||= (600..605).to_a.sample(3)
  end

  def expected_results
    @expected_results ||= [
      "706 #{confirmation_call_title}, #{help_request_title}",
      "707 #{initial_appointment_title}",
      "708 #{follow_up_week_one_title}",
      "709 #{follow_up_week_three_title}",
      "800 #{call_to_schedule_final_title}",
      "801 #{final_appointment_title}, #{help_request_title}",
      "802 #{help_request_title}",
      "803 #{lack_of_connectivity_call_title}",
      "804 #{non_adherence_call_title}",
      "1000 #{confirmation_call_title}, #{help_request_title}, " \
      "#{lack_of_connectivity_call_title}",
      "322 #{follow_up_week_one_title} aBc322XyZ",
      "303 #{confirmation_call_title}"
    ]
  end
end
