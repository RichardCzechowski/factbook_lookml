- view: factbook_ranks
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: country
    sql: ${TABLE}.country

  - dimension: dateearliest
    sql: ${TABLE}.dateearliest

  - dimension: dateestimated
    type: yesno
    sql: ${TABLE}.dateestimated

  - dimension: datelatest
    sql: ${TABLE}.datelatest

  - dimension: datetext
    sql: ${TABLE}.datetext

  - dimension: fieldid
    type: int
    sql: ${TABLE}.fieldid

  - dimension: number
    sql: ${TABLE}.number

  - dimension: version
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [id]

