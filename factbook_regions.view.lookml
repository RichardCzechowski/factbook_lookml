- view: factbook_regions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: longid
    sql: ${TABLE}.longid

  - dimension: name
    sql: ${TABLE}.name

  - dimension: shortid
    sql: ${TABLE}.shortid

  - dimension: version
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [id, name]

