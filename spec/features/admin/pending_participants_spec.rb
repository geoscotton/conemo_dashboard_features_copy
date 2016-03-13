# filename: ./spec/features/pending_participants_spec.rb

require './spec/support/admin/pending_participants_helper'

feature 'Admin, Pending Participants' do
  background do
    english_admin.sign_in
    pending_participants.open
  end

  scenario 'Admin can cancel creation form' do
    pending_participants.create
    navigation.cancel

    expect(pending_participants).to have_landing_page_visible
  end

  scenario 'Admin cannot create a participant without filling in first name' do
    pending_participants.create
    new_participant_contact_information.fill_in_last_name
    new_participant_contact_information.fill_in_study_id
    new_participant_contact_information.fill_in_health_unit
    new_participant_contact_information.fill_in_family_record
    new_participant_contact_information.fill_in_phone
    new_participant_contact_information.fill_in_emergency_contact_name
    new_participant_contact_information.fill_in_emergency_contact_phone
    new_participant_contact_information.fill_in_email
    new_participant_contact_information.fill_in_address
    new_participant_contact_information.select_dob
    new_participant_contact_information.select_enrollment_date
    new_participant_contact_information.choose_gender
    new_participant_contact_information.choose_chronic_disorder
    navigation.submit

    expect(pending_participants).to_not have_landing_page_visible

    expect(contact_information).to have_form_visible
  end

  scenario 'Admin cannot create a participant without filling in last name' do
    pending_participants.create
    new_participant_contact_information.fill_in_first_name
    new_participant_contact_information.fill_in_study_id
    new_participant_contact_information.fill_in_health_unit
    new_participant_contact_information.fill_in_family_record
    new_participant_contact_information.fill_in_phone
    new_participant_contact_information.fill_in_emergency_contact_name
    new_participant_contact_information.fill_in_emergency_contact_phone
    new_participant_contact_information.fill_in_email
    new_participant_contact_information.fill_in_address
    new_participant_contact_information.select_dob
    new_participant_contact_information.select_enrollment_date
    new_participant_contact_information.choose_gender
    new_participant_contact_information.choose_chronic_disorder
    navigation.submit

    expect(pending_participants).to_not have_landing_page_visible

    expect(contact_information).to have_form_visible
  end

  scenario 'Admin cannot create a participant without filling in study id' do
    pending_participants.create
    new_participant_contact_information.fill_in_first_name
    new_participant_contact_information.fill_in_last_name
    new_participant_contact_information.fill_in_health_unit
    new_participant_contact_information.fill_in_family_record
    new_participant_contact_information.fill_in_phone
    new_participant_contact_information.fill_in_emergency_contact_name
    new_participant_contact_information.fill_in_emergency_contact_phone
    new_participant_contact_information.fill_in_email
    new_participant_contact_information.fill_in_address
    new_participant_contact_information.select_dob
    new_participant_contact_information.select_enrollment_date
    new_participant_contact_information.choose_gender
    new_participant_contact_information.choose_chronic_disorder
    navigation.submit

    expect(pending_participants).to_not have_landing_page_visible

    expect(contact_information).to have_form_visible
  end

  scenario 'Admin cannot create a pt wo filling in family health unit' do
    pending_participants.create
    new_participant_contact_information.fill_in_first_name
    new_participant_contact_information.fill_in_last_name
    new_participant_contact_information.fill_in_study_id
    new_participant_contact_information.fill_in_family_record
    new_participant_contact_information.fill_in_phone
    new_participant_contact_information.fill_in_emergency_contact_name
    new_participant_contact_information.fill_in_emergency_contact_phone
    new_participant_contact_information.fill_in_email
    new_participant_contact_information.fill_in_address
    new_participant_contact_information.select_dob
    new_participant_contact_information.select_enrollment_date
    new_participant_contact_information.choose_gender
    new_participant_contact_information.choose_chronic_disorder
    navigation.submit

    expect(pending_participants).to_not have_landing_page_visible

    expect(contact_information).to have_form_visible
  end

  scenario 'Admin cannot create a participant without filling in phone' do
    pending_participants.create
    new_participant_contact_information.fill_in_first_name
    new_participant_contact_information.fill_in_last_name
    new_participant_contact_information.fill_in_study_id
    new_participant_contact_information.fill_in_health_unit
    new_participant_contact_information.fill_in_family_record
    new_participant_contact_information.fill_in_emergency_contact_name
    new_participant_contact_information.fill_in_emergency_contact_phone
    new_participant_contact_information.fill_in_email
    new_participant_contact_information.fill_in_address
    new_participant_contact_information.select_dob
    new_participant_contact_information.select_enrollment_date
    new_participant_contact_information.choose_gender
    new_participant_contact_information.choose_chronic_disorder
    navigation.submit

    expect(pending_participants).to_not have_landing_page_visible

    expect(contact_information).to have_form_visible
  end

  scenario 'Admin cannot create a participant without choosing gender' do
    pending_participants.create
    new_participant_contact_information.fill_in_first_name
    new_participant_contact_information.fill_in_last_name
    new_participant_contact_information.fill_in_study_id
    new_participant_contact_information.fill_in_health_unit
    new_participant_contact_information.fill_in_family_record
    new_participant_contact_information.fill_in_phone
    new_participant_contact_information.fill_in_emergency_contact_name
    new_participant_contact_information.fill_in_emergency_contact_phone
    new_participant_contact_information.fill_in_email
    new_participant_contact_information.fill_in_address
    new_participant_contact_information.select_dob
    new_participant_contact_information.choose_chronic_disorder
    navigation.submit

    expect(pending_participants).to_not have_landing_page_visible

    expect(contact_information).to have_form_visible
  end

  scenario 'Admin can create a participant wo filling in the optional fields' do
    pending_participants.create
    new_participant_contact_information.fill_in_first_name
    new_participant_contact_information.fill_in_last_name
    new_participant_contact_information.fill_in_study_id
    new_participant_contact_information.fill_in_health_unit
    new_participant_contact_information.fill_in_family_record
    new_participant_contact_information.fill_in_phone
    new_participant_contact_information.select_dob
    new_participant_contact_information.select_enrollment_date
    new_participant_contact_information.choose_gender
    navigation.submit

    expect(jane_doe).to be_visible
  end

  scenario 'Admin activates a participant' do
    pending_participants.create
    participant_2000_contact_information.complete_form
    navigation.submit
    participant_2000.activate
    participant_2000.assign_nurse

    expect(participant_2000).to_not be_visible

    # check for configuration token
    english_admin.sign_out
    english_nurse.sign_in

    expect(patient_2000).to have_token
  end

  scenario 'Admin disqualifies a participant' do
    participant_100.disqualify
    participant_100.confirm_disqualify

    expect(participant_100).to_not be_visible

    participant_100.select_ineligible_tab

    expect(participant_100).to be_visible
  end

  scenario 'Admin activates a participant who was previously disqualified' do
    participant_200.select_ineligible_tab
    participant_200.activate
    participant_200.assign_nurse

    expect(participant_200).to_not be_visible
  end

  scenario 'Admin edits pending participant\'s information' do
    participant_102.select_edit

    expect(contact_information).to have_form_visible
  end

  scenario 'Admin edits ineligible participant\'s information' do
    participant_201.select_ineligible_tab
    participant_201.select_edit

    expect(contact_information).to have_form_visible
  end
