{{config(
    materialized='table'
)}}
      select
        book_date,
        total_amount,
        book_ref


      from {{ source('demo_src', 'bookings') }}

    