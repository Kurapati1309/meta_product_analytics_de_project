
    
    

select
    content_id as unique_field,
    count(*) as n_records

from "warehouse"."main"."stg_content"
where content_id is not null
group by content_id
having count(*) > 1


