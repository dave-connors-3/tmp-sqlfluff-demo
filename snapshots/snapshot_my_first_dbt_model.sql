{% snapshot snapshot_my_first_dbt_model %}

{{
   config(
       target_database=target.database,
       target_schema='snapshots',
       unique_key='id',
       strategy='check',
       check_cols='all',
   )
}}

select * from {{ ref('my_first_dbt_model') }}


{% endsnapshot %}