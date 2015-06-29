- view: factbook_appendixtables
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: appendixid
    type: int
    sql: ${TABLE}.appendixid

  - dimension: columns
    type: int
    sql: ${TABLE}.columns

  - dimension: lettergrouped
    type: yesno
    sql: ${TABLE}.lettergrouped

  - dimension: title
    sql: ${TABLE}.title

  - dimension: version
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [id]

