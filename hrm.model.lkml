connection: "snowflake_hrm"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

label: "HRM"


explore: headcount {
  label: "Headcount"
}

explore: supervisorreport {
  label: "Supervisor"
}

explore: employees_trend {
  view_label: "Employess"
}

explore: payroll {
  label: "Payroll"
}

explore: requisition_events {
  label: "Requisition Events"
}

explore: recruitment_events {
  label: "Recruitment Events"

}

explore: new_hire_trend {
  label: " Hires"
}

explore: open_requisition {
  label: "Open Requisition"
}

explore: top5_vacancies {
  label: "Top Five"
}

explore: recruitment_stage {
  label: "Recruitment Stage"
}

explore: vacancy_fill_rate {
  label: "Vacancy Fill Rate"
}

explore: vacancy_rate {
  label: "Vacancy Rate"
}

explore: new_hire_retention {
  label: "New Hire Retention"
}

explore: new_hire_source {
  label: "New Hire Source"
}

explore: new_hire_view {
  label: "New Hire View"
}

explore: threeyears_saltrend {
  label: "Three Years"
}

explore: salary_compression {
  label: "Salary Compression"
}

explore: performance_base {
  label: "Performance Base"
}

explore: top_cost_centers {
  label: "Top Cost Centers"
}

explore: expenses_category {
  label: "Expenses Category"
}

explore: top_spenders {
  label: "Top Spenders"
}

explore: expenses_by_time_period {
  label: "Expenses By Time Period"
}

explore: recent_emp {
  label: "Recent Emp"

}

explore: expenses_by_day {
  label: "Expenses By Day"
}
