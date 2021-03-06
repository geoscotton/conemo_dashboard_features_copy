# filename: ./spec/support/nurse/clinican_summary_helper.rb

require './lib/pages/navigation'
require './lib/pages/nurse_tasks'
require './lib/pages/nurse_tasks/clinical_summary'
require './lib/pages/nurse_tasks/clinical_summary/notes_form'

def navigation
  @navigation ||= Navigation.new(locale: 'english')
end

def clinical_summary
  @clinical_summary ||= NurseTasks::ClinicalSummary.new(id: 'fake')
end

def pt_300_clinical_summary
  @pt_300_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 300,
    current_lesson: 1,
    note: 'New notes!'
  )
end

def pt_300_notes_form
  @pt_300_notes_form ||= NurseTasks::ClinicalSummary::NotesForm.new(
    locale: 'english',
    note: 'New notes!'
  )
end

def pt_300_nurse_tasks
  @pt_300_nurse_tasks ||= NurseTasks.new(pt_id: 300)
end

def pt_312_clinical_summary
  @pt_312_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 312,
    current_lesson: 3,
    other_lesson: 2
  )
end

def pt_312_nurse_tasks
  @pt_312_nurse_tasks ||= NurseTasks.new(pt_id: 312)
end

def pt_317_clinical_summary
  @pt_317_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 317,
    other_lesson: 2
  )
end

def pt_317_nurse_tasks
  @pt_317_nurse_tasks ||= NurseTasks.new(pt_id: 317)
end

def pt_323_clinical_summary
  @pt_323_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 323,
    current_lesson: 5,
    other_lesson: 4
  )
end

def pt_323_nurse_tasks
  @pt_323_nurse_tasks ||= NurseTasks.new(pt_id: 323)
end

def pt_324_clinical_summary
  @pt_324_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 324,
    other_lesson: 2,
    incomplete_lesson: 1
  )
end

def pt_324_nurse_tasks
  @pt_324_nurse_tasks ||= NurseTasks.new(pt_id: 324)
end

def pt_326_clinical_summary
  @pt_326_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 326,
    other_lesson: 4
  )
end

def pt_326_nurse_tasks
  @pt_326_nurse_tasks ||= NurseTasks.new(pt_id: 326)
end

def pt_343_clinical_summary
  @pt_343_clinical_summary ||= NurseTasks::ClinicalSummary.new(id: 343)
end

def pt_343_nurse_tasks
  @pt_343_nurse_tasks ||= NurseTasks.new(pt_id: 343)
end

def pt_400_clinical_summary
  @pt_400_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 400,
    other_lesson: 1
  )
end

def pt_400_nurse_tasks
  @pt_400_nurse_tasks ||= NurseTasks.new(pt_id: 400)
end

def pt_401_clinical_summary
  @pt_401_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 401,
    current_lesson: 2,
    other_lesson: 1
  )
end

def pt_401_nurse_tasks
  @pt_401_nurse_tasks ||= NurseTasks.new(pt_id: 401)
end

def pt_410_clinical_summary
  @pt_410_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 410,
    current_lesson: 4,
    other_lesson: 3
  )
end

def pt_410_nurse_tasks
  @pt_410_nurse_tasks ||= NurseTasks.new(pt_id: 410)
end

def pt_411_clinical_summary
  @pt_411_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 411,
    other_lesson: 1
  )
end

def pt_411_nurse_tasks
  @pt_411_nurse_tasks ||= NurseTasks.new(pt_id: 411)
end

def pt_412_clinical_summary
  @pt_412_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 412,
    other_lesson: 3
  )
end

def pt_412_nurse_tasks
  @pt_412_nurse_tasks ||= NurseTasks.new(pt_id: 412)
end

def pt_420_clinical_summary
  @pt_420_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 420,
    current_lesson: 6,
    other_lesson: 5
  )
end

def pt_420_nurse_tasks
  @pt_420_nurse_tasks ||= NurseTasks.new(pt_id: 420)
end

def pt_421_nurse_tasks
  @pt_421_nurse_tasks ||= NurseTasks.new(pt_id: 421)
end

def pt_422_clinical_summary
  @pt_422_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 422,
    other_lesson: 5
  )
end

def pt_422_nurse_tasks
  @pt_422_nurse_tasks ||= NurseTasks.new(pt_id: 422)
end

def pt_428_clinical_summary
  @pt_428_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 428,
    other_lesson: 3,
    incomplete_lesson: 2
  )
end

def pt_428_nurse_tasks
  @pt_428_nurse_tasks ||= NurseTasks.new(pt_id: 428)
end

def pt_430_clinical_summary
  @pt_430_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 430,
    current_lesson: 7,
    other_lesson: 6
  )
end

def pt_430_nurse_tasks
  @pt_430_nurse_tasks ||= NurseTasks.new(pt_id: 430)
end

def pt_431_clinical_summary
  @pt_431_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 431,
    other_lesson: 4,
    incomplete_lesson: 3
  )
end

def pt_431_nurse_tasks
  @pt_431_nurse_tasks ||= NurseTasks.new(pt_id: 431)
