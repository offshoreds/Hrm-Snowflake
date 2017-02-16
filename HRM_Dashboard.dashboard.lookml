- dashboard: hrm_dashboard
  title: Hrm Dashboard
  layout: grid
  rows:

    - elements: [test]
      height:  500

  #filters:

  elements:

  - name: test
    title: 'Heads'
    type: looker_line
    model: hrm
    explore: headcount
    dimensions: [headcount.Department_name, headcount.INVOL_TERM, headcount.TERMINATION]
    measures: [headcount.Total_Emp, headcount.InTERMINATION_VOL]
    sorts: [headcount.Department_name]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: percent
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_types: {}
