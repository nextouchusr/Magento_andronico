#!/usr/bin/env bash

tput setaf 4; echo "###Task: Apply Configuration"; tput sgr0

# Export the vars in .env into your shell:
export $(egrep -v '^#' .env | xargs)

php bin/magento config:set general/region/state_required AL,AR,AU,BO,BR,BG,CA,CL,CN,CO,HR,DK,EC,EE,GR,GY,IS,IN,IT,LV,LT,MX,PY,PE,PL,PT,RO,ES,SR,SE,CH,US,UY,VE
php bin/magento config:set general/country/default IT
php bin/magento config:set general/country/allow IT
php bin/magento config:set general/country/destinations
php bin/magento config:set general/locale/timezone Europe/Rome
php bin/magento config:set general/locale/code en_GB
php bin/magento config:set general/locale/weight_unit kgs
php bin/magento config:set general/locale/firstday 1
php bin/magento config:set general/store_information/name Nextouch
php bin/magento config:set general/store_information/phone +39 348 6037050
php bin/magento config:set general/store_information/hours
php bin/magento config:set general/store_information/country_id IT
php bin/magento config:set general/store_information/region_id 861
php bin/magento config:set general/store_information/postcode 20124
php bin/magento config:set general/store_information/city Milano
php bin/magento config:set general/store_information/street_line1 Via Fabio Filzi 27
php bin/magento config:set general/store_information/street_line2
php bin/magento config:set general/store_information/merchant_vat_number
php bin/magento config:set web/url/use_store 1
php bin/magento config:set web/seo/use_rewrites 1
php bin/magento config:set web/corsRequests/origin_url *
php bin/magento config:set web/corsRequests/allow_credentials 0
php bin/magento config:set web/corsRequests/enable_amp 0
php bin/magento config:set web/corsRequests/max_age
php bin/magento config:set web/secure/use_in_adminhtml 1
php bin/magento config:set currency/options/base EUR
php bin/magento config:set currency/options/default EUR
php bin/magento config:set currency/options/allow EUR
php bin/magento config:set catalog/review/allow_guest 0
php bin/magento config:set catalog/product_video/youtube_api_key AIzaSyDg4fWjCwpEF7O6R1Pu0MhNqOeJqyhOyyQ
php bin/magento config:set catalog/search/engine amasty_elastic
php bin/magento config:set catalog/custom_options/use_calendar 0
php bin/magento config:set catalog/custom_options/date_fields_order d,m,y
php bin/magento config:set catalog/custom_options/time_format 24h
php bin/magento config:set sendfriend/email/enabled 1
php bin/magento config:set login_as_customer/general/enabled 0
php bin/magento config:set customer/magento_customerbalance/is_enabled 0
php bin/magento config:set customer/magento_customerbalance/show_history 0
php bin/magento config:set customer/magento_customerbalance/refund_automatically 0
php bin/magento config:set customer/magento_customersegment/is_enabled 1
php bin/magento config:set magento_invitation/general/enabled 0
php bin/magento config:set magento_invitation/general/enabled_on_front 0
php bin/magento config:set magento_reward/general/is_enabled 0
php bin/magento config:set magento_reward/general/is_enabled_on_front 0
php bin/magento config:set magento_giftregistry/general/enabled 0
php bin/magento config:set sales/magento_rma/enabled 1
php bin/magento config:set sales/magento_rma/enabled_on_product 1
php bin/magento config:set sales/magento_rma/use_store_address 1
php bin/magento config:set sales/magento_rma/policy_return_period 14
php bin/magento config:set tax/classes/wrapping_tax_class 0
php bin/magento config:set tax/classes/default_product_tax_class 105
php bin/magento config:set tax/calculation/price_includes_tax 1
php bin/magento config:set tax/calculation/shipping_includes_tax 1
php bin/magento config:set tax/calculation/cross_border_trade_enabled 1
php bin/magento config:set tax/defaults/country IT
php bin/magento config:set tax/defaults/postcode
php bin/magento config:set tax/display/type 2
php bin/magento config:set tax/display/shipping 2
php bin/magento config:set tax/cart_display/price 2
php bin/magento config:set tax/cart_display/subtotal 2
php bin/magento config:set checkout/options/enable_address_search 0
php bin/magento config:set checkout/options/enable_agreements 1
php bin/magento config:set checkout/sidebar/display 1
php bin/magento config:set checkout/sidebar/count 5
php bin/magento config:set checkout/sidebar/max_items_display_count 10
php bin/magento config:set multishipping/options/checkout_multiple 0
php bin/magento config:set carriers/flatrate/active 0
php bin/magento config:set carriers/dhl/active 1
php bin/magento config:set carriers/dhl/active_rma 0
php bin/magento config:set carriers/fast_est/active 1
php bin/magento config:set carriers/fast_est/wsdl https://dev.transitpoint.us/services/wsd/wsd-dev.wsdl
php bin/magento config:set carriers/fast_est/username nextouch.wsd
php bin/magento config:set carriers/fast_est/password y7U38k77PG3Vqjq!!
php bin/magento config:set carriers/fast_est/tracking_base_url https://transitpoint.us/tracking
php bin/magento config:set carriers/fast_est/chain_id 133
php bin/magento config:set carriers/instore/active 1
php bin/magento config:set carriers/gls/active 1
php bin/magento config:set payment/paypal_express/active 1
php bin/magento config:set payment/paypal_express/in_context 1
php bin/magento config:set payment/paypal_express/payment_action Sale
php bin/magento config:set payment/paypal_express/visible_on_product 1
php bin/magento config:set payment/paypal_express/visible_on_cart 1
php bin/magento config:set payment/paypal_express/allowspecific 1
php bin/magento config:set payment/paypal_express/verify_peer 1
php bin/magento config:set payment/paypal_express/merchant_id PKW86SSMLHC5Q
php bin/magento config:set payment/paypal_express/specificcountry IT
php bin/magento config:set payment/axepta_paymentservice/active 1
php bin/magento config:set payment/axepta_paymentservice/payment_method axepta
php bin/magento config:set payment/axepta_paymentservice/access_token_axepta eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJxRlItM0w0SGo2RzNWbmNEYmo0alp6YmNhV2lMNmRtNmlYYUNtck9IQ2RRIn0.eyJleHAiOjE5NjUxMjAzODEsImlhdCI6MTY0OTc2MDQ1MywiYXV0aF90aW1lIjoxNjQ5NzYwNDUzLCJqdGkiOiI1ZTY3MzI5YS1lMWU4LTQzMzUtODQxZS00YzBiYjdkYzJmMWEiLCJpc3MiOiJodHRwczovL3Nzby5heGVwdGEuaXQvYXV0aC9yZWFsbXMvTWVyY2hhbnQiLCJhdWQiOlsicGctcGF5bWVudC1hcGktaW5ldCIsInBnLXBheW1lbnQtYXBpLWluZXQtc2FuZGJveCIsImFjY291bnQiXSwic3ViIjoiZjg2YWMxMGItMTUwNi00MjNkLTk3NmQtZWM0ZDU5MGVjNWJlIiwidHlwIjoiQmVhcmVyIiwiYXpwIjoicGctcGF5bWVudC1hcGktaW5ldCIsInNlc3Npb25fc3RhdGUiOiIyNjMxYzdiZi0xNTFjLTRmMDMtYWM3ZS03MGI5ZjM4OWRiMjIiLCJhY3IiOiIxIiwiYWxsb3dlZC1vcmlnaW5zIjpbImh0dHBzOi8vcGF5LmF4ZXB0YS5pdCJdLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsib2ZmbGluZV9hY2Nlc3MiLCJ1bWFfYXV0aG9yaXphdGlvbiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7InBnLXBheW1lbnQtYXBpLWluZXQtc2FuZGJveCI6eyJyb2xlcyI6WyJ1c2VyIl19LCJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX19LCJzY29wZSI6Im9wZW5pZCBlbWFpbCBvZmZsaW5lX2FjY2VzcyBwcm9maWxlIiwiZW1haWxfdmVyaWZpZWQiOmZhbHNlLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJ0b29sc0BhY2FkZXZteS5pdCIsImVtYWlsIjoidG9vbHNAYWNhZGV2bXkuaXQifQ.N8Vai7WYJFfwzNCJhE1dj57KjKj-gyk90-1dUew99rgwzzffBPX7Aq7KEIBdv5Fj3O4Nj92GwVC80_W3LeiyRXpLhuW_pfhreo4PhIYdS8VDwpWc0HALvB5e5itBiXYzFKsjPT73bpz70vBVQDuFyC1p0iTPSFY18nxW0iGaO8fEzaUcbdHwiHkTQxDdITITQXTRaFJBjeoDSULzANd5ZREVU4vJVo7tuhzl-1AEDDf5s8mC7iT-Ce6eOPNpGz3XSSxuhSAiEZml8pglkwPFMo3U20fspbGeH4GwPBnpx7S4gaAbYlJCUYj3SkVTbkq3-9KhgSxFV8y--UiT6pozgw
php bin/magento config:set payment/axepta_paymentservice/server_license_key_axepta MA60A11-6Z7MYQR-QRV97D6-Q2DSNN1
php bin/magento config:set payment/axepta_paymentservice/page_license_key_axepta HHKTK9G-KMKM7J1-PBVM7QN-1FC0NP7
php bin/magento config:set payment/axepta_paymentservice/js_license_key_axepta NCDHM42-N2TMTBB-PB607XW-6XMM5H0
php bin/magento config:set payment/axepta_paymentservice/checkout_type 3
php bin/magento config:set payment/axepta_paymentservice/payment_action authorize_capture
php bin/magento config:set payment/axepta_paymentservice/testmode 0
php bin/magento config:set payment/axepta_paymentservice/enable_log 0
php bin/magento config:set payment/checkmo/active 0
php bin/magento config:set payment/banktransfer/active 1
php bin/magento config:set payment/banktransfer/allowspecific 1
php bin/magento config:set payment/banktransfer/specificcountry IT
php bin/magento config:set payment/findomestic_paymentservice/active 1
php bin/magento config:set payment/findomestic_paymentservice/base_url https://apitest.ecredit.it/
php bin/magento config:set payment/findomestic_paymentservice/partner_id nextouch
php bin/magento config:set payment/findomestic_paymentservice/vendor_id 4351862
php bin/magento config:set payment/findomestic_paymentservice/allowspecific 1
php bin/magento config:set payment/findomestic_paymentservice/specificcountry IT
php bin/magento config:set paypal/general/merchant_country IT
php bin/magento config:set paypal/wpp/sandbox_flag 0
php bin/magento config:set wins/general/base_url https://apitestnextouch.winstech.it/api
php bin/magento config:set wins/authentication/username jwtuser
php bin/magento config:set wins/authentication/password jwtpassword
php bin/magento config:set wins/magento/username ECO
php bin/magento config:set wins/magento/password Ecommerce
php bin/magento config:set sidea/authentication/base_url https://mc1w40htwm20y0fx4946ttqj697q.auth.marketingcloudapis.com
php bin/magento config:set sidea/authentication/grant_type client_credentials
php bin/magento config:set sidea/authentication/client_id 599up72xnpbsqfbxzzelw6zk
php bin/magento config:set sidea/authentication/client_secret goOWjdQ1aQVNtHhBJVreV6dd
php bin/magento config:set sidea/authentication/account_id 536001203
php bin/magento config:set sidea/events/base_url https://mc1w40htwm20y0fx4946ttqj697q.rest.marketingcloudapis.com
php bin/magento config:set sidea/events/abandoned_cart_event_key APIEvent-a1b5df19-b879-f68c-c34a-c62a17db30e3
php bin/magento config:set import_export/wins/host 172.50.0.13
php bin/magento config:set import_export/wins/username nextouch
php bin/magento config:set import_export/wins/password nextouch2021
php bin/magento config:set import_export/wins/location /
php bin/magento config:set import_export/wins/passive_mode 0
php bin/magento config:set admin/security/admin_account_sharing 1
php bin/magento config:set admin/usage/enabled 1
php bin/magento config:set system/full_page_cache/varnish/access_list 172.50.0.10,nextouch.it,localhost
php bin/magento config:set system/full_page_cache/varnish/backend_host 127.0.0.1
php bin/magento config:set system/full_page_cache/varnish/backend_port 8001
php bin/magento config:set system/full_page_cache/varnish/grace_period 300
php bin/magento config:set system/full_page_cache/caching_application 2
php bin/magento config:set system/security/max_session_size_admin 0
php bin/magento config:set dev/css/merge_css_files 1
php bin/magento config:set dev/css/minify_files 1
php bin/magento config:set dev/static/sign 0
php bin/magento config:set amasty_xsearch/general/popup_width 800
php bin/magento config:set amasty_xsearch/product/enabled 1
php bin/magento config:set amasty_xsearch/product/reviews 1
php bin/magento config:set amasty_xsearch/product/add_to_cart 1
php bin/magento config:set amasty_xsearch/product/redirect_single_product 1
php bin/magento config:set amasty_xsearch/product/out_of_stock_last 0
php bin/magento config:set amasty_xsearch/popular_searches/enabled 1
php bin/magento config:set amasty_xsearch/browsing_history/enabled 1
php bin/magento config:set amasty_xsearch/recent_searches/enabled 1
php bin/magento config:set amasty_xsearch/brand/enabled 1
php bin/magento config:set amasty_xsearch/category/enabled 1
php bin/magento config:set amasty_xsearch/page/enabled 1
php bin/magento config:set amasty_xsearch/recently_viewed/enabled 0
php bin/magento config:set amasty_xsearch/layout/enabled 0
php bin/magento config:set amasty_advancedreview/general/helpful 1
php bin/magento config:set amasty_advancedreview/general/recommend 0
php bin/magento config:set amasty_advancedreview/general/pros_cons 0
php bin/magento config:set amasty_advancedreview/general/admin_answer 1
php bin/magento config:set amasty_advancedreview/general/admin_answer_account_only 0
php bin/magento config:set amasty_advancedreview/general/allow_guest 0
php bin/magento config:set amasty_advancedreview/general/page_limit 5
php bin/magento config:set amasty_advancedreview/images/allow_upload 0
php bin/magento config:set amasty_advancedreview/comments/enabled 0
php bin/magento config:set amdeliverydate/general/enabled 1
php bin/magento config:set amdeliverydate/general/disabled_days 0
php bin/magento config:set amdeliverydate/general/min_days 0
php bin/magento config:set amdeliverydate/general/enabled_same_day 0
php bin/magento config:set amdeliverydate/general/enabled_next_day 0
php bin/magento config:set amdeliverydate/date_field/format yyyy-MM-dd
php bin/magento config:set amdeliverydate/date_field/required 1
php bin/magento config:set amdeliverydate/date_field/enabled_carriers 1
php bin/magento config:set amdeliverydate/date_field/carriers fast_est_fast_est
php bin/magento config:set amdeliverydate/editable/is_editable 0
php bin/magento config:set amdeliverydate/time_field/enabled_time 1
php bin/magento config:set amdeliverydate/time_field/required 1
php bin/magento config:set amdeliverydate/time_field/enabled_carriers 1
php bin/magento config:set amdeliverydate/time_field/carriers fast_est_fast_est
php bin/magento config:set amdeliverydate/comment_field/enabled_comment 1
php bin/magento config:set amdeliverydate/comment_field/required 0
php bin/magento config:set amdeliverydate/comment_field/enabled_carriers 1
php bin/magento config:set amdeliverydate/comment_field/carriers fast_est_fast_est
php bin/magento config:set amasty_elastic/connection/engine amasty_elastic
php bin/magento config:set amasty_elastic/connection/server_hostname https://vpc-staging-nextouch-es-3chledv23vu7ln4lemaoyt4qzu.eu-west-1.es.amazonaws.com
php bin/magento config:set amasty_elastic/connection/server_port 443
php bin/magento config:set amasty_elastic/connection/index_prefix nextouch
php bin/magento config:set amasty_elastic/connection/enable_auth 0
php bin/magento config:set amasty_elastic/connection/server_timeout 15
php bin/magento config:set amasty_elastic/connection/custom_analyzer disabled
php bin/magento config:set amshopby/general/ajax_enabled 0
php bin/magento config:set amshopby/children_categories/display_mode 0
php bin/magento config:set amshopby/category_filter/enabled 1
php bin/magento config:set amshopby/category_filter/category_tree_depth 1
php bin/magento config:set amshopby/category_filter/subcategories_view 1
php bin/magento config:set amshopby/category_filter/subcategories_expand 1
php bin/magento config:set amshopby/category_filter/render_all_categories_tree 1
php bin/magento config:set amshopby/stock_filter/enabled 0
php bin/magento config:set amshopby/rating_filter/enabled 0
php bin/magento config:set amshopby/am_is_new_filter/enabled 0
php bin/magento config:set amshopby/am_on_sale_filter/enabled 1
php bin/magento config:set amshopby/am_on_sale_filter/label On Sale
php bin/magento config:set amshopby/tooltips/enabled 1
php bin/magento config:set amshopby_brand/general/topmenu_enabled 0
php bin/magento config:set amshopby_brand/general/top_links 0
php bin/magento config:set amshopby_brand/more_from_brand/enable 0
php bin/magento config:set amshopby_brand/product_page/display_brand_image 0
php bin/magento config:set amshopby_brand/product_listing_settings/show_on_listing 0
php bin/magento config:set ammegamenu/general/enabled 1
php bin/magento config:set ammegamenu/general/sticky 3
php bin/magento config:set ammegamenu/general/hamburger_enabled 0
php bin/magento config:set ammegamenu/general/mobile_template drill
php bin/magento config:set ammegamenu/general/show_icons desktop
php bin/magento config:set ammegamenu/color/color_template custom
php bin/magento config:set ammegamenu/color/main_menu_background
php bin/magento config:set ammegamenu/color/main_menu_text_hover #0B4966
php bin/magento config:set ammegamenu/color/main_menu_text #363636
php bin/magento config:set ammegamenu/color/submenu_background_color
php bin/magento config:set ammegamenu/color/submenu_text #36363
php bin/magento config:set ammegamenu/color/submenu_text_hover #0B4966
php bin/magento config:set ammegamenu/color/toggle_icon_color #757575
php bin/magento config:set ammegamenu/color/submenu_background_image
php bin/magento config:set ammegamenu/color/main_menu_background_hover #FFFFFF
php bin/magento config:set ammegamenu/color/current_category_color #376EFB
