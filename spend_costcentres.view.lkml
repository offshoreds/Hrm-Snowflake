view: spend_costcentres {
  sql_table_name: PUBLIC.SPEND_COSTCENTRES ;;

  dimension: cost_centre_name {
    type: string
    sql: ${TABLE}.COST_CENTRE_NAME ;;
  }

  dimension: s_amount {
    type: string
    sql: ${TABLE}.S_AMOUNT ;;
  }

  dimension: spend_amount {
    type: string
    sql: ${TABLE}.SPEND_AMOUNT ;;
  }

  measure: count {
    type: count
    drill_fields: [cost_centre_name]
  }
}
