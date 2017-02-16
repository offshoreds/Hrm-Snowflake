view: d_campaign {
  sql_table_name: PUBLIC.D_CAMPAIGN ;;

  dimension_group: campaign {
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
    sql: ${TABLE}.CAMPAIGN_DATE ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
