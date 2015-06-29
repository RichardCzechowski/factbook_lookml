- view: factbook_categories
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: description
    sql: ${TABLE}.description

  - dimension: name
    sql: ${TABLE}.name

  - dimension: version
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [id, name]

