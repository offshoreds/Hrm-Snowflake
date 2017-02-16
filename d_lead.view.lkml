view: d_lead {
  sql_table_name: PUBLIC.D_LEAD ;;

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension_group: lead {
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
    sql: ${TABLE}.LEAD_DATE ;;
  }

  dimension: lead_id {
    type: string
    sql: ${TABLE}.LEAD_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
