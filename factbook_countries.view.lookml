- view: factbook_countries
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: affiliation
    sql: ${TABLE}.affiliation

  - dimension: flag
    type: yesno
    sql: ${TABLE}.flag

  - dimension: lastupdate
    sql: ${TABLE}.lastupdate

  - dimension: locator
    type: yesno
    sql: ${TABLE}.locator

  - dimension: name
    sql: ${TABLE}.name

  - dimension: photocount
    type: int
    sql: ${TABLE}.photocount

  - dimension: regionid
    type: int
    sql: ${TABLE}.regionid

  - dimension: version
    sql: ${TABLE}.version

  - dimension: xmlid
    sql: ${TABLE}.xmlid

  - measure: count
    type: count
    drill_fields: [id, name]

