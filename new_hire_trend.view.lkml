view: new_hire_trend {
  sql_table_name: public.NEW_HIRE_TREND ;;

  dimension: month {
    type: string
    sql: ${TABLE}.MONTH ;;
  }

  dimension: new_hires_ytd {
    hidden: yes
    type: string
    sql: ${TABLE}.NEW_HIRES_YTD ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  # measures

  measure: new_hires_ytd_m {
    label: "New Hires"
    type: sum
    sql: round(${new_hires_ytd}/100) ;;

    link: {
      label: "Recruitment Details"
      url: "/dashboards/hrm::recruitment"
    }
  }


  measure: new_hires_ytd_m_nl {
    label: "New Hires YTD"
    type: sum

    sql: round(${new_hires_ytd} /10);;


  }

  measure: new_hires_ytd_m_2015 {
    label: "New Hires 2015"
    type: sum
    sql: round(${new_hires_ytd}/100) ;;

    filters: {
      field: year
      value: "2015"
    }
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
