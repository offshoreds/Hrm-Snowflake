connection: "snowflake_hrm"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

label: "HRM"


explore: headcount {}

explore: supervisorreport {
  label: "Supervisor"
}

explore: employees_trend {}

explore: payroll {}

explore: requisition_events {}

explore: recruitment_events {}

explore: new_hire_trend {}

explore: open_requisition {}

explore: top5_vacancies {}

explore: recruitment_stage {}

explore: vacancy_fill_rate {}

explore: vacancy_rate {}

explore: new_hire_retention {}

explore: new_hire_source {}

explore: new_hire_view {}

explore: threeyears_saltrend {}

explore: salary_compression {}

explore: performance_base {}

explore: top_cost_centers {}

explore: expenses_category {}

explore: top_spenders {}

explore: expenses_by_time_period {}

explore: recent_emp {}

explore: expenses_by_day {}
