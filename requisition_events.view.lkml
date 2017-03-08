view: requisition_events {
  sql_table_name: public.REQUISITION_EVENTS ;;

  dimension: Openings {
    hidden: yes
    type: string
    sql: ${TABLE}.OPENINGS ;;
  }

  dimension: Requisition_opening {
    hidden: yes
    type: string
    sql: ${TABLE}.REQUISITION_OPENING ;;
  }

  dimension: Year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  # measures

  measure: Job_openings {
    type: sum
    value_format: "#,##0"
    sql:round( ${Openings}/100) ;;
  }

  measure: Job_requisition_opening {
    type: sum
    value_format: "#,##0"
    sql:round( ${Requisition_opening}/10) ;;
  }







  measure: count {
    type: count
    drill_fields: []
  }
}
