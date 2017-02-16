view: new_hire_retention {
  sql_table_name: public.NEW_HIRE_RETENTION ;;

  dimension: applicant_hires {
    type: string
    sql: ${TABLE}.APPLICANT_HIRES ;;
  }

  dimension: employee_separations {
    type: string
    sql: ${TABLE}.EMPLOYEE_SEPARATIONS ;;
  }

  dimension: first_service {
    type: string
    sql: ${TABLE}.FIRST_SERVICE ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.SOURCE_TYPE ;;
  }

  # measures

  measure: applicant_hires_m {
    type: average
    label: "Applicant Hires"
    sql: ${applicant_hires} ;;
  }

  measure: employee_separations_m {
    type: average
    label: "Employee Separations"
    sql: ${employee_separations} ;;
  }

  measure: first_service_m {
    type: average
    label: "First Service Milesotone "
    sql: ${first_service} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
