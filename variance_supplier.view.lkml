view: variance_supplier {
  sql_table_name: PUBLIC.VARIANCE_SUPPLIER ;;

  dimension: invoice_a {
    type: string
    sql: ${TABLE}.INVOICE_A ;;
  }

  dimension: invoice_amount {
    type: string
    sql: ${TABLE}.INVOICE_AMOUNT ;;
  }

  dimension: invoice_percent {
    type: string
    sql: ${TABLE}.INVOICE_PERCENT ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.SUPPLIER ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
