view: performance_base {
  sql_table_name: public.PERFORMANCE_BASE ;;

  dimension: avg_annual_base_salary {
    hidden: yes
    type: string
    sql: ${TABLE}.AVG_ANNUAL_BASE_SALARY ;;
  }

  dimension: full_base_salary {
    hidden: yes
    type: string
    sql: ${TABLE}.FULL_BASE_SALARY ;;
  }

  dimension: max_annual_base_salary {
    hidden: yes
    type: string
    sql: ${TABLE}.MAX_ANNUAL_BASE_SALARY ;;
  }

  dimension: media_annual_base_salary {
    hidden: yes
    type: string
    sql: ${TABLE}.MEDIA_ANNUAL_BASE_SALARY ;;
  }

  dimension: min_annual_base_salary {
    hidden: yes
    type: string
    sql: ${TABLE}.MIN_ANNUAL_BASE_SALARY ;;
  }

  dimension: performance_brand {
    type: string
    sql: ${TABLE}.PERFORMANCE_BRAND ;;
  }

  dimension: total_annual_base_salary {
    hidden: yes
    type: string
    sql: ${TABLE}.TOTAL_ANNUAL_BASE_SALARY ;;
  }

  # measures

  measure: avg_annual_base_salary_m {
    type: sum
    value_format: "$#,##0"
    label: "Avg Annual Base Salary"
    sql:round( ${avg_annual_base_salary}/100) ;;
  }

  measure: full_base_salary_m {
    type: sum
    value_format: "$#,##0"
    label: "Full Base Salary"
    sql:round( ${full_base_salary}/100) ;;
  }

  measure: max_annual_base_salary_m {
    type: sum
    value_format: "$#,##0"
    label: "Max Annual Base Salary"
    sql:round( ${max_annual_base_salary}/100) ;;
  }

  measure: media_annual_base_salary_m {
    type: sum
    value_format: "$#,##0"
    label: "Media Annual Base Salary"
    sql: ${media_annual_base_salary} ;;
  }

  measure: min_annual_base_salary_m {
    type: sum
    value_format: "$#,##0"
    label: "Min Annual Base Salary"
    sql: round(${min_annual_base_salary}/100) ;;
  }

  measure: total_annual_base_salary_m {
    type: sum
    value_format: "$#,##0"
    label: "Total Annual Base Salary"
    sql: round(${total_annual_base_salary}/100) ;;
  }
}
