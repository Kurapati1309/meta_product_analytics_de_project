
  
    
    

    create  table
      "warehouse"."main"."dim_users__dbt_tmp"
  
    as (
      with u as (select * from "warehouse"."main"."stg_users")
select * from u
    );
  
  