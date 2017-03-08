view: employees_trend {
  sql_table_name: PUBLIC.EMPLOYEES_TREND ;;

  dimension: employees {
    type: number
    sql: ${TABLE}.EMPLOYEES ;;
  }

  dimension: involuntary_termination {
    hidden: yes
    type: number
    sql: ${TABLE}.INVOLUNTARY_TERMINATION ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: voluntery {
    hidden: yes
    type: number
    sql: ${TABLE}.VOLUNTERY ;;
  }

  dimension: vol {
    hidden: yes
    type: number
    sql: ${TABLE}.VOL ;;
  }

  dimension: invol {
    hidden: yes
    type: number
    sql: ${TABLE}.invol ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  # measures

  measure: voluntery_employees {
    label: "Voluntary Termination"
    type: sum
    value_format: "#,##0"
    sql: round(${voluntery}/100) ;;

    filters: {
      field: year
      value: "2016"
    }

    filters: {
      field: quarter
      value: "Q3"
    }
  }



  measure: involuntary_termination_count {
    label: "Involuntary Termination"
    type: sum
    value_format: "#,##0"
    sql: round(${involuntary_termination}/10) ;;

    filters: {
      field: year
      value: "2016"
    }

    filters: {
      field: quarter
      value: "Q3"
    }
  }

  measure: count {
    type: count
    drill_fields: []
  }


}
