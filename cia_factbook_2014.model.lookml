- connection: cia_factbook

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: factbook_appendices

- explore: factbook_appendixcells
  joins:
      - join: factbook_appendixtables
        type: left_outer
        relationship: many_to_one
        sql_on: ${factbook_appendixcells.tableid} = ${factbook_appendixtables.id}

- explore: factbook_appendixtables
  joins:
      - join: factbook_appendixcells
        type: left_outer
        relationship: many_to_one
        sql_on: ${factbook_appendixcells.id} = ${factbook_appendixtables.appendixid}

- explore: factbook_categories
  joins:
    - join: factbook_fields
      type: left_outer
      relationship: many_to_one
      sql_on: ${factbook_fields.categoryid} = ${factbook_categories.id}

- explore: factbook_countries
  joins:
      - join: factbook_values
        type: left_outer
        relationship: many_to_one
        sql_on: ${factbook_countries.id} = ${factbook_values.countryid}
      - join: factbook_regions
        type: left_outer
        relationship: many_to_one
        sql_on: ${factbook_countries.regionid} = ${factbook_regions.id}
      - join: factbook_fields
        type: left_outer
        relationship: many_to_one
        sql_on: ${factbook_values.fieldid} = ${factbook_fields.id}
      - join: factbook_countryaliases
        type: left_outer
        relationship: many_to_one
        sql_on: ${factbook_countries.id} = ${factbook_countryaliases.countryid}
        
- explore: factbook_countryaliases
  joins:
      - join: factbook_countries
        type: left_outer
        relationship: many_to_one
        sql_on: ${factbook_countries.id} = ${factbook_countryaliases.countryid}

- explore: factbook_definitions

- explore: factbook_faq

- explore: factbook_fields
  joins:
      - join: factbook_values
        type: left_outer
        relationship: many_to_one
        sql_on: ${factbook_values.fieldid} = ${factbook_fields.id}
      - join: factbook_categories
        type: left_outer
        relationship: many_to_one
        sql_on: ${factbook_fields.categoryid} = ${factbook_categories.id}
      - join: factbook_ranks
        type: left_outer
        relationship: many_to_one
        sql_on: ${factbook_fields.id} = ${factbook_ranks.fieldid}
      - join: factbook_countries
        type: left_outer
        relationship: many_to_one
        sql_on: ${factbook_values.fieldid} = ${factbook_fields.id}

- explore: factbook_news

- explore: factbook_ranks
  joins:
    - join: factbook_fields
      type: left_outer
      relationship: many_to_one
      sql_on: ${factbook_fields.id} = ${factbook_ranks.fieldid}

- explore: factbook_regions
  joins:
    - join: factbook_countries
      type: left_outer
      relationship: many_to_one
      sql_on: ${factbook_countries.regionid} = ${factbook_regions.id}

- explore: factbook_values
  joins:
    - join: factbook_countries
      type: left_outer
      relationship: many_to_one
      sql_on: ${factbook_countries.id} = ${factbook_values.countryid}
    - join: factbook_fields
      type: left_outer
      relationship: many_to_one
      sql_on: ${factbook_values.fieldid} = ${factbook_fields.id}


- explore: factbook_versions

