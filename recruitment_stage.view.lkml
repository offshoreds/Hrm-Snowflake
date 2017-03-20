view: recruitment_stage {
  sql_table_name: public.RECRUITMENT_STAGE ;;

  dimension: application_start {
    hidden: yes
    type: string
    sql: ${TABLE}.APPLICATION_START ;;
  }

  dimension: offer_extended {
    hidden: yes
    type: string
    sql: ${TABLE}.OFFER_EXTENDED ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: requisition_approved {
    hidden: yes
    type: string
    sql: ${TABLE}.REQUISITION_APPROVED ;;
  }

  dimension: timetofill {
    hidden: yes
    type: string
    sql: ${TABLE}.TIMETOFILL ;;
  }

  dimension: timetohire {
    hidden: yes
    type: string
    sql: ${TABLE}.TIMETOHIRE ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  #measures

  measure: application_start_m {
    label: "Application Start"
    type: sum
    value_format: "#,###"
    sql: round(${application_start}/100) ;;
  }

  measure: offer_extended_m {
    label: "Offer Extended"
    value_format: "#,###"
    type: sum
    sql:round( ${offer_extended}/100) ;;
  }

  measure: requisition_approved_m {
    label: "Requisition Approved"
    type: sum
    value_format: "#,###"
    sql:round( ${requisition_approved}/100) ;;
  }

  measure: timetofill_m {
    label: "Time To Fill"
    type: sum
    sql: ${timetofill} ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
