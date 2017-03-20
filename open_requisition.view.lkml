view: open_requisition {
  sql_table_name: public.OPEN_REQUISITION ;;

  dimension: country {
    type: string
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: requisitions {
    hidden: yes
    type: string
    sql: ${TABLE}.REQUISITIONS ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  # measures

  measure: requisitions_m {
    label: "Open Requisitions"
    type: sum
    sql: round(${requisitions}/100) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
