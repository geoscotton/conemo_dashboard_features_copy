# filename: ./spec/support/nurse/tasks/non_connectivity_call_helper.rb

require './lib/pages/nurse_tasks'
require './lib/pages/nurse_tasks/lack_of_connectivity_call'
require './lib/pages/supervisor_page'
require './lib/pages/your_patients'

def lack_of_connectivity_call
  @lack_of_connectivity_call ||=
    NurseTasks::LackOfConnectivityCall.new(locale: 'english')
end

def pt_410_nurse_tasks
  @pt_410_nurse_tasks ||= NurseTasks.new(pt_id: 410)
end

def patient_410
  @patient_410 ||= YourPatients.new(pt_id: 410)
end

def pt_411_nurse_tasks
  @pt_411_nurse_tasks ||= NurseTasks.new(pt_id: 411)
end

def pt_412_nurse_tasks
  @pt_412_nurse_tasks ||= NurseTasks.new(
    pt_id: 412,
    time_of_contact: Time.now - (2 * 60 * 60)
  )
end

def pt_803_nurse_tasks
  @pt_803_nurse_tasks ||= NurseTasks.new(
    pt_id: 803,
    contact_type: 'Call due to no connectivity',
    days_since_due: '3 days',
    tasks_count: 1
  )
end

def pt_4025_nurse_tasks
  @pt_4025_nurse_tasks ||= NurseTasks.new(pt_id: 4025)
end

def nurse_supervisor_16
  @nurse_supervisor_16 ||= SupervisorPage.new(
    pt_id: 4025,
    user_id: 401
  )
end
