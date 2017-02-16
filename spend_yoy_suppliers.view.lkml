view: spend_yoy_suppliers {
  sql_table_name: PUBLIC.SPEND_YOY_SUPPLIERS ;;

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: spend_amount {
    type: string
    sql: ${TABLE}.SPEND_AMOUNT ;;
  }

  dimension: suppliers {
    type: string
    sql: ${TABLE}.SUPPLIERS ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
