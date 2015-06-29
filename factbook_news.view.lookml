- view: factbook_news
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: date
    sql: ${TABLE}.date

  - dimension: text
    sql: ${TABLE}.text

  - dimension: version
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [id]

