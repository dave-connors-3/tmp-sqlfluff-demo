-- depends_on: {{ ref('sapling') }}

select * from {{ source('dummy_source', 'sapling') }}