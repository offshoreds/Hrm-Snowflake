view: receipt_date {
  sql_table_name: PUBLIC.RECEIPT_DATE ;;

  dimension: amount {
    type: string
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: percent_reception {
    type: string
    sql: ${TABLE}.PERCENT_RECEPTION ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: recept_a {
    type: string
    sql: ${TABLE}.RECEPT_A ;;
  }

  dimension: reception_p {
    type: string
    sql: ${TABLE}.RECEPTION_P ;;
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
