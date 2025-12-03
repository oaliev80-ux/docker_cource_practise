{{
  config(
    materialized = 'table',
    )
}}
select 
        book_date,
        total_amount,
        book_ref
from {{ ref('bash_demo_src_booking') }}