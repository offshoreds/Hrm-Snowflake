view: purchase_by_supplier {
  sql_table_name: PUBLIC.PURCHASE_BY_SUPPLIER ;;

  dimension: amount {
    type: string
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: amount_spend {
    type: string
    sql: ${TABLE}.AMOUNT_SPEND ;;
  }

  dimension: suplier {
    type: string
    sql: ${TABLE}.SUPLIER ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
