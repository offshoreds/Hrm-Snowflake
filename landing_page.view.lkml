view: landing_page {
  sql_table_name: PUBLIC.LANDING_PAGE ;;

  dimension: column10 {
    type: string
    sql: ${TABLE}.COLUMN10 ;;
  }

  dimension: column7 {
    type: string
    sql: ${TABLE}.COLUMN7 ;;
  }

  dimension: column8 {
    type: string
    sql: ${TABLE}.COLUMN8 ;;
  }

  dimension: column9 {
    type: string
    sql: ${TABLE}.COLUMN9 ;;
  }

  dimension: date2 {
    type: string
    sql: ${TABLE}.DATE2 ;;
  }

  dimension: date_l {
    type: string
    sql: ${TABLE}.DATE_L ;;
  }

  dimension: no_of_sessions {
    type: string
    sql: ${TABLE}.NO_OF_SESSIONS ;;
  }

  dimension: page_name {
    type: string
    sql: ${TABLE}.PAGE_NAME ;;
  }

  dimension: percent_of_session {
    type: string
    sql: ${TABLE}.PERCENT_OF_SESSION ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.SESSION_ID ;;
  }

  dimension: srno {
    type: string
    sql: ${TABLE}.SRNO ;;
  }

  measure: count {
    type: count
    drill_fields: [page_name]
  }
}
