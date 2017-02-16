view: contract_leakage_top_supplier {
  sql_table_name: PUBLIC.CONTRACT_LEAKAGE_TOP_SUPPLIER ;;

  dimension: c_amount {
    type: string
    sql: ${TABLE}.C_AMOUNT ;;
  }

  dimension: contract_amount {
    type: string
    sql: ${TABLE}.CONTRACT_AMOUNT ;;
  }

  dimension: contract_percent {
    type: string
    sql: ${TABLE}.CONTRACT_PERCENT ;;
  }

  dimension: suupliers {
    type: string
    sql: ${TABLE}.SUUPLIERS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
