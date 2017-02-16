view: spend_transactions {
  sql_table_name: PUBLIC.SPEND_TRANSACTIONS ;;

  dimension: c_l_amount {
    type: string
    sql: ${TABLE}.C_L_AMOUNT ;;
  }

  dimension: c_s_amount {
    type: string
    sql: ${TABLE}.C_S_AMOUNT ;;
  }

  dimension: contract_leakage {
    type: string
    sql: ${TABLE}.CONTRACT_LEAKAGE ;;
  }

  dimension: contract_spend {
    type: string
    sql: ${TABLE}.CONTRACT_SPEND ;;
  }

  dimension: i_amount {
    type: string
    sql: ${TABLE}.I_AMOUNT ;;
  }

  dimension_group: invoice {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.INVOICE_DATE ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.INVOICE_NUMBER ;;
  }

  dimension: invoice_type {
    type: string
    sql: ${TABLE}.INVOICE_TYPE ;;
  }

  dimension: invoiced_amount {
    type: string
    sql: ${TABLE}.INVOICED_AMOUNT ;;
  }

  dimension: invoiced_quantity {
    type: string
    sql: ${TABLE}.INVOICED_QUANTITY ;;
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}.ITEM_DESCRIPTION ;;
  }

  dimension: off_contract_spend {
    type: string
    sql: ${TABLE}.OFF_CONTRACT_SPEND ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.SUPPLIER_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [supplier_name]
  }
}
