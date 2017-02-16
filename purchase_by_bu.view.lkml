view: purchase_by_bu {
  sql_table_name: PUBLIC.PURCHASE_BY_BU ;;

  dimension: amount {
    type: string
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: business_unit {
    type: string
    sql: ${TABLE}.BUSINESS_UNIT ;;
  }

  dimension: purchase_a {
    type: string
    sql: ${TABLE}.PURCHASE_A ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
