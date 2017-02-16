view: calendar {
  sql_table_name: PUBLIC.CALENDAR ;;

  dimension_group: day {
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
    sql: ${TABLE}.DAY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
