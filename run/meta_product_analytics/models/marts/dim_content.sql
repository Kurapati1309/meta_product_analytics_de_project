
  
    
    

    create  table
      "warehouse"."main"."dim_content__dbt_tmp"
  
    as (
      with c as (select * from "warehouse"."main"."stg_content")
select * from c
    );
  
  