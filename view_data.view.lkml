view: view_data {
  sql_table_name: PUBLIC.VIEW_DATA ;;

  dimension: bucketdays {
    type: string
    sql: ${TABLE}.BUCKETDAYS ;;
  }

  dimension: bucketmonths {
    type: string
    sql: ${TABLE}.BUCKETMONTHS ;;
  }

  dimension: bucketquarters {
    type: string
    sql: ${TABLE}.BUCKETQUARTERS ;;
  }

  dimension: bucketweeks {
    type: string
    sql: ${TABLE}.BUCKETWEEKS ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: conversions {
    type: string
    sql: ${TABLE}.CONVERSIONS ;;
  }

  dimension: course_code {
    type: string
    sql: ${TABLE}.COURSE_CODE ;;
  }

  dimension: course_id {
    type: string
    sql: ${TABLE}.COURSE_ID ;;
  }

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

  dimension: fees {
    type: string
    sql: ${TABLE}.FEES ;;
  }

  dimension: sales {
    type: string
    sql: ${TABLE}.SALES ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.SLUG ;;
  }

  dimension: spend {
    type: string
    sql: ${TABLE}.SPEND ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
