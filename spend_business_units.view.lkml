view: spend_business_units {
  sql_table_name: PUBLIC.SPEND_BUSINESS_UNITS ;;

  dimension: business_unit {
    type: string
    sql: ${TABLE}.BUSINESS_UNIT ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: spend_a {
    type: string
    sql: ${TABLE}.SPEND_A ;;
  }

  dimension: spend_amount {
    type: string
    sql: ${TABLE}.SPEND_AMOUNT ;;
  }

  dimension: spend_p {
    type: string
    sql: ${TABLE}.SPEND_P ;;
  }

  dimension: spend_percent {
    type: string
    sql: ${TABLE}.SPEND_PERCENT ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
