view: potential_supplierz {
  sql_table_name: PUBLIC.POTENTIAL_SUPPLIERZ ;;

  dimension: avg_invoice_price {
    type: string
    sql: ${TABLE}.AVG_INVOICE_PRICE ;;
  }

  dimension: invoice_quantity {
    type: string
    sql: ${TABLE}.INVOICE_QUANTITY ;;
  }

  dimension: max_invoice_price {
    type: string
    sql: ${TABLE}.MAX_INVOICE_PRICE ;;
  }

  dimension: min_invoice_price {
    type: string
    sql: ${TABLE}.MIN_INVOICE_PRICE ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.PRODUCT_NAME ;;
  }

  dimension: savings_amount {
    type: string
    sql: ${TABLE}.SAVINGS_AMOUNT ;;
  }

  dimension: savings_percentage {
    type: string
    sql: ${TABLE}.SAVINGS_PERCENTAGE ;;
  }

  dimension: spend {
    type: string
    sql: ${TABLE}.SPEND ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.SUPPLIER_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, supplier_name]
  }
}