end

def pt_432_clinical_summary
  @pt_432_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 432,
    other_lesson: 6
  )
end

def pt_432_nurse_tasks
  @pt_432_nurse_tasks ||= NurseTasks.new(pt_id: 432)
end

def pt_440_clinical_summary
  @pt_440_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 440,
    current_lesson: 8,
    other_lesson: 7
  )
end

def pt_440_nurse_tasks
  @pt_440_nurse_tasks ||= NurseTasks.new(pt_id: 440)
end

def pt_441_clinical_summary
  @pt_441_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 441,
    other_lesson: 5,
    incomplete_lesson: 4
  )
end

def pt_441_nurse_tasks
  @pt_441_nurse_tasks ||= NurseTasks.new(pt_id: 441)
end

def pt_442_clinical_summary
  @pt_442_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 442,
    other_lesson: 7
  )
end

def pt_442_nurse_tasks
  @pt_442_nurse_tasks ||= NurseTasks.new(pt_id: 442)
end

def pt_450_clinical_summary
  @pt_450_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 450,
    current_lesson: 9,
    other_lesson: 8
  )
end

def pt_450_nurse_tasks
  @pt_450_nurse_tasks ||= NurseTasks.new(pt_id: 450)
end

def pt_451_clinical_summary
  @pt_451_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 451,
    other_lesson: 6,
    incomplete_lesson: 5
  )
end

def pt_451_nurse_tasks
  @pt_451_nurse_tasks ||= NurseTasks.new(pt_id: 451)
end

def pt_452_clinical_summary
  @pt_452_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 452,
    other_lesson: 8
  )
end

def pt_452_nurse_tasks
  @pt_452_nurse_tasks ||= NurseTasks.new(pt_id: 452)
end

def pt_460_clinical_summary
  @pt_460_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 460,
    current_lesson: 10,
    other_lesson: 9
  )
end

def pt_460_nurse_tasks
  @pt_460_nurse_tasks ||= NurseTasks.new(pt_id: 460)
end

def pt_461_clinical_summary
  @pt_461_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 461,
    other_lesson: 7,
    incomplete_lesson: 6
  )
end

def pt_461_nurse_tasks
  @pt_461_nurse_tasks ||= NurseTasks.new(pt_id: 461)
end

def pt_462_clinical_summary
  @pt_462_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 462,
    other_lesson: 9
  )
end

def pt_462_nurse_tasks
  @pt_462_nurse_tasks ||= NurseTasks.new(pt_id: 462)
end

def pt_471_clinical_summary
  @pt_471_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 471,
    other_lesson: 8,
    incomplete_lesson: 7
  )
end

def pt_471_nurse_tasks
  @pt_471_nurse_tasks ||= NurseTasks.new(pt_id: 471)
end

def pt_472_clinical_summary
  @pt_472_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 472,
    other_lesson: 10
  )
end

def pt_472_nurse_tasks
  @pt_472_nurse_tasks ||= NurseTasks.new(pt_id: 472)
end

def pt_480_clinical_summary
  @pt_480_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 480,
    other_lesson: 9,
    incomplete_lesson: 8
  )
end

def pt_480_nurse_tasks
  @pt_480_nurse_tasks ||= NurseTasks.new(pt_id: 480)
end

def pt_490_clinical_summary
  @pt_490_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 490,
    other_lesson: 10,
    incomplete_lesson: 9
  )
end

def pt_490_nurse_tasks
  @pt_490_nurse_tasks ||= NurseTasks.new(pt_id: 490)
end

def pt_500_clinical_summary
  @pt_500_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 500,
    locale: 'spanish',
    start_date_offset: 12,
    num_of_lessons: 18,
    note: 'Spanish additional note'
  )
end

def pt_500_notes_form
  @pt_500_notes_form ||= NurseTasks::ClinicalSummary::NotesForm.new(
    id: 500,
    locale: 'spanish',
    note: 'Spanish additional note'
  )
end

def pt_500_nurse_tasks
  @pt_500_nurse_tasks ||= NurseTasks.new(
    pt_id: 500,
    locale: 'spanish'
  )
end

def pt_600_clinical_summary
  @pt_600_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 600,
    locale: 'portuguese',
    start_date_offset: 12,
    num_of_lessons: 5,
    note: 'Portuguese additional note'
  )
end

def pt_600_notes_form
  @pt_600_notes_form ||= NurseTasks::ClinicalSummary::NotesForm.new(
    id: 600,
    locale: 'portuguese',
    note: 'Portuguese additional note'
  )
end

def pt_600_nurse_tasks
  @pt_600_nurse_tasks ||= NurseTasks.new(
    pt_id: 600,
    locale: 'portuguese'
  )
end

def pt_700_clinical_summary
  @pt_700_clinical_summary ||= NurseTasks::ClinicalSummary.new(
    id: 700,
    incomplete_lesson: 10
  )
end

def pt_700_nurse_tasks
  @pt_700_nurse_tasks ||= NurseTasks.new(pt_id: 700)
end
