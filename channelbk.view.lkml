view: channelbk {
  sql_table_name: PUBLIC.CHANNELBK ;;

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: date_c {
    type: string
    sql: ${TABLE}.DATE_C ;;
  }

  dimension: session_c {
    type: string
    sql: ${TABLE}.SESSION_C ;;
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
