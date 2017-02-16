view: calendar_data {
  sql_table_name: PUBLIC.CALENDAR_DATA ;;

  dimension_group: created {
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
    sql: ${TABLE}.CREATED ;;
  }

  dimension: date_v {
    type: string
    sql: ${TABLE}.DATE_V ;;
  }

  dimension: datesort {
    type: string
    sql: ${TABLE}.DATESORT ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.MONTH ;;
  }

  dimension: monthsort {
    type: string
    sql: ${TABLE}.MONTHSORT ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: quartersort {
    type: string
    sql: ${TABLE}.QUARTERSORT ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}.WEEK ;;
  }

  dimension: weeksort {
    type: string
    sql: ${TABLE}.WEEKSORT ;;
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
