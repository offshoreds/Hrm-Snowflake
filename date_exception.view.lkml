view: date_exception {
  sql_table_name: PUBLIC.DATE_EXCEPTION ;;

  dimension: act_suppliers {
    type: string
    sql: ${TABLE}.ACT_SUPPLIERS ;;
  }

  dimension: cat_amount {
    type: string
    sql: ${TABLE}.CAT_AMOUNT ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: contracted {
    type: string
    sql: ${TABLE}.CONTRACTED ;;
  }

  dimension: exc_amount {
    type: string
    sql: ${TABLE}.EXC_AMOUNT ;;
  }

  dimension: exception_amount {
    type: string
    sql: ${TABLE}.EXCEPTION_AMOUNT ;;
  }

  dimension: invoices {
    type: string
    sql: ${TABLE}.INVOICES ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.SUPPLIER ;;
  }

  dimension: total_spend {
    type: string
    sql: ${TABLE}.TOTAL_SPEND ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
