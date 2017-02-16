view: return_trend {
  sql_table_name: PUBLIC.RETURN_TREND ;;

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: return_amount {
    type: string
    sql: ${TABLE}.RETURN_AMOUNT ;;
  }

  dimension: return_p {
    type: number
    sql: ${TABLE}.RETURN_P ;;
  }

  dimension: return_percent {
    type: string
    sql: ${TABLE}.RETURN_PERCENT ;;
  }

  dimension: returns {
    type: number
    sql: ${TABLE}.RETURNS ;;
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