end

feature 'Spanish Admin, Pending Participants' do
  scenario 'Spanish admin sees correct translations' do
    spanish_admin.sign_in
    spanish_pending_participants.open

    expect(spanish_pending_participants).to have_landing_page_visible

    spanish_pending_participants.create

    # this fails because form has not been updated
    # expect(spanish_contact_information).to have_form_fields

    # open relationship fields and expect correct options

    expect(spanish_contact_information).to have_gender_options

    navigation.cancel

    expect(spanish_pending_participants).to have_pending_table_headers

    spanish_pending_participants.select_ineligible_tab

    expect(spanish_pending_participants).to have_ineligible_table_headers
  end
end

feature 'Portuguese Admin, Pending Participants' do
  scenario 'Portuguese admin sees correct translations' do
    portuguese_admin.sign_in
    portuguese_pending_participants.open

    expect(portuguese_pending_participants).to have_landing_page_visible

    portuguese_pending_participants.create

    # this fails because form has not been updated
    # expect(portuguese_contact_information).to have_form_fields

    # open relationship fields and expect correct options

    expect(portuguese_contact_information).to have_gender_options

    navigation.cancel

    expect(portuguese_pending_participants).to have_pending_table_headers

    portuguese_pending_participants.select_ineligible_tab

    expect(portuguese_pending_participants).to have_ineligible_table_headers
  end
end
