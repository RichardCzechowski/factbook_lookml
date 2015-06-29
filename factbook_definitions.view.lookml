- view: factbook_definitions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: content
    sql: ${TABLE}.content

  - dimension: name
    sql: ${TABLE}.name

  - dimension: version
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [id, name]

