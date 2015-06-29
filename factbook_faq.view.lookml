- view: factbook_faq
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: answer
    sql: ${TABLE}.answer

  - dimension: category
    sql: ${TABLE}.category

  - dimension: question
    sql: ${TABLE}.question

  - dimension: version
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [id]

