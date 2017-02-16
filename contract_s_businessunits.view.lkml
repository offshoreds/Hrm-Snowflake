view: contract_s_businessunits {
  sql_table_name: PUBLIC.CONTRACT_S_BUSINESSUNITS ;;

  dimension: business_unit {
    type: string
    sql: ${TABLE}.BUSINESS_UNIT ;;
  }

  dimension: c_amount {
    type: string
    sql: ${TABLE}.C_AMOUNT ;;
  }

  dimension: c_l_amount {
    type: string
    sql: ${TABLE}.C_L_AMOUNT ;;
  }

  dimension: c_percent {
    type: string
    sql: ${TABLE}.C_PERCENT ;;
  }

  dimension: contract_amount {
    type: string
    sql: ${TABLE}.CONTRACT_AMOUNT ;;
  }

  dimension: contract_percent {
    type: string
    sql: ${TABLE}.CONTRACT_PERCENT ;;
  }

  dimension: offcontract_percent {
    type: string
    sql: ${TABLE}.OFFCONTRACT_PERCENT ;;
  }

  dimension: p_l_rate {
    type: string
    sql: ${TABLE}.P_L_RATE ;;
  }

  dimension: s_amount {
    type: string
    sql: ${TABLE}.S_AMOUNT ;;
  }

  dimension: spend_amount {
    type: string
    sql: ${TABLE}.SPEND_AMOUNT ;;
  }

  dimension: total_bu {
    type: string
    sql: ${TABLE}.TOTAL_BU ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
