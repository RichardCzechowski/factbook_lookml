- view: factbook_countryaliases
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: alias
    sql: ${TABLE}.alias

  - dimension: countryid
    type: int
    sql: ${TABLE}.countryid

  - dimension: version
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [id]

