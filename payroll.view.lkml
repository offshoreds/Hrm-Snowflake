view: payroll {
  sql_table_name: public.PAYROLL ;;

  dimension: overtime_expense {
    hidden: yes
    type: string
    sql: ${TABLE}.OVERTIME_EXPENSE ;;
  }

  dimension: payroll_expense {
    hidden: yes
    type: string
    sql: ${TABLE}.PAYROLL_EXPENSE ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: support_expense {
    hidden: yes
    type: string
    sql: ${TABLE}.SUPPORT_EXPENSE ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  dimension: Total_Payroll {
    hidden: yes
    type: string
    sql: ${TABLE}.TOTAL_PAYROLL ;;
  }

  dimension: Previous_Payroll {
    hidden: yes
    type: string
    sql: ${TABLE}.PREVIOUS_PAYROLL ;;
  }

  # measures


  measure: payroll_2015 {
    label: "Payroll Expenses 2015"
    value_format: "$0,, \" M\""
    type: sum
    sql: round(${Previous_Payroll}/10) ;;

    filters: {
      field: year
      value: "2015"
    }
  }

  measure: payroll {
    label: "Payroll Expenses"
    value_format: "$0,, \" M\""
    type: sum
    sql: round(${Total_Payroll}/10) ;;

    link: {
      label: "Employee Expenses details"
      url: "/dashboards/hrm::employee_expenses"
    }
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
