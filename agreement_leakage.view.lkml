view: agreement_leakage {
  sql_table_name: PUBLIC.AGREEMENT_LEAKAGE ;;

  dimension: amount {
    type: string
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: amount_spend {
    type: number
    sql: ${TABLE}.AMOUNT_SPEND ;;
  }

  dimension: business_id {
    type: string
    sql: ${TABLE}.BUSINESS_ID ;;
  }

  dimension: business_name {
    type: string
    sql: ${TABLE}.BUSINESS_NAME ;;
  }

  dimension: business_unit {
    type: string
    sql: ${TABLE}.BUSINESS_UNIT ;;
  }

  measure: count {
    type: count
    drill_fields: [business_name]
  }
}
