view: web_analytics {
  sql_table_name: PUBLIC.WEB_ANALYTICS ;;

  dimension: pageviews {
    type: string
    sql: ${TABLE}.PAGEVIEWS ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.SESSION_ID ;;
  }

  dimension: timestamp_w {
    type: string
    sql: ${TABLE}.TIMESTAMP_W ;;
  }

  dimension: users {
    type: string
    sql: ${TABLE}.USERS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
