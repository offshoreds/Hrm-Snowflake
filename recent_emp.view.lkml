view: recent_emp {
  sql_table_name: public.RECENT_EMP ;;

  dimension: Total_amount_spent {
    hidden: yes
    type: string
    sql: ${TABLE}.AMOUNT_SPENT ;;
  }

  dimension: emp {
    type: string
    label: "Employee Name"
    sql: ${TABLE}.EMP ;;
  }

  dimension: emp_id {
    hidden: yes
    type: string
    sql: ${TABLE}.EMP_ID ;;
  }

  dimension: emp_report_number {
    hidden: yes
    type: string
    sql: ${TABLE}.EMP_REPORT_NUMBER ;;
  }

  dimension: report_status {
    hidden: yes
    type: string
    sql: ${TABLE}.REPORT_STATUS ;;
  }

  dimension: spent_date {
    hidden: yes
    type: string
    label: "Spent Date "
    sql: ${TABLE}.SPENT_DATE ;;
  }

  dimension: Total_Spent {
    hidden: yes
    type: string
    sql: ${TABLE}.TOTAL_SPENT ;;
  }

  # measures

  measure: Total_amount_spent_m {
    type: sum
    label: "Amount Spent"
    value_format: "$#,##0"
    sql: round(${Total_Spent}/100) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
