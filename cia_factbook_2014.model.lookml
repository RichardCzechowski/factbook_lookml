- connection: cia_factbook

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: factbook_appendices

- explore: factbook_appendixcells

- explore: factbook_appendixtables

- explore: factbook_categories

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
        
- explore: factbook_countryaliases

- explore: factbook_definitions

- explore: factbook_faq

- explore: factbook_fields
  joins:
      - join: factbook_values
        type: left_outer
        relationship: many_to_one
        sql_on: ${factbook_values.fieldid} = ${factbook_fields.id}

- explore: factbook_news

- explore: factbook_ranks

- explore: factbook_regions

- explore: factbook_values
  joins:
    - join: factbook_countries
      type: left_outer
      relationship: many_to_one
      sql_on: ${factbook_countries.id} = ${factbook_values.countryid}

- explore: factbook_versions

