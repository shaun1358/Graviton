// Once duplication is finished, clean up and destroy the item
if obtained
&& ds_exists(ball_list, ds_type_list)
&& duplication_done >= duplication_count
{
    ds_list_destroy(ball_list);
    ball_list = undefined; // Prevent accidental reuse

    instance_destroy();
}
