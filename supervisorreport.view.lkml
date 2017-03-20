view: supervisorreport {
  sql_table_name: public.SUPERVISORREPORT ;;

  dimension: Id {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: Avg_emp {
    hidden: yes
    type: string
    sql: ${TABLE}.AVG_EMP ;;
  }

  dimension: Department {
    type: string
    sql: ${TABLE}.DEPARTMENT ;;
  }

  dimension: Employee {
    hidden: yes
    type: string
    sql: ${TABLE}.EMPLOYEE ;;
  }

  dimension: Supervisor {
    hidden: yes
    type: string
    sql: ${TABLE}.SUPERVISOR ;;
  }

  dimension: Year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  # measures


  measure: Count {
    type: count

  }

  measure: Emp_count {
    label: "Employees"
    value_format: "#,##0"
    type: sum
    sql: round(${Employee}/100) ;;
  }

  measure: Supervisor_count {
    label: "Supervisors"
    value_format: "#,##0"
    type: sum
    sql: round(${Supervisor}/100) ;;

    filters: {
      field: Year
      value: "2016"
    }
  }

  measure: Average_Emp {
    label: " Average Employees"
    type: sum
    value_format: "#,##0"
    sql: ${Avg_emp} ;;

    filters: {
      field: Year
      value: "2016"
    }
  }
}
