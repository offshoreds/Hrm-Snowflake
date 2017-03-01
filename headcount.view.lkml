view: headcount {
  sql_table_name: PUBLIC.HEADCOUNT ;;

  dimension: Id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: Contingent_head_count {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTINGENT_HEAD_COUNT ;;
  }

  dimension: Total_Head_Count {
    hidden: yes
    type: string
    sql: ${TABLE}.TOTAL_HEAD_COUNT ;;
  }

  dimension: turnover_percent {
    hidden: yes
    type: string
    sql: ${TABLE}.turnover_percent ;;
  }

  dimension: INVOL_TERM {
    hidden: yes
    type: string
    sql: ${TABLE}.INVOL_TERM ;;
  }

  dimension: VOL_TERM {
    hidden: yes
    type: string
    sql: ${TABLE}.VOL_TERM ;;
  }

  dimension: I_TERM {
    hidden: yes
    type: string
    sql: ${TABLE}.I_TERM ;;
  }

  dimension: V_TERM {
    hidden: yes
    type: string
    sql: ${TABLE}.V_TERM ;;
  }

  dimension: TERMINATION {
    hidden: yes
    type: string
    sql: ${TABLE}.TERMINATION ;;
  }

  dimension: Department_name {
    type: string
    sql: ${TABLE}.DEPARTMENT_NAME ;;
  }

  dimension: Emp_headcount {
    hidden: yes
    type: string
    sql: ${TABLE}.EMP_HEADCOUNT ;;
  }

  dimension: Turnover {
    hidden: yes
    type: string
    sql: ${TABLE}.TURNOVER ;;
  }

  dimension: Year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  dimension: Quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  # measures

  measure: Contingent_emp {
    label: " Permanent Employees."
    type: sum
    value_format: "#,##0"
    sql: ${Emp_headcount} ;;

    filters: {
      field: Year
      value: "2016"
    }

    filters: {
      field: Quarter
      value: "Q3"
    }

    link: {
      label: "Workforce Effectiveness Details"
      url: "/dashboards/hrm::workforce_effectiveness"
    }
  }

  measure: Contingent_emp_nl {
    label: " Permanent Employees."
    type: sum

    value_format: "#,##0"
    sql: ${Emp_headcount} ;;

    filters: {
      field: Year
      value: "2016"
    }

    filters: {
      field: Quarter
      value: "Q3"
    }


  }


  measure: Contingent_emp_m {
    label: "Permanent Employees"
    type: sum
    value_format: "#,##0"
    sql: ${Emp_headcount} ;;
  }

  measure: Contingent_emp_2015 {
    label: "Previous Year Permanent Employees "
    type: sum
    value_format: "#,##0"
    sql: ${Emp_headcount} ;;

    filters: {
      field: Year
      value: "2015"
    }

    filters: {
      field: Quarter
      value: "Q4"
    }
  }


  measure: Employees {
    label: "Contingent Employees"
    type: sum
    value_format: "#,##0"
    sql: ${Contingent_head_count} ;;

    filters: {
      field: Year
      value: "2015,2016"
    }
  }

  measure: Employees_Sum {
    label: "Contingent Employees."
    type: sum
    value_format: "#,##0"
    sql: ${Contingent_head_count} ;;

    filters: {
      field: Year
      value: "2016"
    }

    filters: {
      field: Quarter
      value: "Q3"
    }

    link: {
      label: "Workforce Effectiveness Details"
      url: "/dashboards/hrm::workforce_effectiveness"
    }
  }
  measure: Employees_Sum_nl {
    label: "Contingent Employees."
    type: sum
    value_format: "#,##0"
    sql: ${Contingent_head_count} ;;

    filters: {
      field: Year
      value: "2016"
    }

    filters: {
      field: Quarter
      value: "Q3"
    }


  }

  measure: Employees_m {
    label: "Previous Year Contingent Employees"
    type: sum
    value_format: "#,##0"
    sql: ${Contingent_head_count} ;;

    filters: {
      field: Year
      value: "2015"
    }

    filters: {
      field: Quarter
      value: "Q4"
    }
  }

  measure: Emp_Turnover {
    label: "Current Year Turnover "
    type: sum
    value_format: "0\%"
    sql: ${turnover_percent} ;;

    filters: {
      field: Year
      value: "2016"
    }

    filters: {
      field: Quarter
      value: "Q3"
    }

    link: {
      label: "Recruitment Details"
      url: "/dashboards/hrm::recruitment"
    }
  }

  measure: Emp_Turnover_2015 {
    label: "Previous Year Employees Turnover"
    value_format: "0.##\%"
    type: sum
    sql: ${turnover_percent} ;;

    filters: {
      field: Year
      value: "2015"
    }

    filters: {
      field: Quarter
      value: "Q4"
    }
  }

  measure: count {
    hidden: yes
    type: count

  }

  measure: Total_Emp_2015 {
    label: "Previous Year Employees"
    type: sum
    value_format: "#,##0"
    sql: ${Total_Head_Count} ;;

    filters: {
      field: Year
      value: "2015"
    }

    filters: {
      field: Quarter
      value: "Q4"
    }
  }

  measure: Total_Emp {
    label: "Current Employees"
    type: sum
    value_format: "#,##0"
    sql: ${Total_Head_Count} ;;

    filters: {
      field: Year
      value: "2016"
    }

    filters: {
      field: Quarter
      value: "Q3"
    }

    link: {
      label: "Workforce Effectiveness Details"
      url: "/dashboards/hrm::workforce_effectiveness"
    }
  }

  measure: Total_Emp_m {
    label: "Total Employees"
    type: sum
    value_format: "#,##0"
    sql: ${Contingent_head_count}+${Emp_headcount} ;;

    filters: {
      field: Year
      value: "2015,2016"
    }
  }

  measure: Total_Emp_termi {
    label: "Employees Termination"
    type: sum
    value_format: "#,##0"
    sql: ${TERMINATION} ;;

    filters: {
      field: Year
      value: "2016"
    }

    link: {
      label: "Recruitment Details"
      url: "/dashboards/hrm::recruitment"
    }
  }

  measure: Total_Emp_termi_voluntary {
    label: "Voluntary Employees Termination"
    type: sum
    value_format: "#,##0"
    sql: ${V_TERM} ;;

    filters: {
      field: Year
      value: "2014,2015,2016"
    }
  }

  measure: Total_Emp_termi_involuntary {
    label: "Involuntary Employees Termination"
    type: sum
    value_format: "#,##0"
    sql: ${I_TERM} ;;

    filters: {
      field: Year
      value: "2014,2015,2016"
    }
  }


  measure: Total_Emp_2015_termi {
    label: "Previous Year Employees Termination "
    type: sum
    value_format: "#,##0"
    sql: ${TERMINATION} ;;

    filters: {
      field: Year
      value: "2015"
    }
  }

  measure: TERMINATION_VOL {
    label: "Voluntary  Termination"
    type: sum
    value_format: "#,##0"
    sql: ${VOL_TERM} ;;

    filters: {
      field: Year
      value: "2015,2016"
    }
  }

  measure: InTERMINATION_VOL {
    label: "InVoluntary  Termination"
    type: sum
    value_format: "#,##0"
    sql: ${INVOL_TERM} ;;

    filters: {
      field: Year
      value: "2015,2016"
    }
  }
}
