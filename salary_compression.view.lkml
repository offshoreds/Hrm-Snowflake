view: salary_compression {
  sql_table_name: public.SALARY_COMPRESSION ;;

  dimension: avg_annual_basesal {
    type: string
    sql: ${TABLE}.AVG_ANNUAL_BASESAL ;;
  }

  dimension: employee_headcount {
    type: string
    sql: ${TABLE}.EMPLOYEE_HEADCOUNT ;;
  }

  dimension: median_annual_basesal {
    type: string
    sql: ${TABLE}.MEDIAN_ANNUAL_BASESAL ;;
  }

  dimension: pay_grade_name {
    type: string
    sql: ${TABLE}.PAY_GRADE_NAME ;;
  }

  dimension: pay_yearly_amount {
    type: string
    sql: ${TABLE}.PAY_YEARLY_AMOUNT ;;
  }

  dimension: percent_midpoint {
    type: string
    sql: ${TABLE}.PERCENT_MIDPOINT ;;
  }

  dimension: high_salary {
    type: string
    sql: ${TABLE}.HIGH_SALARY ;;
  }

  dimension: Training_Costs {
    type: string
    sql: ${TABLE}.TRAINING_COST ;;
  }

  dimension: Cost_Recruitment {
    type: string
    sql: ${TABLE}.COST_RECRUITMENT ;;
  }

  dimension: Pay_Amount_Y {
    type: string
    sql: ${TABLE}.PAY_AMOUNT_Y ;;
  }

  # measures

  measure: avg_annual_basesal_m {
    label: "Avg Annual Base Salary"
    type: sum
    value_format: "$0.00"
    sql: ${avg_annual_basesal} ;;
  }

  measure: employee_headcount_m {
    type: sum
    label: "Employee Headcount"
    sql: ${employee_headcount} ;;
  }

  measure: median_annual_basesal_m {
    type: sum
    label: "Median Annual Base Salary"
    value_format: "$0.00"
    sql: ${median_annual_basesal} ;;
  }

  measure: pay_yearly_amount_m {
    type: sum
    label: "Pay Yearly Amount"
    value_format: "$#,##0"
    sql: ${Pay_Amount_Y} ;;
  }

  measure: Training_Cost {
    type: sum
    label: "Training Cost Per FTE"
    value_format: "$#,##0"
    sql: ${Training_Costs} ;;


  }

  measure: Cost_Per_Recruitment {
    type: sum
    label: "Cost Per Recruitment"
    value_format: "$#,##0"
    sql: ${Cost_Recruitment} ;;


  }

  measure: high_yearly_amount {
    type: sum
    label: "Highest Pay Yearly Amount"
    value_format: "$#,##0"
    sql: ${high_salary} ;;

    filters: {
      field: pay_grade_name
      value: "Senior Pilot Grade B1"
    }

    link: {
      label: "Employee Expenses details"
      url: "/dashboards/39"
    }
  }

  measure: lowest_yearly_amount_m {
    type: sum
    label: "Lowest Pay Yearly Amount"
    value_format: "$#,##0"
    sql: ${high_salary} ;;

    filters: {
      field: pay_grade_name
      value: "Supervisor  Grade A8"
    }
  }

  measure: percent_midpoint_m {
    type: sum
    label: "Percent Midpoint"
    value_format: "$0.00"
    sql: ${percent_midpoint} ;;
  }

  measure: count {
    type: count
    drill_fields: [pay_grade_name]
  }
}
