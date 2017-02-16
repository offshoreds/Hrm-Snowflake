view: browsers {
  sql_table_name: PUBLIC.BROWSERS ;;

  dimension: browser {
    type: string
    sql: ${TABLE}.BROWSER ;;
  }

  dimension: date_b {
    type: string
    sql: ${TABLE}.DATE_B ;;
  }

  dimension: session_b {
    type: string
    sql: ${TABLE}.SESSION_B ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.SESSION_ID ;;
  }

  dimension: session_percent {
    type: string
    sql: ${TABLE}.SESSION_PERCENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
