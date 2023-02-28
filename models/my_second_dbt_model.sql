
-- Use the `ref` function to select from other models

with 

model_one as (
    select * from {{ ref('my_first_dbt_model') }}
)
select 
    *,
    {{ squared('id') }},
    {{ var('a_date') }} as last_ran

from model_one
where id = 1
