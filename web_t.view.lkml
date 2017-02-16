view: web_t {
  sql_table_name: PUBLIC.WEB_T ;;

  dimension: bounce_rate {
    type: string
    sql: ${TABLE}.BOUNCE_RATE ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.BROWSER ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.MONTH ;;
  }

  dimension: new_sessions {
    type: string
    sql: ${TABLE}.NEW_SESSIONS ;;
  }

  dimension: page_name {
    type: string
    sql: ${TABLE}.PAGE_NAME ;;
  }

  dimension: page_views {
    type: string
    sql: ${TABLE}.PAGE_VIEWS ;;
  }

  dimension: pages__sessions {
    type: string
    sql: ${TABLE}.PAGES__SESSIONS ;;
  }

  dimension: session_by_browser {
    type: string
    sql: ${TABLE}.SESSION_BY_BROWSER ;;
  }

  dimension: sessions_c {
    type: string
    sql: ${TABLE}.SESSIONS_C ;;
  }

  dimension: sessions_p {
    type: string
    sql: ${TABLE}.SESSIONS_P ;;
  }

  dimension: sessions_t {
    type: string
    sql: ${TABLE}.SESSIONS_T ;;
  }

  dimension: users {
    type: string
    sql: ${TABLE}.USERS ;;
  }

  dimension: year_ {
    type: string
    sql: ${TABLE}.YEAR_ ;;
  }

  measure: count {
    type: count
    drill_fields: [page_name]
  }
}
