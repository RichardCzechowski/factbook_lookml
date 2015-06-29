- view: factbook_fields
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: categoryid
    type: int
    sql: ${TABLE}.categoryid

  - dimension: description
    sql: ${TABLE}.description

  - dimension: dollars
    type: yesno
    sql: ${TABLE}.dollars

  - dimension: name
    sql: ${TABLE}.name

  - dimension: rankorder
    type: int
    sql: ${TABLE}.rankorder

  - dimension: unit
    sql: ${TABLE}.unit

  - dimension: version
    sql: ${TABLE}.version

  - dimension: xmlid
    sql: ${TABLE}.xmlid

  - measure: count
    type: count
    drill_fields: [id, name]

