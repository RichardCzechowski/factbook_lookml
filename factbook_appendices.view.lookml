- view: factbook_appendices
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: letter
    sql: ${TABLE}.letter

  - dimension: name
    sql: ${TABLE}.name

  - dimension: version
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [id, name]

