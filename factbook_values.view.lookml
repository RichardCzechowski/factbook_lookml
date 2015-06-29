- view: factbook_values
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: countryid
    type: int
    sql: ${TABLE}.countryid

  - dimension: fieldid
    type: int
    sql: ${TABLE}.fieldid

  - dimension: value
    sql: ${TABLE}.value

  - dimension: version
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [id]

