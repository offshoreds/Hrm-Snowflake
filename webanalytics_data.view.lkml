view: webanalytics_data {
  sql_table_name: PUBLIC.WEBANALYTICS_DATA ;;

  dimension: avg_session_duration {
    type: string
    sql: ${TABLE}.AVG_SESSION_DURATION ;;
  }

  dimension: bounce_rate {
    type: string
    sql: ${TABLE}.BOUNCE_RATE ;;
  }

  dimension: new_users {
    type: string
    sql: ${TABLE}.NEW_USERS ;;
  }

  dimension: pages_by_session {
    type: string
    sql: ${TABLE}.PAGES_BY_SESSION ;;
  }

  dimension: percent_new_sessions {
    type: string
    sql: ${TABLE}.PERCENT_NEW_SESSIONS ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: sessions {
    type: string
    sql: ${TABLE}.SESSIONS ;;
  }

  dimension_group: w {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.W_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
