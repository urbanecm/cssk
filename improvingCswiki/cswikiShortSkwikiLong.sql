select CONCAT("* [[:d:Q", ips_item_id, ']]'), CONCAT( " - ", ips_site_page) from wb_items_per_site where ips_site_id="cswiki" and ips_site_page in (select page_title from cswiki_p.page where page_len<=3000 and page_namespace=0 and page_is_redirect=0) and ips_item_id in (select ips_item_id from wb_items_per_site where ips_site_id="skwiki" and ips_site_page in (select page_title from skwiki_p.page where page_len>=15000 and page_namespace=0 and page_is_redirect=0));

