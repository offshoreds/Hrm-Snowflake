view: returns_supplier {
  sql_table_name: PUBLIC.RETURNS_SUPPLIER ;;

  dimension: return_amount {
    type: string
    sql: ${TABLE}.RETURN_AMOUNT ;;
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
