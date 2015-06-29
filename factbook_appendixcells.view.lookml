- view: factbook_appendixcells
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: center
    type: yesno
    sql: ${TABLE}.center

  - dimension: column
    type: int
    sql: ${TABLE}.`column`

  - dimension: country
    sql: ${TABLE}.country

  - dimension: row
    type: int
    sql: ${TABLE}.row

  - dimension: tableid
    type: int
    sql: ${TABLE}.tableid

  - dimension: value
    sql: ${TABLE}.value

  - dimension: version
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [id]

