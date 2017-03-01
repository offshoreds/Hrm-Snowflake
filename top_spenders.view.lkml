view: top_spenders {
  sql_table_name: public.TOP_SPENDERS ;;

  dimension: category_spent {
    hidden: yes
    type: string
    sql: ${TABLE}.CATEGORY_SPENT ;;
  }

  dimension: emp_id {
    hidden: yes
    type: string
    sql: ${TABLE}.EMP_ID ;;
  }

  dimension: employee_name {
    type: string
    sql: ${TABLE}.EMPLOYEE_NAME ;;
  }

  dimension: percent_of_total {
    hidden: yes
    type: string
    sql: ${TABLE}.PERCENT_OF_TOTAL ;;
  }

  dimension: total_spent {
    hidden: yes
    type: string
    sql: ${TABLE}.TOTAL_SPENT ;;
  }

  # measures



  measure: total_spent_m {
    type: sum
    label: "Total Amount Spent"
    value_format: "$#,##0"
    sql: ${total_spent} ;;
  }

  measure: count {
    type: count
    drill_fields: [employee_name]
  }
}
