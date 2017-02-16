view: spend_state {
  sql_table_name: PUBLIC.SPEND_STATE ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: camp_id {
    type: string
    sql: ${TABLE}.CAMP_ID ;;
  }

  dimension: isclosed {
    type: string
    sql: ${TABLE}.ISCLOSED ;;
  }

  dimension: iswon {
    type: string
    sql: ${TABLE}.ISWON ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: pipeline {
    type: string
    sql: ${TABLE}.PIPELINE ;;
  }

  dimension: pipeline_type {
    type: string
    sql: ${TABLE}.PIPELINE_TYPE ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: revenue {
    type: string
    sql: ${TABLE}.REVENUE ;;
  }

  dimension: revenue1 {
    type: string
    sql: ${TABLE}.REVENUE1 ;;
  }

  dimension: row_wid {
    type: string
    sql: ${TABLE}.ROW_WID ;;
  }

  dimension: spend_amount {
    type: string
    sql: ${TABLE}.SPEND_AMOUNT ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
