prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.0'
,p_default_workspace_id=>6848088103100319333
,p_default_application_id=>200746
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TALLERFBD2'
);
end;
/
 
prompt APPLICATION 200746 - Wheels Alpes
--
-- Application Export:
--   Application:     200746
--   Name:            Wheels Alpes
--   Date and Time:   03:37 Monday October 26, 2026
--   Exported By:     VOTALORA
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     16
--       Items:                   62
--       Processes:               23
--       Regions:                 27
--       Buttons:                 35
--       Dynamic Actions:          2
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:             11
--       Security:
--         Authentication:         1
--         Authorization:          2
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   5
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.2.0
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_TALLERFBD2')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Wheels Alpes')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'WHEELS-ALPES')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'46D3B3E50110A76533D522017E757BF70D4BB5A7E8158CDAE074C6ED58331F22'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(6852385488347787201)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Wheels Alpes'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Wheels Alpes'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026033104Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_last_updated_by=>'VOTALORA'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461336122154
,p_version_scn=>'15849538015722'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(6852386343751787202)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2471166859590295591
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(6852387653918787208)
,p_nav_bar_list_template_id=>2850970698196720012
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852381012606787194)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852381367425787194)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852381696671787195)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852381927054787195)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852382207618787196)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852382513847787196)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852382822145787197)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852383154786787197)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852383417607787197)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852383741123787198)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852384064879787198)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG',
  'auto_ir_reset_button', 'Y')).to_clob
,p_version_scn=>'SH256:TC1mqO_n1hWvorH6XHVejgQzJq9VjDsWoq0rKaIQUNo'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852384345246787199)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852384619242787199)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(6852384922222787199)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6852387653918787208)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6852401832674787258)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6852402494826787259)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(6852401832674787258)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6852402923883787260)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(6852401832674787258)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(6852386343751787202)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:4ftlSCtMOTWuylMP9h9JPn1yGCXS27c5eieJYwNwQ-8'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031016Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7843899703214262309)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Actualizar estado del viaje'
,p_static_id=>'actualizar-estado-del-viaje'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
,p_created_on=>wwv_flow_imp.dz('20261026010105Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7872201688926654094)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Cancelar solicitud'
,p_static_id=>'cancelar-solicitud'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
,p_created_on=>wwv_flow_imp.dz('20261026031016Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031016Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7868749087019421737)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Consultar viajes disponibles'
,p_static_id=>'consultar-viajes-disponibles'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
,p_created_on=>wwv_flow_imp.dz('20261026023132Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023132Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7838391080318760135)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Gestionar solicitudes'
,p_static_id=>'gestionar-solicitudes'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004119Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7848875346677968468)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Historial de viajes'
,p_static_id=>'historial-de-viajes'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
,p_created_on=>wwv_flow_imp.dz('20261026011600Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011600Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6852399299705787253)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7867793245415334700)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Listado de pasajeros'
,p_static_id=>'listado-de-pasajeros'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
,p_created_on=>wwv_flow_imp.dz('20261026021702Z')
,p_updated_on=>wwv_flow_imp.dz('20261026021702Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7834012509400600453)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Publicar viaje'
,p_static_id=>'publicar-viaje'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
,p_created_on=>wwv_flow_imp.dz('20261026001439Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001439Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7818889330136108751)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Registrar conductor'
,p_static_id=>'registrar-conductor'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
,p_created_on=>wwv_flow_imp.dz('20261025225242Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225242Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7861210946773203949)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Registrar pasajero'
,p_static_id=>'registrar-pasajero'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
,p_created_on=>wwv_flow_imp.dz('20261026015514Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015514Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7826585823643333117)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Registrar veh\00EDculo')
,p_static_id=>unistr('registrar-veh\00EDculo')
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
,p_created_on=>wwv_flow_imp.dz('20261025233006Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233006Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7870597555505512045)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Solicitar cupo'
,p_static_id=>'solicitar-cupo'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
,p_created_on=>wwv_flow_imp.dz('20261026024635Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024635Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000B1D494441547801EC9DCF8F255515C7EB753B803A284EDB409444CC386298A00613428C30AD6EDCA8FF810B8D2B13635C9A68776BE2D285898909D144E3C62518';
wwv_flow_imp.g_varchar2_table(2) := '135D283D40088140F81126C030E147580C340304060618661EF77379A7A92EAAEAD5AB7BABEAD53D67F24EDF5BF7E7A9EFF9F4BDF7F5FB312B99FD33050214308002C4B3AE5966001905410A184041F2596703C8180852C0000A92CF3A1B40C6409002AD';
wwv_flow_imp.g_varchar2_table(3) := '010A9AD53A27A38001944C2887B911036818DD9399D5004A2694C3DC8801348CEEC9CC6A002513CA616EC4001A46F76466ED1FA039D2BDFEFB6F7D396FAF6C1FFBBE76CBEB3147BEDEAB070768776B63E3CCF6AD5BAFFCF6D89D2E9D9E3FBFF264DEA6D9';
wwv_flow_imp.g_varchar2_table(4) := 'F40EED96D7038D9C6D6168D73B3185090701881B1760562617EF743E6D4EA7D30D97DAA399029BAED926DA3990A6CE3C50AEACF747AF000938DCB8011335D61E2807928729EAC87306EB05207763FC864C0D9C39D18853BDE9F4EE0DA4CE017237B3E574';
wwv_flow_imp.g_varchar2_table(5) := 'E137C425F6E851014042FB4EA7EC0C20D9AE9CF7068F1361A0C726674D62D1D5FC9D0084C3F1B7ABAE24487B5CCE9AC482987471A7D101C2511CEEC2591BB3BD02C484D8B41FA1BC6774805657A6B665956B3D786917B1890A10076696CCC19532074A15';
wwv_flow_imp.g_varchar2_table(6) := '2036C4A8B4B265613480668ED9EAD332103D768BFAEC2C1A404E0083C789309247B458450168B6FA8C443B731305621DA8A300E41C8A46B41B2BF6C3C62B5120D6813A18205B7D4AA23382220ED43156A1608046A095B958A1408C55280640B67D550468';
wwv_flow_imp.g_varchar2_table(7) := 'D98B5985427D0C0228C612187A03D63F4C81D0180601E4FE3C6E6F020B8BDFE0BD43631804D0E0776F0E042B30994C8E850C120A50D2E79F1061C7D237F41CD41A203E29301691CCCF7A054262D91AA07A97AC568B020690964877749FAD017AEFFCEA75';
wwv_flow_imp.g_varchar2_table(8) := '1DF964C38E4881D6008DE81ECDD5390A842C0606D01C71ADBA5E0103A85E9F76B58A7A194035C13EFDC6BB1956D3447D9501548100E0BCE800C2C85734535F6C00952000308073C5FA5519469EB292A6EA8B0CA002028002308073E4A68D0CBBC2814419';
wwv_flow_imp.g_varchar2_table(9) := '7585E6EA2F0DA01C0200022800033852459E32EA6823E596DAFFD6B3C7006000080500439AB7CF1F39EA2F69435B7F613FECBF7B820180000CF247BFF91D928FD8273EB39E491D6DCFBE7B218BFF6F7C23DA16E66206102EC9BEF0951B3240215F66D409';
wwv_flow_imp.g_varchar2_table(10) := '44A75E3E57D6445D997A80587D883AF05C79F87AB2B50644B4A591F425AFD554030400B2FA34814720A1AD1CAAB56F65AA0192E0CB8A22803449E5500D844DDAA7DA462D4004FECD772EF8730F2BCAA20196AD8C31186BD1FEA9B4570B906C5D070FAD67';
wwv_flow_imp.g_varchar2_table(11) := '6FBDBADBCAE8AB7D2B5309507EC578FCDEFF6721F6DAEE8B7E31C98FE90BFAFD31D86C2A0192D5E7E80F7F9AC5B0ABAFFF46C6562667AAC1A239C0C4EA0092950270D6BFFBA32C865DFBBD1F0F10BAE598521D40B24A004EAC105C76ED57FD5002A7BF50';
wwv_flow_imp.g_varchar2_table(12) := 'F2431540C0C356C3EA133BBE5AB7315D00B9A7ED4DC179FBD947B327FEFC0B6FBBFFFBFBDC6EB28D695B8554012487E7BAED4BC0B9EF0F3FCB4E9F78D0DBE3B7DF96EDFCFC968CBA2A922E9B6D6355F5A996AB0148568679DBD7B3FFF9AB87E6F04D1BD9';
wwv_flow_imp.g_varchar2_table(13) := 'CD3FF9B537F200401D69958D711BABBA97A6E56A006A22082B0CAB0EC0ACDF70CB5E17F26BD77CD183459BBD8A4246B6B1B30B6C9585214677A90EA0CB0F7FBD32486F9C7AB8B2EE9A1B6FF575756D7C03F783C3BA4B543CD4002441AD3BABD4C175F6F4';
wwv_flow_imp.g_varchar2_table(14) := '737381A81B7B6EE791365003104FDF9BC6E8D4FD3BFB9A9EDB7D3E93B2BA03F8BE4E4A2ED400443C39E49256192B881CB2EFFBCBEFB293FFFD87B747EEF89BEF2275FEA2E207732C026BC530A32956055093A8B0C20828675E7826C3E877F32FFFE45FF6';
wwv_flow_imp.g_varchar2_table(15) := '206FF6A1022A0092F3CFDA911B3FBCF39A1C106DFCF1EE0C031C5256A79A2E7B553287CCB957915A66763F3A000A785ADD149C999EEA1215001DBC74B5F7C06AF95B900A807AA7C74D3804B46EDADE1FAA003A73F2A1DE054E7D425500F5114C6D90AA00';
wwv_flow_imp.g_varchar2_table(16) := '485E48ED03209963883965EE3ED3E4017AFACC39FF7E6544E58552D2A6C60BA74DDE0B941F4FE6E08F89CC9DAF4B31BF38402352810012483E7A83E13A50903631DE13C47B819AB4CDB7E1838ACCC7DCF890AF4B2D9F2C40048E001248BEAE453E49DA65';
wwv_flow_imp.g_varchar2_table(17) := '00F3AB157332373EE04B97F30E39769200113002470009645EE0796F0ACBB76D9B974FBA32373EE00B3EB51D6F99FB25071087570246E008A088CF47912993338A94C74CCBB63B7C605E7CC2B798F32DC3584901C4EB4FF2BE67025725F022E7A0AA318A';
wwv_flow_imp.g_varchar2_table(18) := 'E5B27D71FE29D6E10B10E11B3E16EBC77C9D1440F21B5E16448224E7A02EB7313E2FCF5C4593B9C5C762FD58AF9302886D82DF7439831483C236562C8B752DDB57D51C94E31B3EC69A7319C6E911A06E6F57B6864FAF5D593B11AB13E7A098DB58DDF695';
wwv_flow_imp.g_varchar2_table(19) := '77467C135FF37563CDA70350C3B76CC8EA14731B93D547C6AE8241B6B7945EA94F0620099A0449AECBD298AB50D3D5A7CC8F14CA9203A8495064A588B10A355D7D9AF835C6362A012250315621EDAB0F3AAA054856215EEF6A7BA0D6BEFAA806889BE769';
wwv_flow_imp.g_varchar2_table(20) := '35699BAD8C6FEEA0AF8C415EA38D6105EA242E27EFDFC9F6BEDFF0C483996C474D26A32D7F0AA02D633016798DA60E20BE91958013F84F5EBA9A7DED73077DDCD98E9A6C65C0435B3AD1F7AACB2FF12032266353AEC954014480F94656E021F05F5AFBB8';
wwv_flow_imp.g_varchar2_table(21) := '8FF5E1CF7E90721EF205153F004CE0A13FCDAE760091674CC6660ECAB5981A805E3A75C27F9D2F8125E0049E3C76F092D58C32F27C9114AB0CC635469E338F0046DB7C7FF294D11688988BBC06530110017DEE89C77C3C596D08B8BFC8FDA06C0F82DB6F';
wwv_flow_imp.g_varchar2_table(22) := 'CB64A5A1097939F3D086B694E78D32EA28632EE6249FBA250F108124A0041278586DC897191070AEA11D266DC863D4D146CA8B2975B4A39C39999B7CCA962C409C4538D81248392CD7C1930F32ED3029238FC9755D4A3B40634EE6C68794414A0E20CE20';
wwv_flow_imp.g_varchar2_table(23) := '0FFCFB9FFEBCC3C19640CA61B92EF0B1EB98932D0D1F00497C8A3DCFD0E32503101F250696BCB19D10C8B6220300D6B63F5B1AFDB1BC5FF8DA76CC65EB970E40EE9914B0E48DED24447000C0628C11D3AF107F62F74D06A0D8C2D878CD1430809AE964AD';
wwv_flow_imp.g_varchar2_table(24) := '2A14680DD0C70E5C78B2624C2B56A4406B80146994FCAD862C060650191E56D6580103A8B154D6B04C81D6007DEA57F73C5536A0958D4F819058B60608992693C9FEAF74A7D06C6C0A6C87381C04D0743A3D1E32B9F51DBF0241005D9CAED80A34720642';
wwv_flow_imp.g_varchar2_table(25) := '63B81272FFEB5B3B3B21FDADEFF00A84C63008206EDFCE41A82036BA34E8FCC3DD060374E1E224D8091C311BA702C100B1044EECD9D828A3BFB679D756A8E3C100E180AD42A8303A8BB273440188556874F2297738C6EA83845100622067518876E3D8A3';
wwv_flow_imp.g_varchar2_table(26) := '7B05A2C52A1A4033A2A339D6BD866A67D89EC52A8A00D100C21B1CB303354A2C6CBD742036C428E6645101C2313B50A3C2725A17B1890E10076AF7E7F16F2FA7847ABD2226C426B602D101C2411CC561964CAECD86538018100B62D285179D0084A3387C';
wwv_flow_imp.g_varchar2_table(27) := 'E837C75989EC608D20C3D8363120165D4DDF1940E2F0ECD066108920FDA5519F6D55B9DD39404C0C44CE262E6F203911BA7AC87685D6CE825FA668E2672F008923DC943301C96012610252BA0A385D6F57CC55B45E0192C91D445B339B70C073E5C084B9';
wwv_flow_imp.g_varchar2_table(28) := 'AC3DE6290030AECD36DA391D274380E3E6F78F4100F233CF7E70C07322EC0175E0C0C5EBC426D9E407DA4DB490D469E58171E916DACD641C2C191CA0E29DF30901B1439BC7FFA5DD440B498B7A0D7DBD74000D2D88CDBF980206D0627A59EB8202065041';
wwv_flow_imp.g_varchar2_table(29) := '10BB5C4C01036831BDD2691DE94E0CA048426A1DC600D21AF948F76D00451252EB300690D6C847BA6F032892905A873180B4463ED27D1B409184D433CCFE3B3580F6EB61570B2A60002D289835DFAFC0FB000000FFFF61F0AAF400000006494441540300';
wwv_flow_imp.g_varchar2_table(30) := 'AC03457BF940607E0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6852389000091787210)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700000F26494441547801EC9DD1AB1F4715C79714D2A6A6981A6F525AB195182809B5A2504A2112EA833EE93F200A8A20148AF8EE83F85E44100451507CE9A342411F94';
wwv_flow_imp.g_varchar2_table(2) := '4041428BA28696400C3622D29A060BADC60682FE3E9B7B36E7B7BFDFDE9DDD9DDDDFCECEB7DCB9337366E6CC39DF39DFD9B3BF7B737BE8C6773EF33F1561906B0C1C2AF49F10C818011120E3C397EB452102280AB2464004C8FAF8E57CC604D0E10B01A5';
wwv_flow_imp.g_varchar2_table(3) := '408A81CC11D01320F300C8DD7D1120F708C8DC7F1120F300C8DD7D1120C70890CF1502224005851A39222002E478EAF2B9424004A8A05023470444801C4F5D3E5708880015146AE48040DD4711A08E88FA592120026475DC72B68E8008504744FDAC1010';
wwv_flow_imp.g_varchar2_table(4) := '01B23A6E395B474004A823A27E5608644480ACCE55CE062220020402A569CB44400458E6B9CAAB4004448040A0346D99088800CB3C577915888008100854D2D3647C2302224023341AC8010111208753968F8D0888008DD06820070444801C4E593E3622';
wwv_flow_imp.g_varchar2_table(5) := '20023442A3812520D0E68308D08690C6178D8008B0E8E395736D0888006D08697CD10888008B3E5E39D7868008D08690C6178DC08209B0E8739373911010012201293569222002A4796EB23A120222402420A5264D04448034CF4D56474240048804E4AC';
wwv_flow_imp.g_varchar2_table(6) := 'D4C8986004448060A83471890888004B3C55F9148C8008100C95262E1101116089A72A9F8211100182A1D2C41410E86AA308D015B148F3DFBB75BBF8CB8D9B65A11D49ADD474444004E808588CE904FCD5B76F16FF7EFF765968238BA15B3ABA21200274';
wwv_flow_imp.g_varchar2_table(7) := 'C36BF06C029D80AF2B42C6585DAEFEB8088800E3E2BBA69D0027D0D784AEC318739C48CD911110014606D8D413D804B8F5A9CF3EF36C41A16D8539CCB5BEEA7111581001C6056A88F637DFBD5510D85E07817FFF837B0585B61F63AE48E01119AF2D028C';
wwv_flow_imp.g_varchar2_table(8) := '876DA999407E6B4580B2B3FF8D8027F0F7BB228101B1835A041819746E73BFC5A38F3F5106BC97D186101083B6159E1CD6563D0E0222C038B8965AF99CBF6CEC7F23F84F9C3AB3DFDBAC2001736C848F49EB3A6C4C751C04448038386E68E1F626806D80';
wwv_flow_imp.g_varchar2_table(9) := 'C03E28F86D1E73986B7D74A0CBFAAAE3222002C4C5B3D446C0FABC9F8026B0CBC1806FCC658D4D45173AADBF514BD01B0111A03774DB1712A804AC8D12C804B4F5436BD6B0D6E6A393176AEBAB8E8380081007C74A0B816A9D637B270B02D9FA5D6BD6A2';
wwv_flow_imp.g_varchar2_table(10) := 'C3D6412E6BAB8E8380081007C7524B3D401F397DB6940FF9E675F03EA097E221686EAE15013631E92521F8FDED4FFAC2A73ABD94B945E8409789208152214363782D020CC7B0D4E0839FB485F4A51C88F00D5DE83455F59F2D983CC77AA8CF22C0500457';
wwv_flow_imp.g_varchar2_table(11) := 'EBB9FD5755F5E5D3964A38B051D7A9546820A0FBCB45807D20FA5604BFBFFD4957485BFAEA6B5A874E74DBB852214362582D020CC3AFA8073FE9CA40958DCBD1ED5321C8D73859034108880041306D9F540F400274FBCC78529F0AE929301C5711600086';
wwv_flow_imp.g_varchar2_table(12) := 'F5DB7F80AAE0A5F554482FC4C1D06D9D983001B6FA3399B07EFB5FBB7CA978F5A5172729ECE51DADDBE2C7D43E180111E0607C1A47FDEDDF3869A28139D93291CBD1B611017A4039C71B573F1CEB7190AB2522C00A84AE5FFEC63DFBC5AF17E7BFFFF24E';
wwv_flow_imp.g_varchar2_table(13) := 'CAD3DFFA4165FA1C49591937E38608D0F170EA81B6F7D92F77D4106FFA7D8F7DA252A64F842A283A3544804E70AD4FE6F65F974CD473DB781BEAE474D3D46C4040046800A649ECD39F5DDEFE66DF03A73E69CDF2AFCCE95DA08223A8210204C1746792BF';
wwv_flow_imp.g_varchar2_table(14) := '61FDCD7B677437DF49831E3AF3E96A736F632554A3110111A0119ACD017FFB6F8EEE4EF2D8E7BFBABBCD13DF5904083CC07A6A3124FDB9FE9B9F15977FF8CDE2C2F3E7CA421B59A0291BD3780A98502FC38644582D0284E154BCF7FEED6A66DFF4E7BF6F';
wwv_flow_imp.g_varchar2_table(15) := 'FCB90CF8D77EF1A3E2CDD77F5FE9A38D0C42F425824F832AC50B6CC47649040844B4FE04085C564D23B02FBEF05CD56F6A4004E6368D37C97D1AA4F780269436E522C026265B25A41636D035FDE1E627B06DFDF18F7CAC78F20B5F299EFEDAB7CB72EAA9';
wwv_flow_imp.g_varchar2_table(16) := 'F305321B672E6BAC1F52D7D3A090359A531422404014F81BB54FAAF1C6AF7E52ED42B09FFEDC978A237B1FAD647B4F9C2B907912F835D5C49686B76DE813AB65ABC50C8B001D8FF2F8E94F755C51ACE5FB047B9302486063BC17747D0A78DB3C694DA7EA';
wwv_flow_imp.g_varchar2_table(17) := '4D0444804D4C3624FE36F53F78DA98B845E0F3796EFF2D53D644FE29B03610D0E96A5B80CAC54F498800BB3B0B9FFFFB5C7B0C8B8E3DFC68A5F6DDAB7FACDA5D1BDEE6AE6B739A2F028C7CDAFE567EE71FD746DDED3EF7CB716CE49F5CF4553611100136';
wwv_flow_imp.g_varchar2_table(18) := '315993F820F22F996B93023B37FEFED7D699575FB950CDE9FA69130B87DA888E9C8A08D072DAFE0760FE25B3655935CCADEC83F2CAAF7F5E8DD51BD72FBD5C89FC9A4AD8B1E16DEFB8349BE922C00447ED7F48C5530012F860BF79FD6F05327FFBFB355D';
wwv_flow_imp.g_varchar2_table(19) := '4CF4EBFCD3AB8B8E9CE68A002DA7ED83C8E7F32DCBD686790AF85F9F800404FBC51F7FB7A0FCE9973F2D90D922E6B2C6FA851AA32120028C06EDBA62F279027B5DBAD9E39F39327773449231101001C640B5412781CDBF1F86083EC7A78D8C31DDFC0DE0';
wwv_flow_imp.g_varchar2_table(20) := '8D2416014602F620B510E1F16F7CAF20E029B4911DB44663E3202002B4E0EA7FA094C2EDEC6DF4B6B7B899EDB00890EDD1A7E1F8D8568A0063232CFDB346400498F5F1C8B8B11110015A10FEC0BDF75433BAFE7A72B570C286B7D1DB3EA109496D250224';
wwv_flow_imp.g_varchar2_table(21) := '755C3236360222406C44A52F2904664C80A4709C8DB143FE0DC16C9C98D01011A005ECA387EFBE0328B85AC04A70580438E0D0F877B5FEAFC1DDB8F2870366CF6F881F84E1C3FC2C9B8F452240C35910383EF81BA6CD4E5C27293EE0CBEC0C9D894122C0';
wwv_flow_imp.g_varchar2_table(22) := '96832060089CFA107FA9A12E1BD2E74F2252FC479743F4B1769B8DF8824F8CABAC232002ACE3511028048C89FDFF9C1A59AC60E5AF4510AC14F4AE95481D6F3B3EE15B24D58B512302B8A324400814131140274E9D298EED9D34D12875AC976B48650662';
wwv_flow_imp.g_varchar2_table(23) := '33B6E383C9F00D1FADAF5A7F19AE8A010283003101814300D1FFE0F1135465E9F317DBCA85137F339BF1015F6C7B7CC457EBE75EEB09B08A000282C05835CB2F0286C0293BAB6F473FB4B7FA3EFF2FFF02EC6DC6177C320FF0159FAD9F739D3D01080402';
wwv_flow_imp.g_varchar2_table(24) := 'C28280402160AC4F7DFF8377093066CECE5E438AB7CDDB8C4E7CC237DA147CC677DA3997AC09400010081600040881627D5F93535B3FD68BB0E98B51D7F3FF6D3AF10D1F6D0CDFC1C0FA73A8A7B6215B0270F00480014E601020D63FA89EFB7B80E5FFDB';
wwv_flow_imp.g_varchar2_table(25) := '7CC0477CB53130F07FF9C2E4B9D4D9128083B743E6762730ACBFAD7EE4F4D94AEC538D4AB8E306FF4F0133A1CD17C6F1D9E67319583BB73A4B02D40FFCF453E75BCF9D9CDA07CD9CD2A090F4A7EEA0F7995F99C8F529902501FCEDEFD3817A90D4FBFE29';
wwv_flow_imp.g_varchar2_table(26) := '30D734E8A0F4A7EE8FF7FDEADB37EBC359F4B32340FDA6231DE873D2734A83BAA43FDE577CF74FB53A367EEE52DB3322C03410FB3F18EB6FC090DDE79806F9F4A7AB3F759FEBA9617D7C89FDFC0870EBF6A0739C5B1AE46FFF3E8E797FFAAC4F7D4D7604';
wwv_flow_imp.g_varchar2_table(27) := 'F007E67F5AEAE507B5FD53803468972FC3FEF6C766521A6A957004B223009F78183C04B3B5BBD4FED69CCBCB70DFF4C763E0B1E98247CA73B323408CC3F241B3ABA700B7BF4F7F74FBF73B5911A01F6E85BF71073F057AD8E07FF1CDDBD24355D64B4480';
wwv_flow_imp.g_varchar2_table(28) := '9EC7EF6FDCA99F02DCFEEC69A67B5B4CA63A0C0111200CA7ADB3CE3EF36C259FF229E0531FDDFED511F46A8800BD60BBB3887701FB4112373237F39D91F1BEFB3DD85BB7FF30AC458061F815FE13216EE6313F1645377B98C95D7EEDC1D6A85E47400458';
wwv_flow_imp.g_varchar2_table(29) := 'C7A373CF3F05583C662AE47593FA2CE1F607B35D16112002FAFE261E2B1522F541770473A5C22120023830FA34FF79F5F5E2DAE54B6B4B49534857D684033AE842A757C19EECED656A77474004E88E59B5E2CA2B173682DF067DBA62B2BEB5D7E5FFE6BF';
wwv_flow_imp.g_varchar2_table(30) := '48D017D1BBEB4480BB5804B7FEF3AFEB05C1FFCEF5B7AA35271F385C3CF9F0D1C202947485BFFA564DE8D9A8A73E1F3F7EA4602F530709B0C5FAAABB2170A8DB74CD26F85FFBDD6F8B7AF03FB42200E8584D1B1210C0B4FB14D6FAD4E7D4878F946AD8C3';
wwv_flow_imp.g_varchar2_table(31) := '93005B5E7DE9C502DBCA09FA168CC00E09106CE36C26927313FCDE2002918034D9D1C3F7ACDDD00430816CE3A1356B586BF3D907DDD6674F64D6A7C6366CA4AD128680081086534160916EF8E9DCC804A297D146E683934026A0196B2BBCF03297353617';
wwv_flow_imp.g_varchar2_table(32) := '5DE8B4BED5C8B0C1FAD4D888ADB455DA111001DA31DA087EF27C02CFDFC875350427F34C4E405F78FE5C6185FEB6B18B2F3C57F83174A0CBE6D66B6CF0EF1E8C8B04A010564480169C78C124A06C1A01C98B288167B2A69A79DCDE4DE36D72DBAB6D1EE3';
wwv_flow_imp.g_varchar2_table(33) := 'F5BDB0594F029039B888000DF8F04249F0F3826953086602CDFA2135B737EB2821F3097A0A4F98BE7BD93E90001FACAF7A130111601393F2D3145E28EBC14F306F99DE2A621D8554A52CAB8F4B3D21689B9CA0A7843C61B66DCC3EE8B3317CD0274486C6';
wwv_flow_imp.g_varchar2_table(34) := '662D02D430216D20F8BD988022B0BC6CCE6D6CC5666F233EE19B97A95D1422C02A0A487728A40BA40D2B51F5452A42405582441AD88CEDDE5C7C8304142FCFB99D3501480D28DC8E14D2050B06CBC3FBA622A6679735B6935AE18BD9010928F86DC5C672';
wwv_flow_imp.g_varchar2_table(35) := 'ACB32640D381933E0CC9C39BF47AF9D17BEFFEFF87BD7C8C36BEE0D318BA53D7991D01B6050237248531D206D287290E963D2953ECC71E3C0DF091B2CDBF26F9B6B97D65735B971D012C1008062BDC9014C6481BA63824F6614FCA14FBD91EF84831DF7D';
wwv_flow_imp.g_varchar2_table(36) := '8DDCE6E5526747805C0E567E8621200284E1A4590B45400458E8C1CAAD30044480309C346BA1084C4880852228B79246400448FAF864FC50044480A1086A7DD2088800491F9F8C1F8A8008301441AD4F1A0111608AE3D31EB345400498EDD1C8B0291010';
wwv_flow_imp.g_varchar2_table(37) := '01A640597BCC16011160B64723C3A6404004980265ED315B044480D91ECD320C9BBB1722C0DC4F48F68D8A8008302ABC523E77044480B99F90EC1B150111605478A57CEE088800733F21D9372A0223126054BBA55C08444140048802A394A48A800890EA';
wwv_flow_imp.g_varchar2_table(38) := 'C9C9EE280888005160949254111001523D39D91D050111200A8C3525EA2683800890CC51C9D031101001C640553A9341400448E6A864E81808880063A02A9DC920200224735469189A9A9522406A27267BA3222002448553CA5243400448EDC4646F5404';
wwv_flow_imp.g_varchar2_table(39) := '4480A8704A596A088800A99D98EC8D8A40440244B54BCA84C02408880093C0AC4DE68A800830D793915D932020024C02B336992B0222C05C4F46764D828008100366E94816011120D9A393E13110100162A0281DC9222002247B74323C060222400C14A5';
wwv_flow_imp.g_varchar2_table(40) := '2359044480648F6E1E86A76EC5FF010000FFFFA2219DA800000006494441540300CE46BB1BD9B3BDB60000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6852389387249787211)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9DDFAB66D759C7F79940D3D4294D3B4E126C319571206488958AA114DA4EEB8582A097DE888222088214EF75CEF8078808424110146FBC54';
wwv_flow_imp.g_varchar2_table(2) := '10F4423B4D412462B19696401A6CA548D271B49268DA40E7747F76DEE7CD73D6D9FB3D7BEF77EFF563AF6FD8EB5DBFD77A9EEFB39FEFFAF1BE3973A5D17F424008548B8008A05AD34B7121D0342200BD0542A062044400151B5FAAD78D00DA8B00404141';
wwv_flow_imp.g_varchar2_table(3) := '08548A8008A052C34B6D21000222005050100295222002A8D4F052BB6E044C7B118021A1580854888008A042A34B6521600888000C09C542A042044400151A5D2AD78D80D75E04E0D1505A0854868008A032834B5D21E0111001783494160295212002A8';
wwv_flow_imp.g_varchar2_table(4) := 'CCE052B76E0442ED45002122CA0B818A10100154646CA92A04420444002122CA0B818A10100154646CA95A37027DDA8B00FA50519910A8040111402586969A42A00F0111401F2A2A130295202002A8C4D052B36E0486B417010C21A37221500102228001';
wwv_flow_imp.g_varchar2_table(5) := '23DF3FBD7DBB2F3CB8FBC953857C31E8B319650366AEBEB85A02E0A520E0CCFFFDFB9FFABC85367F46B872F2F0F37DA17D63EE2834D962D06733CAB0A90567EB8ECC790F5A9B56F954430018D919FE8C9782D05AFDCED9D9D96D0B6D5ECFC61170B6EE88';
wwv_flow_imp.g_varchar2_table(6) := '8CF70072E0FD68E38E14B604C1215D364B00383CC6DC19B5737867F84398A8AE5204783F5AD53B5268DF9DB3DDBB73CABBD4966FF2D91C01602C0C07ABB716EB56F736D6230426236084C0BB0421B4E174F2209977D8040198D3B706DAAFF499E32EF1CA';
wwv_flow_imp.g_varchar2_table(7) := '44E00EEF581B36734C289A00CCF161E81D5B97F95A49EAD210B06342F6447019B04512801CFF32B3AA3E12027B228834DFE2D31447006CBFB4E22FFE1E68C0E310D81F0D8E1B267EEF6208C056FD162258B78DF40881EC1080088ABA282C8200B4EA67F7';
wwv_flow_imp.g_varchar2_table(8) := 'A24BA0610420017E4C969C0886457CA7267B02C0F95B71B5EAB720E8290A0188207B12C89A00E4FC45BDF012F62202D99340B60420E7BFF836A9A44804B226812C0940CE5FE48B2EA18711884E02C3A29CAFC98E00E4FCE70DA4DC6610C89204B2220039';
wwv_flow_imp.g_varchar2_table(9) := 'FF665E7629D28F407624901501B498E9B6BF0541CFA611B8C36F5A72D1301B02D8ADFEB9E0223984C06A083C72E56CD5856E8AE05910C0CEF9B301650A806A2B04A622C0FFB8B67BE7A7765DBC7D1604D06A25E76F41D0531502591C059213402E4C58D5';
wwv_flow_imp.g_varchar2_table(10) := 'AB2765B3402087A3405202D839BF56FF2C5E4709111B018E024B5F084ED52129014C1556ED85C0D61048BD0B4846005AFDB7F62A4B9F3908A4DE052423803960A98F10D8220229770129094067FF2DBECDD2693202EC022677EAE930A7280901ECB6FF73';
wwv_flow_imp.g_varchar2_table(11) := 'E4551F21B04904525D06262180D6825AFD5B10F408014320D531203A01A4623A035AB110C811018E01297C233A015C3979783B4703482621901A81637C63AEECD109E0E4E4E4537385553F21B0650452F846740260ABB365234A372130178114BE119500';
wwv_flow_imp.g_varchar2_table(12) := '74FB3FF7D550BF5A10887D0F1095006A31A2F41402731198F36DC0DCB9E8179500529C715052410808817E04A212408A334EBFDA2A1502792210DB47A21140ECB34D9EE6955442E0720462FA4A340248F11DE7E550AB8510281B8163A58F4600C70AAAFE';
wwv_flow_imp.g_varchar2_table(13) := '42A01604622E96D108401780B5BCBED2F3580462FA4A3402381614F5170242607904A21140ECDBCDE5A1D28842202F049690261A012C21ACC6100235201073B11401D4F046494721308040140288F9BDE6809E2A1602452110CB67A2104051C84B582150';
wwv_flow_imp.g_varchar2_table(14) := '00024B892802580A498D23040A44400450A0D124B210580A0111C052486A1C215020022280028D2691EB466049EDA31040CCDF362F098EC61202A91088E53351082015889A771881575F7FABF9F27FBED105D2C32D55B3650444005BB6EE806E38FC6B2D';
wwv_flow_imp.g_varchar2_table(15) := '01583569CA2CAFB81E044400F5D8BAD31447C7E1BB8CFBA08C3A57A46486082C2D9208606944331E0F07C7D18744A48E3643F52ADF1E022280EDD9B457231C1B07F795B73EFE9986E0CB68435B5FA6F4761110016CD7B67BCD70681C7B5FD02670FCF7BC';
wwv_flow_imp.g_varchar2_table(16) := 'FF7A4320DD16ED1FDAD2675FA0C4661110016CD6B46F2B8623E3D06FE79AE6F1EB4F76AB3E8E6F65A445028646BEF11A925D5963508D990702A1F323D5CDE76F77AB3E691F20819FFEF95FEA08C2CA218E37DEFABE65156F100111C0068D8A4A382E0E4C';
wwv_flow_imp.g_varchar2_table(17) := 'DA42B8CA5BB98F3F78F396CF36AFFCD79B0D639D2B5466330888003663CAF38AB0FAFB129C9F55DE97F5A569435B5F178EE5EB942E1B011140D9F6EB95FEEB0FDE6CFEEF7BEF6CDD9F7EE6B9DE6D7F6FE7B61012A04F9BEC1EC662CC2EA38F2408AC35A9';
wwv_flow_imp.g_varchar2_table(18) := '08602D64138DCB6A8DC3DAF438F213379EB5ECE8983EF4B50E8CC9D89657BC0D044400DBB063A7050EEACFFD38308EDC55CEF8A02FDF1A5857C6D67D80A1B18D5804B00D3B765AE0A05D62F78103EF92B323BE35F024C0A5E0ECC1D4313B044400D99964';
wwv_flow_imp.g_varchar2_table(19) := '9E40ACFEBE677891E7EBA6A6C36F06741F3015C1E3DAAFD95B04B026BA91C6C6F9FDEACFD69F8BBCA5A6672CC6B4F1741F6048941F8B00CAB761133AFF125BFF1016C6F44701E6D47D4088527979114079363B2731ABBF2FC0517D7EC974781408E75E72';
wwv_flow_imp.g_varchar2_table(20) := '2E8D15070111401C9C579905076425B6C1FD36DDCA968CFB8E02DA052C89F0C5B1D62E1101AC8DF08AE37BE7677BBEE6EA6F6A300773591E12B2B4E2F21010019467B34EE2D0F1DE77ED89AE3CC6873F0AE8423006E2EBCD2102580FDB5547F6AB3F5B7F';
wwv_flow_imp.g_varchar2_table(21) := '56E6552774837314F0BB002F8B6BA664010888000A30522862B8FAFFEF836F372FBF782F6AB84CA6B05EF9E908C4E821028881F2C273842BEE77EEBFD6A4085E2D64D285A047A48CB408A00C3BEDA50C57FF7D4506899C65CB009E2C45100164699661A1';
wwv_flow_imp.g_varchar2_table(22) := '5869ADF6A9677FAAB9F58BBF913C983C5C085A5A7119088800CAB0532765B8C23EF39B7FD85CFF995F491ADE7BE3273BD9EC43C70043E2B838566F11402CA41798C73B172BFF02431E3DC4BB3FFC130D3B111B2824292B579C270222803CED72412A9C3F';
wwv_flow_imp.g_varchar2_table(23) := 'D72DF6877FEED7F6F22223B2EE0B94C81A011140D6E67947B837DC9FF8A294AD3F710E41BB801CAC304F0611C03CDCA2F7F2977FB96CFF3D08E12EC0D7293D0D8198AD450031D19E395778AE5E6AF5FFEE37FE6DA64417BBB10BF0A53A067834F24D8B00';
wwv_flow_imp.g_varchar2_table(24) := 'F2B54DAF64C7AEFE38FD4B9FFB6C73EFB73FD1FCD31FFC561793A6ECFEDFFF79EF9C630B75193816A97CDA8900F2B1C5A0247EFB3FD86844050E8ED3BFFAB57FB9D09AB2AFFED59F34B4B95039B240C780914065D44C04909131FA4409B7D273B7FFACF2';
wwv_flow_imp.g_varchar2_table(25) := '3878DF1CBE8C36EC067CD9DC7428FBDC716AEA175B5711406CC427CEE76FFFFD167BCA30E1AA7EED433FD67CE4177EB5F9D8AFFF6E176E3C7FBBA1CCC6643710F6B1BA4331F7005E462FFBA17EAA4B878008201DF6A366F6ABE8B59B1F1DD5C737E2CCCF';
wwv_flow_imp.g_varchar2_table(26) := 'AA6E6538FBCD9FFDE5E6B1EB3F6A45CDF5E73ED150469D15D287BE969F137BD9E7F4579FF5111001AC8FF15133F0C31A1B20FCD9AD951F8A5F7FE55FCF55E3ECE70A5C863ABF13F8C6DFFEA9AB1D97D43DC0389C72692502C8C5123D72842B285BEC9E66';
wwv_flow_imp.g_varchar2_table(27) := '078B1EBCFCA57DBD5FE1F78541E2431FFD6450322D1BCA18EA306DB4BA5AA7D056049002F59173FA33B43F5B8FECDE35E33CDF25DA8FAB4F3DDD7E8E7F7CDFF1BD9A73FF6FC0947E6A1B1F0111407CCC67CD38E7FCCF445389E38D57BF49B7C542F823A6';
wwv_flow_imp.g_varchar2_table(28) := 'C506D6408B2020025804C67506597AFBFCAD2FBD3049D0B93F3A9A4B56938453E3451010012C02E33A83F80BC0B933F84BB907DFFAF7E6CDFBFF31381475AFBC786FB07E6C85BFAC5C4287B1F396DC2E95EC228054C84F9CD73BD594AEEF0EFE7FFD2FFF';
wwv_flow_imp.g_varchar2_table(29) := 'F59F35F7BFF2C50B43E0FCE10E61EE8F8EC2C197DEC984E32B3F1F0111C07CEC56ED193A0D8E3C7742BF0B600C567948C0C2CB7FF7170DC4C00E817AC2DCED3F7D8F9195FE0AF1101001C4C33AD94C3864E8D0908005EFF80849DBA5567FC653C8170111';
wwv_flow_imp.g_varchar2_table(30) := '40BEB65954321C1AC73E3428DF187CEC77FEB8FB1B8387DA8DA963AC31EDD4A669526220024889FE81B997F80D40383C2470FB8FBEB8FF2BC238290162C0F1F923A3EC16C27EC7E6BD2EC78EA5FECB2220025816CF2246830808383C81F41A8E5F041895';
wwv_flow_imp.g_varchar2_table(31) := '0B2902A8FC0590FA7523200228C0FEFA614D01469A2962EA6E2280D4161831BFFF1F7A4634CFA289482B0B335C2A8408E05288D4600E022592D61C3D4BEF230228DD82925F081C818008E008F0D6EC7AF5D147D61C5E636780400E22880072B0C2C66510';
wwv_flow_imp.g_varchar2_table(32) := '99E56B601140BEB6D94B36F70F73EC0748902851E60430259F520490DC04124008A4434004900EFB8333877F49E7D8BFD07B70B2852B4359435D169EAEC8E172115A04908B259C1C5F7FF06653F21FD208FF1231BAA0935351C94C101001646208130347';
wwv_flow_imp.g_varchar2_table(33) := 'C1612C6F71E854567E4CCC4A4D38668CB17DD109DDC6B657BB38088800E2E03C6A161C0447E96BBCF40F6BF8977FF877020922813EC4EB2813016462E7D0F91FBFFE6473EBE39F8922DDD2BB0BFE552113FCE9679E6BD0C5F2101CBA5ABEC638279DAFE4';
wwv_flow_imp.g_varchar2_table(34) := '244CADB2E0103886E98FC3DC7CFEB665BBB8D4AFD5AE7EE07A832E8FB784D629D27EA02B3AB7493D891110012436008E80439818380A0E43FE3DEFBF4EB40FB1B6EAFB096724385AF86EA6033AA19BD5A133BA5B5E711A0444006970EF66C50170842ED3';
wwv_flow_imp.g_varchar2_table(35) := '7EE020384A9BDC3F945966CEBFD5677D53C45E76E647375F86EE60409D421A04440069706FF86E1C07B0E9710C1CC4F216BFEFDA13962C22F697957DB2A323BA9A326050130998DEB9C422800496C0F95F7BFDADFDCC38048EB12F7009CED0962DE11EC0';
wwv_flow_imp.g_varchar2_table(36) := 'CBE865371D88D1159D491320013021AD10170111405CBCBB957FACF3239A9DA1491372BE07183AFF23771842120013914088D2FA7911C0FA189F9B8117DD0A58057104CB0FC5B4B3BA52EE01F8FACF641E8AD1DDEBE6B119EAA3F2651110012C8BE7C1D1';
wwv_flow_imp.g_varchar2_table(37) := 'C215EE83376F1D6C6F95BE9DDF625B7D2EB1FFFE7FAC4C5E37FA6CF93E00FD720B22808816F12B1C2B64B8BD1F12256C97E33120DCFE3F71E3D92175CE95A31B585821F701E13F8B66758A97474004B03CA6BD2386ABFF5807B1C1FC5639F76380776893';
wwv_flow_imp.g_varchar2_table(38) := 'FF503C158B4363A96E1A0222806978CD6EED57B5A90EC2A47EABCC3120B75D80DFFE0FDDFEA3C750F0041792E5501F951F8F8008E0780C478DC0D67654C381466C95BD93E4B40B08B7FFC83AA0C660B127B863B11A9C246145AE538B002258C6AFFE4C37';
wwv_flow_imp.g_varchar2_table(39) := '77CBEB9D845D0063E510FCEA3F6777830E21698498D1466179044400CB63BADA883889DF05842BEF6A131F183894612EB91D9842552B22200258115C1BDAFFEBB8DE81AD7E4AEC7F5EEB7F763B658C25DB2EB1FA9B3CC76263E3281E8F8008603C5659B4';
wwv_flow_imp.g_varchar2_table(40) := 'F42B2CC78070058E296438B797ED58393C691E3B56EAFE39CF2F02C8D93A03B2F995D2AFC003CD572BF673CF3DFBAF269C061E85800860144C7935E227B45EA27025F6756BA5C339975CFDD79259E35E444004701193224AFC8ACB4A1CFB7701CC694079';
wwv_flow_imp.g_varchar2_table(41) := '59AC4C7119088800CAB0D305295971FD5120E6EF02FCEA8F0CC8724140157408E4FE2102C8DD4207E40B7F1710631780F3FBD5DF7F2B71405455658A80082053C38C112BFC5D007FE27B4CBF63DA78E767EBAFD5FF1834D3F71501A4B7C15112842BF04B';
wwv_flow_imp.g_varchar2_table(42) := '9FFBEC51E31DEACCEA7FA85E75E521200228CF667B89BFFDCAD79A6FBEF4957D9E04BF0D58D137C98A000007D749444154E32880F3FBD59FB9981B19482B5C44A0841211400956EA9111C7C3017BAA1A8E024B9340E8FC362F32208BE51597858008A02C';
wwv_flow_imp.g_varchar2_table(43) := '7B75D2BEFCE2BD0B2BFF93EF7D5757671F4B7E2B101E2B6EFCF063364D178B043A188AFC10011466369CFF3BF75FDB4BFD438F3ED2E0904FB504406C151C0542C7B5BA29315B7FC6B23E10CDD577BD3D27735B3924806C96575C0602228032ECD4FCFFFF';
wwv_flow_imp.g_varchar2_table(44) := 'DC6FFEF96FFEB2099DFFC7AF3DD6E090A8418C839226E0B83830E93981BE7EEBCFD8100D633117737B124036644456DAD41C4AD15D045080A570A8AFFEE33F9C931467C401CF15B6191CD43B250E8C23B755931EFAD0D73A311F635BDE6264A0CEF2C4C8';
wwv_flow_imp.g_varchar2_table(45) := 'AA7B0190C83F880032B7118E8443793171B83E67B43638651F09E0D416FCFF4A4CDACA89393A78E767DC43F351874CB4B3C09100D92DAF384F04440079DAA5930A07C291BACCEE0347C3E176D9C1286C8343FBC0F1C03A931EAAA38DBF5B20DF17980FD9';
wwv_flow_imp.g_varchar2_table(46) := '7C1DB2A3832F533A2F04440079D9632F0D176A38D0BEA04DE088385A9BBCF4E18CFE911FB9DAF89DC0A59D8206F4654EC60AAA7AB3C8467B5F890EB59180D73FF7B40820430BE1FC5CA89968531DD1FA11731C606526308E05EA2C5899C5B4C591E93BD6';
wwv_flow_imp.g_varchar2_table(47) := 'F96D2CDAD397B1AC0C124027CB2BCE070111403EB61875D33F475C5666020E6D0127B7B1705A2B27A62D65563F35A62FE3781280D0F40DC15424D76F2F02581FE351334CB9E91F3560068D20014F3488C485A68E04209147100124B4034E4F607B8C6378';
wwv_flow_imp.g_varchar2_table(48) := '51701C56625F56621A1DD0C5CBCE91001220A0BFAF2B3D5D9AFC2280C816B3AD30DB619C9E4099170387C1717C59C969744127AF032440407FB0208438F8F64AAF838008601D5CCF8D7AF5D147CEE587329C99B940C36186DA945A8E4E7C2B111241A9FA';
wwv_flow_imp.g_varchar2_table(49) := '6C456E1140044B722936340D4E4FC0F139331F6A3B34C69CF2B1A43467EC437D2002488030D40E3C683754AFF2E51010012C87E5C19158FD70721F28C3E909B11CDF84643EE627C47636E6233037C163421A3C4CCE92E212658D42000FCFAEDC2B119CA5';
wwv_flow_imp.g_varchar2_table(50) := '65C6E97C587AFC52C7F398902E558F25E58EE5335796145A630901215016022280B2EC256985C0A208880016855383D58A40A97A8B004AB59CE416020B2020025800440D21044A45200A015C3FBD77AF548024B7104881402C9F8942002900D49C422016';
wwv_flow_imp.g_varchar2_table(51) := '0225CF138D004E4E4EB40B28F94D91EC9B44201A016C123D292504564020E662290258C1801A52089482403402383B3BFB4229A0484E2130168135DAC5F495680410EBB7CD6B1844630A81AD22108D00B60AA0F412024B231073B18C4600B1BED75CDA18';
wwv_flow_imp.g_varchar2_table(52) := '1A4F08C44620A6AF442300408C79BBC97C0A42604D04D6183BB68F4425803500D39842604B08C4BC0004B7A804F0FD8727779954410808813C10884A0031CF3679C02B2984C03404AEDD79E1745A8FE35A472500443DD14F828141A17004D6103F856F44';
wwv_flow_imp.g_varchar2_table(53) := '2780D8679C350CA53185C01A08A4F08DE80410F33BCE358CA43185C05A08A4F08DE804C03D408AADCE5A46D3B842602904F08DA5C61A3B4E740240307D1B000A0AA522B092DC49BE214B420029986E25A3695821B00802B16FFF4DE82404C0E43A068082';
wwv_flow_imp.g_varchar2_table(54) := '8210E81048B2FA33733202D03100F81584405A04921100C700ED02D21A5FB34F4760851E77536DFFD125190130B97601A0A02004D221909400B40B486778CD9C050249577F10484A0008A05D002828D48840CAADBFE19D9C00D805B4C224BB056DE7D623';
wwv_flow_imp.g_varchar2_table(55) := '044621B070A32CDEF9E40400A830A12E044142A11204926FFD0DE72C08006174140005851A1060C1CB45CF6C084047815C5E09C9B13202596CFD4DC76C08008176CC981540C8A520041642209BADBFE993150120944800141436884076CE0FC6D9110042';
wwv_flow_imp.g_varchar2_table(56) := '8904404161430864E9FCE09B2501209848001414368040B6CE0FB6D91200C28904404121350247CC9FB5F3A357D604808022015050281081EC9D1F4CB32700848404DA70D2A6F50D410B829E7C11E0076D0FCFAE7CBA7D5FA3FE79EFB988144100A6DC0E';
wwv_flow_imp.g_varchar2_table(57) := '54918001A2383704EE7EE0F7BEF0E9DD6F5A7293AD579EA208000D208136683700180AAB23306682D2567DAF53710460C2B724C0168BDD00C18A150B81680898E397B6EA7B808A2500948004086D1A1220B4493D42605D04B6E0F88650D104604A4002BB';
wwv_flow_imp.g_varchar2_table(58) := 'A0A38181A2785104CCE9DBF7ECA4E4153F04651304E0956A0D74DA86136E62DBF2BB18AE8DF50881C908ECDE9DBBBC4B5B727A0FC4E608C094E326B62582530CD7C6B633102118408A2F2080C3137078DE99DDBB73CABB74A1F1460A364B00A17D5A83B2';
wwv_flow_imp.g_varchar2_table(59) := '33D81302466EDB706FD09102866FF37A368E0076B6D0AADAADEEBC0BEDFBD16DED71FA2D3B7CABF3B9A71A0238A7759BC1C8ADD1F7A480E1DBFC89055E8ABED076ED48437193250E7D36A3CCEC8A9D2DB465DDEACEBBD0DAB3CAA75A02B8CCDABC147D81';
wwv_flow_imp.g_varchar2_table(60) := '9746E1858E3873C4A1CF66945D66EFB0BE96BC08A0164B4B4F21D0838008A007141509815A101001D46269E929047A101001F480A2A2BA11A8497B11404DD696AE42204040041000A2AC10A8090111404DD696AE42204040041000A26CDD08D4A6BD08A0';
wwv_flow_imp.g_varchar2_table(61) := '368B4B5F21E01010013830941402B5212002A8CDE2D25708380444000E0C25EB46A046ED4500355A5D3A0B811D0222801D108A84408D0888006AB4BA7416023B0444003B2014D58D40ADDA8B006AB5BCF416022D02228016043D42A056044400B55A5E7A';
wwv_flow_imp.g_varchar2_table(62) := '0B81160111400B829EBA11A8597B1140CDD697EED5232002A8FE15100035232002A8D9FAD2BD7A044400D5BF02750350BBF63F000000FFFF9EF907F700000006494441540300F7A545979105675C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6852389675021787211)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000001BF494441547801EC943D4B0341108687982F62A289B90B7E141A4404316A61196C2CAD6DFD01FA2BFC058285A5A0D86B61A185168A2016122CD2683088A8C49C';
wwv_flow_imp.g_varchar2_table(2) := '601221393431EFEA1DA7C2DDEE5E11900BBCB7B3B3939967E76ED7A7ADCEB53A291F75F8E701781DF03AE0AA034F559D203727591A0085C343E3A464B2AE20A4008CE2A9D1098A245402484DFF906A841480BF4761C54A853C4198000AA3A8840150283E';
wwv_flow_imp.g_varchar2_table(3) := 'BB40E9E58D1FCAACAC934C178401B043757E09033DEEAD3161121E99A2E6E0244C21090344D2D3AC40BD7845EFB51726E6907C4800CCB052D87178608CD4EC229BE311497FADC1E6953080767D69E6C6AB0088E990308400F001DAD5009C53CCEFFF7303';
wwv_flow_imp.g_varchar2_table(4) := '2031CE7BA8A99B39F01D4086036B8811390DDC00BD4A8A70F144FB54B216358A3F1F6DB375C4D44309C3ED38720334BE93E2E6D32EF6FF240E341BA6CF1F4B9AB693C10D604DA497EF093B367CB08BE787C654681406C0D5EB2FDF50F9788B8A079B542D';
wwv_flow_imp.g_varchar2_table(5) := 'E4989D6C55CC6B5984801BE0552BD143EE94E2955B8A06BBA83F16A4EE529EEA673BCC8EB67D58BB3BD925C4F24270030C07DE4869EFD29A184521AB0F6088B5FAEC6C6E00BB246ED63C00AF03FFBF034E27E4130000FFFF19891AA60000000649444154';
wwv_flow_imp.g_varchar2_table(6) := '0300F5C2EAA190B147CD0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6852388752800787210)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDDDFCB7CDB5D1FF041C19F478CA6274A956A8907C4833F6A4B102172B017ED55FD074A0B2D42212052F0B217A5B7458A5010A442A5375E5A';
wwv_flow_imp.g_varchar2_table(2) := 'B0D80B25344582C15013120249682252929E9CB69093C6841EEAF37EBEDFF99EF9CE33336BCDCCFEB1D65EAFC3773F33B3F7DA6BADCF6B6D667DF68FE739DFF2D6BFFC85FF6F61E018700C38061C038E81B18E816FD9F98F000102040810184C60B79300';
wwv_flow_imp.g_varchar2_table(3) := '0C37E4022640800001021200C7000102040810184E2001BB0210050B0102040810184C400230D8800B970001020446177816BF04E099839F040810204060280109C050C32D5802040810185D601FBF04602FE19500010204080C2420011868B0854A8000';
wwv_flow_imp.g_varchar2_table(4) := '0102A30BBC1BBF04E05D0BEF0810204080C03002128061865AA00408102030BAC061FC1280430DEF0910204080C02002128041065A980408102030BAC0CBF14B005EF6F08900010204080C212001186298054980000102A30B1CC72F013816F199000102';
wwv_flow_imp.g_varchar2_table(5) := '04080C202001186090854880000102A30B3C8D5F02F0D4C41A0204081020B0790109C0E68758800408102030BAC0A9F82500A754AC2340800001021B1790006C7C80854780000102A30B9C8E5F0270DAC55A0204081020B0690109C0A687577004081020';
wwv_flow_imp.g_varchar2_table(6) := '30BAC0B9F82500E764AC2740800001021B1690006C7870854680000102A30B9C8F5F0270DEC6160204081020B0590109C0668756600408102030BAC0A5F8250097746C2340800001021B1590006C7460854580000102A30B5C8E5F0270D9C75602040810';
wwv_flow_imp.g_varchar2_table(7) := '20B0490109C0268755500408102030BA40297E094049C8760204081020B0410109C0060755480408102030BA40397E0940D948090204081020B0390109C0E68654400408102030BA404DFC12801A25650810204080C0C60424001B1B50E110204080C0E8';
wwv_flow_imp.g_varchar2_table(8) := '0275F14B00EA9C942240800001029B1290006C6A38054380000102A30BD4C62F01A895528E00010204086C484002B0A1C1140A010204088C2E501FBF04A0DE4A490204081020B0190109C0668652200408102030BAC035F14B00AED1529600010204086C';
wwv_flow_imp.g_varchar2_table(9) := '444002B091811406010204088C2E705DFC1280EBBC942640800001029B1090006C6218054180000102A30B5C1BBF04E05A31E50910204080C0060424001B18442110204080C0E802D7C72F01B8DECC1E0408102040A07B010940F743280002040810185D';
wwv_flow_imp.g_varchar2_table(10) := 'E096F82500B7A8D9870001020408742E2001E87C00759F000102044617B82D7E09C06D6EF62240800001025D0B4800BA1E3E9D2740800081D1056E8D5F0270AB9CFD081020408040C70212808E074FD709102040607481DBE39700DC6E674F0204081020';
wwv_flow_imp.g_varchar2_table(11) := 'D0AD8004A0DBA1D37102040810185DE09EF82500F7E8D9970001020408742A2001E874E0749B000102044617B82F7E09C07D7EF62640800001025D0A4800BA1C369D2640800081D105EE8D5F0270AFA0FD091020408040870212800E074D970910204060';
wwv_flow_imp.g_varchar2_table(12) := '7481FBE39700DC6FA8060204081020D09D8004A0BB21D36102040810185D608AF825005328AA83000102040874262001E86CC0749700010204461798267E09C0348E6A2140800001025D094800BA1A2E9D2540800081D105A68A5F023095A47A08102040';
wwv_flow_imp.g_varchar2_table(13) := '8040470212808E064B5709102040607481E9E297004C67A9260204081020D08D8004A09BA1D25102040810185D60CAF82500536AAA8B000102040874222001E864A0749300010204461798367E09C0B49E6A2340800001025D084800BA18269D24408000';
wwv_flow_imp.g_varchar2_table(14) := '81D105A68E5F0230B5A8FA081020408040070212800E06491709102040607481E9E397004C6FAA460204081020D0BC8004A0F921D24102040810185D608EF8250073A8AA930001020408342E2001687C80748F00010204461798277E09C03CAE6A254080';
wwv_flow_imp.g_varchar2_table(15) := '0001024D0B48009A1E1E9D2340800081D105E68A5F023097AC7A091020408040C3021280860747D708102040607481F9E29700CC67AB660204081020D0AC8004A0D9A1D13102040810185D60CEF8250073EAAA9B0001020408342A2001687460748B0001';
wwv_flow_imp.g_varchar2_table(16) := '0204461798377E09C0BCBE6A2740800001024D0A48009A1C169D2240800081D105E68E5F0230B7B0FA091020408040830212800607459708102040607481F9E39700CC6FAC050204081020D09C8004A0B921D12102040810185D6089F825004B286B8300';
wwv_flow_imp.g_varchar2_table(17) := '0102040834262001686C40748700010204461758267E09C032CE5A2140800001024D0948009A1A0E9D2140800081D105968A5F02B094B476081020408040430212808606435708102040607481E5E297002C67AD250204081020D08C8004A099A1D01102';
wwv_flow_imp.g_varchar2_table(18) := '040810185D60C9F825004B6A6B8B000102040834222001686420748300010204461758367E09C0B2DE5A2340800001024D0848009A18069D2040800081D105968E5F02B0B4B8F6081020408040030212800606411708102040607481E5E397002C6FAE45';
wwv_flow_imp.g_varchar2_table(19) := '0204081020B0BA800460F521D00102040810185D608DF825006BA86B930001020408AC2C2001587900344F80000102A30BAC13BF04601D77AD12204080008155052400ABF26B9C000102044617582B7E09C05AF2DA2540800001022B0A480056C4D73401';
wwv_flow_imp.g_varchar2_table(20) := '0204088C2EB05EFC1280F5ECB54C800001020456139000AC46AF6102040810185D60CDF825006BEA6B9B0001020408AC24200158095EB30408102030BAC0BAF14B00D6F5D73A010204081058454002B00ABB4609102040607481B5E39700AC3D02DA27B0';
wwv_flow_imp.g_varchar2_table(21) := 'B0C0DBDF7C67F7B9B7BEBEFBB3FFF1F6E3F2A5AF7E73E11E688E0081160424002D8C823E1058482093FFE7BFF2F5DDD7BEF1CE8B16BFFC90002419C8B6172BBD2140606681F5AB9700AC3F067A406011819CE967F23FD758B6A5CCB9EDD61320B02D0109';
wwv_flow_imp.g_varchar2_table(22) := 'C0B6C65334044E0A6462CF99FEC98D072B5326650F56794B80C00C022D542901686114F481C08C0299D033B1D73691B2D9A7B6BC720408F4292001E873DCF49A40954026F24CE855850F0A659FEC7BB0CA5B0204261368A32209401BE3A017042617C804';
wwv_flow_imp.g_varchar2_table(23) := '9E89FCD68AB36FEAB8757FFB1120D0B68004A0EDF1D13B02370964E2CE047ED3CE073BA58ED475B0CA5B0204EE1468657709402B23A11F042612C8849D897BA2EA76A92B754E559F7A081068434002D0C638E805814904325167C2AEA9EC3DAFFEC02E4B';
wwv_flow_imp.g_varchar2_table(24) := '4DD9D499BA6BCA2A4380C0258176B64900DA190B3D2170974026E84CD4359564E27FED036FECB2BCE72111A8D92775A78D9AB2CA1020D0BE8004A0FD31D2430245814CCC99A08B051F0A64C2CFC4FFF0F6F15FDE67DDE387C28FB491B60AC56C2640E08C';
wwv_flow_imp.g_varchar2_table(25) := '404BAB25002D8D86BE10B84120137226E69A5D33D167C23F2E9B75D976BCFED4E7B495364F6DB38E00817E042400FD8C959E12782290893813F2930D27566482CF447F62D3E3AA6C4B99C70F851F69336D178AD94C80C04B026D7D9000B4351E7A43A05A';
wwv_flow_imp.g_varchar2_table(26) := '20137026E29A1D32B167822F954D99942D95CBF6B49D3EE4BD850081FE042400FD8D991E13D865E2CD045C4391093D137B4DD99449D9EC93F7A5257D485F4AE56C274060B76BCD4002D0DA88E80F81824026DC4CBC85628F9B339167427FFC70C58FEC93';
wwv_flow_imp.g_varchar2_table(27) := '7D6B76495FD2A79AB2CA1020D08E8004A09DB1D013024581B7BFF9CEE31FE629167C2890093C13F9C3DB9BFE65DF1FF9F19FACDA374940FA5655582102430AB417B404A0BD31D12302270532C17EFE2B5F3FB9ED786526EE4CE0C7EBAFFDFCBEF7FFC42E';
wwv_flow_imp.g_varchar2_table(28) := '75D5EC97BEA58F3565952140607D0109C0FA63A00704AA0432C1D614CC849D89BBA66C4D99D4953A6BCAA68F92801A2965461368315E09408BA3A24F048E043EF756DD997F2EFB67C23EDAFDEE8FA93375D754E479801A256508AC2F2001587F0CF480C0';
wwv_flow_imp.g_varchar2_table(29) := '45814CFE5FFBC63B17CB646326E8292EFBA7AE534BEA4E1BA7B61DAE4B5FD3E7C375DE13185BA0CDE825006D8E8B5E117814C8D97426D4C70F851F3FF4DAEB8512F76FAE6D237D4EDFEF6F510D0408CC252001984B56BD04EE14C8049AA7EB6BAA79FDE7';
wwv_flow_imp.g_varchar2_table(30) := '7F71F75DDFF76A4DD1BBCAA48DB4555349FA9E186ACA2A4360CB02ADC62601687564F46B68814C9C99406B10F2805E26E69AB25394495B69B3A6AEC4E0A1C01A2965082C2F200158DE5C8B048A0299388B851E0A6422CE037A0F6F17FD9736D3764DA37E';
wwv_flow_imp.g_varchar2_table(31) := '33A0464999ED0AB41B9904A0DDB1D1B341056A1FA0CB049C89782DA6B49D3ED4B49F2B1A35E594214060390109C072D65A225014C8449907E84A0533F166022E959B7B7BFA50FB9B01896DEEFEA89F406B022DF74702D0F2E8E8DB500299206B2EFD67C2';
wwv_flow_imp.g_varchar2_table(32) := 'CDC4DB0A4EEDAF0726B6C4D84ABFF583C0E8021280D18F00F1372190893113644D6732E1D6945BB24CEDAF0726460F052E3932DA5A57A0EDD625006D8F8FDE0D229089B126D4DA5FC1ABA96BCA32F9CD80DABEE5A1C029DB56170102B70948006E73B317';
wwv_flow_imp.g_varchar2_table(33) := '81C90472F65F5359EEFB67A2AD29BB4699F42D7DAC69BBF641C79ABA9421D0AA40EBFD9200B43E42FAB769814CFE3567FF99585BBAEF7F6E50D2C7F4F5DCF6FDFA3CE898D8F79FBD1220B0BC80046079732D127814C8BDF09AC9BFB587FE1E3B7FE14792';
wwv_flow_imp.g_varchar2_table(34) := '80F4F94291C74D893D068F1FFC20B03981F6039200B43F467AB85181DA7BE1B50FD8B5C454DB6757015A1A357D194D400230DA888BB70981DA892F97D3736FBD894E5FD189F4397D2FEDE2564049C8F65E057AE8B704A08751D2C74D0964F2CFE5EF5250';
wwv_flow_imp.g_varchar2_table(35) := '99407339BD54AED5EDE9BB5B01AD8E8E7E11D8ED24008E02020B0BD44CFEE95226D0BCF6BCD4FECD82DADB213D5BE8FB48027DC42A01E8639CF472230239FBAF092567FF35E57A2853FBF701FC6A600FA3A98F5B1290006C6934C5D2B44026FF9AB3FF4C';
wwv_flow_imp.g_varchar2_table(36) := 'FE5B38FBDF0FC635CF03F8AD80BD9AD79E057AE9BB04A09791D2CFEE056A26FFDC33DFD2E4BF1FB4C494D8F69FCFBDBA15704EC67A02D30B4800A637552381270239FB7FB2F2C48ADA7BE627766D7E55EDAF06BA15D0FC50EAE045817E364A00FA192B3D';
wwv_flow_imp.g_varchar2_table(37) := 'ED5420937FCDD97F2EFD771A6255B7732BA0E67980FC6AA05B0155A40A11B84B400270179F9D0994056A27FF5C262FD7D6778924016E05F43D867A7F59A0A7AD12809E464B5FBB13C8D97F4DA74798FCF70EB5B7396AEDF6F57A2540E03A0109C0755E4A';
wwv_flow_imp.g_varchar2_table(38) := '13A816C865ECDAB3FFEA4A3752B0E67647EC62B89190853184405F414A00FA1A2FBDED48E0ED6FBC53EC6D26C291CEFEF72089B9E65680AB007B31AF04A61790004C6FAA4602BB4C5C39832D51BCF2FDAF968A6C767BCD6F05782070B3C3BFC9C07A0B4A';
wwv_flow_imp.g_varchar2_table(39) := '02D0DB88E96F170235937FCEFEF3505C1701CDD0C9C41E8352D549A64A656C2740E07A0109C0F566F6207051A076C2CA65F08B150DB0B1C62057016A4D07201362B302FD754C02D0DF98E971E302B567FF8D87B158F76AFE36404C3D10B8D89068681001';
wwv_flow_imp.g_varchar2_table(40) := '09C020032DCC65046ACE5473D9BBE6CC77991EAFDF4A6E05782070FD71D083FB047ADC5B02D0E3A8E973930299FC73A65AEA9CC9FFA99007029F9A5843606E0109C0DCC2EA27702090B3FF838FDE3E17C855801A9B2459CF77F142A021813EBB2201E873';
wwv_flow_imp.g_varchar2_table(41) := 'DCF4BA31814C4CCEFEEF1B945C1929DD0AC803819E05B8CFD9DE04F6021280BD845702330BD49CE1CEDC85E6ABAFB9159064ABF940747028815E839500F43A72FADD8C4026A49AB3FF2F7EE693BB8FFDFEEF5A2E187CEA8FFFA838AEAE02148914205025';
wwv_flow_imp.g_varchar2_table(42) := '2001A8625288C079819AC9FFFCDEB6DC2290A4EB96FDEC43607A817E6B9400F43B767ADE8014361A7000001000494441548089689D417015601D77AD6E4B4002B0ADF114CDC202CEFE17063F684EF27580E1ED6A023D372C01E879F4F47D550113D0AAFC';
wwv_flow_imp.g_varchar2_table(43) := '3B5701D6F5D77AFF021280FEC750042B09F875B495E00F9A95841D6078BB8240DF4D4A00FA1E3FBD5F4920134FCE40576A5EB3CF05320612B1E7185E085C292001B8124C710204DA124832D6568FF4661481DEE39400F43E82FABF8A40E9E1BFD77FE997';
wwv_flow_imp.g_varchar2_table(44) := '776FFCC6472C1318FCE04FFCED8B63EC2AC0451E1B099C1590009CA5B181C069819A33CEEF79FFCF9CDED9DAAB057EF4EFFF93E23E356352AC4401025709F45F5802D0FF188A6061819AB3FFEFF8D19F5AB857DB6D2E96355701B62B203202F3084800E6';
wwv_flow_imp.g_varchar2_table(45) := '7155EB46059C69AE33B0AE02ACE3AED5F3025BD82201D8C2288A613181D2D97F3AF2EADFFD4779B14C28507315A0666C26EC92AA08742F2001E87E0805B09440CDD97F1EFE5BAA3FA3B5537315C0AF048E7654AC15EF36DA95006C631C45D18880B3FFF9';
wwv_flow_imp.g_varchar2_table(46) := '06A2E62A404D92365F0FD54CA02F0109405FE3A5B72B0A942E313BFB9F7F70DEFBDACF5E6CC4AF045EE4B1712281AD542301D8CA488A6356819A334B67FFB30EC163E535BF5EF9F637DE792CEB07010297052400977D6C25F028E0ECFF9161F51F35B701';
wwv_flow_imp.g_varchar2_table(47) := '3C07B0FA306DBC03DB094F02B09DB114C94C023567FF3335ADDA1302A58701DD0638816615811302128013285611B856C0E5FF6BC56E2F9FAB00A5BD256D2521DB6F15D8D27E12802D8DA658661170F97F16D6BB2AF59701EFE2B33381470109C023831F';
wwv_flow_imp.g_varchar2_table(48) := '044E0BD49C493AFB3F6D37E7DAD26D80B4ED59802858A615D8566D12806D8DA7681616F0AB7F0B833F6F2EB7014A57016A92B7E7D5792130A4800460C8611774AD40E9F27F6D3DCA4D2F50BA0A908701A76F558D230B6C2D7609C0D646543C9309D49C41';
wwv_flow_imp.g_varchar2_table(49) := 'F672F9FF2FBFF0895D96CFFCE6AFEEF6CB877FE583BB2CFBCF6FFEE1EFECB24C06387345B90A506AC26D809290ED230B4800461E7DB1DF2550BA047D57E513ED9C093D13FC477FFD43BB2C5FFAF49FEEF6CBBE89FDE74FFDDE6FEDB22429F8D8AFBDD145';
wwv_flow_imp.g_varchar2_table(50) := '32501A839A246EEFE095C06581ED6D95006C6F4C45349140E9F27FE9CFD24ED48D9BAAC9C49F893C137A26F86B2BC9E5F3EC9B3A52D7B5FB2F55DE6D80A5A4B5B3450109C01647554C770BD49C39B678F93F97F9336967F2BE1BE17905A92B75B69C083C';
wwv_flow_imp.g_varchar2_table(51) := 'EFEAC917B7014EB25879A5C0168B4B00B638AA629A5DA074E979F60E9C682013742EF39FD834C9AA2402696392CA26AA24CF0194C6A226999BA83BAA21D0958004A0ABE1D2D9A5047ABBFC9F893913F4DC3E69236DCDDDCE35F5BB0D708D96B2B7096C73';
wwv_flow_imp.g_varchar2_table(52) := '2F09C036C755547708D45C326EE9F27F26E44CCC77847CD5AE692B6D5EB5D3CA856BC674E52E6A9EC0E2021280C5C935D8BA40E97F275BBAE4BC647C998833212FD966DA4A9B693BEFD75E6A6E03ACDD47EDF72DB0D5DE4B00B63AB2E29A4DA095A7FF33';
wwv_flow_imp.g_varchar2_table(53) := '016722AE0DF4BD3FFC3777597EFA1FFCE35D969FFBA7FF629725EFDFFF813776596AEB4AB9B49D870EF3BEF5C57300AD8F90FEAD21200158435D9B4D0B94EEFFB7D2F94CC0357DD94FFAAFFDBD7FB8CBF29DAFFE8D5D96FDBE79FFEA4F7E70972509C135';
wwv_flow_imp.g_varchar2_table(54) := '89C09C0F1DEEFB57F3EA39801A25656E13D8EE5E1280ED8EADC86E10A8B957DCC2FDFF9CFDD78497C97F3FE9D7944F996B1381DABEA4EEB996DC0628D55D33B6A53A6C27B0250109C09646532C770BF472FFBFE6EC3F67F299FC6F454922903A4AFBD7F4';
wwv_flow_imp.g_varchar2_table(55) := 'A554C714DB4BCF6694C6768A3EA8637B025B8E4802B0E5D115DBD502A5B3C416EEFFD79C7167E2CE047E35C0D10EA92357118E563FF958D3A7273B4DBCA23436A5B19DB83BAA23D0BC8004A0F921D2C12505F227702FB5F73DEFFF994B9B17D95673C69D';
wwv_flow_imp.g_varchar2_table(56) := '897BAACEE42A42290978EBB31F9FAAB99BEB298D4D696C6F6ED88E1B16D8766812806D8FAFE8AE10A83943ACB9D77C4593B314CDD9FFD415FFF0CFFEC2C52AF3FF1B58FB37026AC6A6668C2F066A23810D09480036349842B94FA0748FB8748FF9BED6EB';
wwv_flow_imp.g_varchar2_table(57) := 'F6AEB9D43EE5D9FFBE57F94D81D255807DD9355F5B18A335E3D7F6B4025BAF4D02B0F51116DF6402A57BCC9335744745739CFDD776E70B7FF0DBB545572BE7EF01AC46AFE1060524000D0E8A2EAD23D0C3E5E135EFB5976E03AC336A2FB75AFA7B002F97';
wwv_flow_imp.g_varchar2_table(58) := 'F689C02581ED6F93006C7F8C455829507A48AC85DFFF2F85F2CA0FFE48A9C8D0DB4B633C348EE0871390000C37E4023E25D0C3D97FFA9D87EDF27A6EC9BDFA73DBEE5D5FAABBD4B77BDBAFD9FF3B7EF4A78AC57A19EB62200ACC2A3042E512801146598C';
wwv_flow_imp.g_varchar2_table(59) := '45811E1E002C06A1C0A38007011F19FC205014900014891420B0DBB5F200606972FBFA9B7F3EDB7095EA2EF56DB68E1D555C1A2B0F021E81F97842608C55128031C65994050197850B400F9BDFFED2171F7EB6FFAFF40781DA8F400F092C23200158C659';
wwv_flow_imp.g_varchar2_table(60) := '2B8D0B941E0EEB6552F98B8FFF97D5A44B67DEAB75ECA8E1D2581F15F7714081514296008C32D2E2BC4BA0E6E1B2BB1AA8DC79CD5F73FBFC9F7CB8B297EB16AB192B577CD61D23ADB721200168631CF4624581D264D0CABDED1AA2B7FEE2BFEF4AF7EA6B';
wwv_flow_imp.g_varchar2_table(61) := 'EA392EF3E6273F72BCEAC9E7967E4DB2A7317B0269C5CA02E3342F011867AC457A46A0F41B0067765B6575CE6E4B93DB1CB7014A67FFEFF9B1BFB58A87460910B85D400270BB9D3D071168EDDE76A93FB90AF0D9FFFC1F261B9D9AB3FF1F7AFDEF4CD6DE';
wwv_flow_imp.g_varchar2_table(62) := '1415958C7A4AFAA6F05047BDC048252500238DB6584F0A946E019CDC69C5953597DA9304D44CDCA5305247E9EC3F75D4F429E5965A4A0F6DF636E64BB969672C0109C058E32DDA1B044A93C90D55DEBDCBEBBFF4CBC53A327167022F163C5320571152C7';
wwv_flow_imp.g_varchar2_table(63) := '99CD2F56D7F4E545616F08342D3056E72400638DB7684F08947E2D2CF7DD4FECB6EAAADA33EE4CE01FFD77FF6A774D2290870833F9E72A424D90B57DA9A96BA932A5315FAA1FDA21B0A68004604D7D6D13B843E0E7FEF9BFADDEFB3011483290497EBF73';
wwv_flow_imp.g_varchar2_table(64) := 'DE67C9A49FE5CFFEE3BFDFD54EFEAD9EFDB798B4EDBDBDB62B305ACF2400A38DB8785F12E8F95E7026B96B27E024025932C9E7CA4096BCCF92493FCB4B40173EA4ED1ECFFEF721F53CF6FB18BC12B8474002708F9E7D372F50FA95BBB501320167225EBA';
wwv_flow_imp.g_varchar2_table(65) := '1F69336D2FDDEE35EDB53E76D7C4A2EC1202E3B52101186FCC45BC31814CC49990970A2B6DA5CDA5DAD30E0102F3084800E671556B2702A5DF072FFD3E792B616642CEC43C777FD246DA9ABB9D25EA2F8DFD127DD0463B0223F6440230E2A88B79930299';
wwv_flow_imp.g_varchar2_table(66) := '983341CF155C1E3A4C1B73D53F75BDBD246F53C7AD3E02B50212805A29E50874209009FA8DDFF8C86ECA442075A5CE3C74D8014175173D04584D3540C1314394008C39EEA27E2EB0D549E0DE44200FD0ED27FED4F59CABAB9716FF805357803ABB790109';
wwv_flow_imp.g_varchar2_table(67) := 'C0E6875880F708F43E8964F2CED97B964CE85932B967D9BBE4FD7EC965FE2C3FFECFFECD2EFBEECB7825B06581516393008C3AF2E21E4E20137A964CEE59921464C9FBFD92CBFC5986C311308101052400030EBA9009102040602F30EEAB0460DCB11739';
wwv_flow_imp.g_varchar2_table(68) := '010204080C2C20011878F0854E800081D105468E5F0230F2E88B7D57FABFC2B91FDEEF41521ABBD2D8F71BB99E13A8139000D4392945800001029B13183B2009C0D8E32F7A020408101854400230E8C00B9B000102A30B8C1EBF0460F42340FC04081020';
wwv_flow_imp.g_varchar2_table(69) := '30A4800460C8611734010204461710BF04C03140E082C05F7EE11317B6DAD4B280B16B7974F4AD050109400BA3A00FAB097CF7B77FEB6A6D6B980081F504B4BCDB49001C0504080C2920F91B72D8057D20200138C0F096000102044610106304240051B0';
wwv_flow_imp.g_varchar2_table(70) := '1020B03981AF7EFEBF6D2E2601119852400230A5A6BA36276012D9DC900A88C00EC1330109C033073F0910204080C050021280A1865BB00408EC055EF936BF01B2B718EB55B47B0109C05EC2EB9002268121875DD004083C0848001E10FC23704EE0ADCF';
wwv_flow_imp.g_varchar2_table(71) := '7EFCDC26EB1B1730768D0FD04ADDD3ECBB021280772DBC1B50E0157F0868C0511732010211900044C14280C0700292BFE1867CB7DB89F950400270A8E13D8123812F7DFA4F8FD6F8D88B80B1EB65A4F4732D0109C05AF2DA6D42C043804D0CC32A9D30F6';
wwv_flow_imp.g_varchar2_table(72) := 'ABB0AFDAA8C65F169000BCECE113812702FEAF724F489A5F61CC9A1F221D6C404002D0C020E8C27A026F7FF39DF51AD7F26C02357FC1D1D8CFC6DF68C5BA752C20013816F17918814C009FFFCAD78BF1D64C26C54A14684E20639F63A0B98EE910818504';
wwv_flow_imp.g_varchar2_table(73) := '24000B416BA62D817CF16702A8E995DF27AF51EAB34C8E811C0B7DF65EAFAF1150F6A98004E0A989351B17C8177EBEF8371EE6D0E15D93B4E558C831313498E0871490000C39ECE3069D2FFA7CE15F23E0D7C9AED16AA3ECB563966322C7461BBDD78BE9';
wwv_flow_imp.g_varchar2_table(74) := '05D4784A4002704AC5BA4D0AE40B3E5FF49B0C4E50770BE4D8C8317277452A20D0898004A09381D2CDFB04F2C59E2FF85B6BF16B65B7CA2DBFDF3D63956324C7CAF2BDD6E29C02EA3E2D200138ED62ED8604F2859E2FF60D85745728FFEFCF3FB1FBCC6F';
wwv_flow_imp.g_varchar2_table(75) := 'FEEAEE63BFF6C6EEC3BFF2C1DD9B7FF83B77D5D7DACEF7FED6468E951C33ADC5A53F04A61690004C2DAABEA604F2459E2FF47B3B75EFA4726FFB53EEFF5FFFF58776B947FEB56F3CFB1B089FFABDDF7A4C0492184CD94ECF75E598C9B1D3730CFABE17F0';
wwv_flow_imp.g_varchar2_table(76) := '7A4E4002704EC6FAEE05F2059E2FF22902B9E6A9F229DA9BAB8E4B67FB9FFB4FBF3D57B35DD69B6327C750979DD76902150212800A2445FA13C81777BEC06B7BFE233FFE93B545BB2E97B3FD7301E4AAC0B96D3DAD2F256BEF79F507AAC3C9319463A97A';
wwv_flow_imp.g_varchar2_table(77) := '07059B13D0A1F3021280F336B6742A902FEC7C71D776FFF59FFFC5DD2BDFFFEAC5E25B991C2F06B9918DA5B1FAA1D75EDF65CC6BC3CDB19463AAB6BC72047A119000F43252FA5925902FEA7C6157157E289489E0BBBEEFD55D96878F17FFDDF374F9C58A';
wwv_flow_imp.g_varchar2_table(78) := '6D9C4CE0D22D8E7D2319EB2C19FBFDBAD26B8EA91C5BA572B6B726A03F9704240097746CEB4A205FD0F9A2AEED7426804C04FBF2A54BC35B7A10701FF368AF87B77A32F639066A0D726CE518AB2DAF1C81D6052400AD8F90FE5509E48B395FD055851F0A';
wwv_flow_imp.g_varchar2_table(79) := 'E58B3F13C0C3DB17FFBEF7BDEF7BF1FED49BD2BDE553FB58B7ACC0B563946320C7426D2F738CE558AB2DAFDCBA025ABF2C2001B8EC636B0702F942CE17736D57F3859F2FFEE3F29E033816E9EF73E9FEFFA931CEB19063A236DA1C6B39E66ACB2B47A055';
wwv_flow_imp.g_varchar2_table(80) := '010940AB23A35F5502F922CE177255E18742F9A2CF17FEC3DB27FFCEAD3F2CE83980438DB6DED78CCDB931CEFA1C1BB511E598CBB1575B5EB93504B45912900094846C6F56205FC0F922AEED60BEE0F3457FA9BCE7002EE9B4BDADF48C46696C736CE418';
wwv_flow_imp.g_varchar2_table(81) := 'A98D32C75E8EC1DAF2CA11684D4002D0DA88E84F9540BE78F3055C55F8A150BED8F305FFF0F6E23FCF015CE4697A63E9FE7F696C135C8E911C2B795FB3E418CCB1585356996505B456169000948D94684C205FB8F9E2ADED56BED0F3C55E53FED43DE2C3';
wwv_flow_imp.g_varchar2_table(82) := 'FD4AF7980FCB7ABFAC40696C4A63BBEF6D8E951C33FBCFA5D71C8B39264BE56C27D09A8004A0B511D19F8B02F9A2CD17EEC542071BF3459E2FF4835517DFD694ADB9D77CB1111B2717A819939AB1DD772C6573ECEC3F975E734CE6D82C95B37D2901EDD4';
wwv_flow_imp.g_varchar2_table(83) := '0848006A94946942205FB0F9A2ADED4CBEC0F3455E5B7E5FAE74AF785FCE6B3B02F7DEFF3F15498E9D1C43A7B6017F292B00001000494441549D5A976333C7E8A96DD61168514002D0E2A8E8D349817CC19EDC706265BEB8F3057E62D3DDABBEF007FEA7';
wwv_flow_imp.g_varchar2_table(84) := '3977232E5C41CDFDFF535DCA319463E9D4B653EBAE39464FED6FDD34026AA9139000D43929B5B2C0E7DEFA7A750FF2859D2FEEEA1D8E0AE66FC51FAD7AE963E95EF34B857D5844E0D2FFE4E8DE0EE458CA31555BCF35C76A6D9DCA11984340023087AA3A';
wwv_flow_imp.g_varchar2_table(85) := '2715F8D257BFB9FBDA37DEA9AA335FD4F9C2AE2A7CA650CDFE35F79CCF546FF5C4023563F1BEF7FFC45DADE698C8B15553498ED51CB33565959943409DB50212805A29E55611C817E9971F12809AC6F3059D2FEA9AB2A532A5E700DC0628092EB77D8EFB';
wwv_flow_imp.g_varchar2_table(86) := 'FFA77A9F632BC7D8A96DC7EB72CCE6D83D5EEF3381960424002D8D86BEBC24902FD07C91BEB4F2CC877C31E70BFACC66AB372C50BAFC7FEBFDFF536439C672AC9DDA76BC2EC7AE87028F55E6FFAC857A010940BD95920B0BE40BB4A6C97C21E78BB9A66C';
wwv_flow_imp.g_varchar2_table(87) := '6D999AE7006A2E3DD7B6A7DC6D02356370EFE5FFE39EE558CB3177BCFED4E73C1428093825635D0B0212801646411F9E08E4ECFFC9CA132BF2BF77CD17F2894D77AD4A9D6E03DC45B8C8CE4B5DFE3F0E26C7478EBDE3F5A73ED71ECBA7F6B5EE5A01E5AF';
wwv_flow_imp.g_varchar2_table(88) := '1190005CA3A5EC2202F9C2AC39FBCF17F0D46777870196AE021C96F57E1D81252FFF1F4798632FC7E0F1FAE3CF7928D0558063159F5B109000B4300AFA70B540BE78F3057CF58E13EE905F07ACB9043D6193AA3A10A8B19FFB1849FDA52B45E97292DABC';
wwv_flow_imp.g_varchar2_table(89) := '5AE61550FB75021280EBBC949E59205F94A5B3FF7CE1E68B77E6AEEC7299376D5D6AC76F035CD29977DB5A97FF8FA37AED036FEC4AC789AB00C76A3EB7202001686114F4E1854069F24FC1252FCD97DACA5580F4C9B2BCC09A97FF8FA32D1D27299FE436';
wwv_flow_imp.g_varchar2_table(90) := 'AF96B904D47BAD8004E05A31E56713A8F982CCA5FF9C99CFD6891B2AAEB9147D43B576B920F0E61FFECE85ADCF362D7195E8594BBBAAAB45AE02ECB5BCB6222001686524F4635773F6BFE4977A8624C946E9F2AEDB00916A6B49A2B8748F5C05585AFCE5';
wwv_flow_imp.g_varchar2_table(91) := 'F67CBA5E400270BD993D6610A8794A7A8D2FF5845AFA62771B204ACB2EA5CBFFCBF6E6596B35C9A2AB00CFACFC6C434002D0C6380CDF8BB72BFED6FFD267FFFB41C917FBFEFDB957B701CEC94CBFBEB5CBFF8711E681C0C3CFA7DED7DCEA3AB59F759704';
wwv_flow_imp.g_varchar2_table(92) := '6CBB454002708B9A7D2617285DFE5FEBEC7F1FA8DB007B89F65FD73E56D66EBFFD11D2C356042400AD8C847E5C1478E5FB5FBDB87DEE8D35B7015C05987B149ED5DFE2E5FF673D7BF6B374ACBA0DF0CC69CA9FEABA4D4002709B9BBD2614A8B9245A7319';
wwv_flow_imp.g_varchar2_table(93) := '7EC22E3DA9AAA6FDD2EFA53FA9D48AAB055ABEFCBF0F26C74AE98AD1BEAC57026B0A4800D6D4D7F6A340E901C0562EA996BED45B3F337DC4EEFC47C9B89563A5C45C93F496EAB07D2FE0F5560109C0AD72F69B4C20974427AB6CC68A4AB701D2B4DB0051';
wwv_flow_imp.g_varchar2_table(94) := '9867A939FB9FA7E5EB6B2D1D2BBD1CF3D7476E8F9E0424003D8DD606FB5A3AFB4FC86B3DFD9FB60F979A4BBBFE26C0A1D8B4EF6BCEFE5B3A564AD1D71CFBA53A6CDFED18DC2E2001B8DDCE9E1308947EFDAFB54BBAA533BBFC4D0057012638308EAAE8E9';
wwv_flow_imp.g_varchar2_table(95) := 'EC7FDFF5D22DA37D39AF04D6129000AC25AFDD2E055C056877D85A39FBDF0B7DEF7BDFB77F7BF2B594FC9EDCC9CA23011FEF119000DCA367DF21055C05587ED86B2EFF2FDF2B2D12E85B4002D0F7F875DFFBD27DD0D2EF54AF0190AB00A5763D0B5012AA';
wwv_flow_imp.g_varchar2_table(96) := 'DF5E73F9BFB5B3FF44573A764BC77EEAB05C16B0F53E0109C07D7EF61E54A0F46C429E05189466F2B09DFD4F4EAA42028F02128047063FD61228FD3A54CDD9F61A7DAF39E3AC39735DA3EF3DB559635833163DC5ACAFB502CADD2B2001B857D0FEC30A94';
wwv_flow_imp.g_varchar2_table(97) := '9EF22E9DB90E0B7745E025C3D295982B9A9ABC6829792D25BF93774885048E04240047203E12A815283D0C987A6ACE6053CEF254A0C6CED9FF53B751D688F37E0109C0FD866A1854206778AE02CC37F83D9FFDCFA7A26602D3094800A6B354D38002AE02';
wwv_flow_imp.g_varchar2_table(98) := 'CC33E8CEFEE771DD4EAD22994240023085A23A8615A8BD0AE0AF035E778838FBBFCE4B6902B70848006E51B30F8103819AAB00FE2EC00158E16DCDD97FA10A9B372E20BC69042400D338AA6560819AAB00F9BB00AE02940F924CFE3567FF1EFE2B5B2A41';
wwv_flow_imp.g_varchar2_table(99) := 'A02420012809D94EA042C055800AA4898A94FEC2DE44CDA8A659011D9B4A40023095A47A86167015E0FEE1AF3DFB8FF5FDADA981000109806380C04402AF7DE08D624D9E05384F54BAF49F3D5DFA8FC2D88BE8A71390004C67A92602BBD25FA6F32CC0E9';
wwv_flow_imp.g_varchar2_table(100) := '832467FFA7B7BCBBB664FB6E49EF0810A8119000D4282943A0522067A8A53F0EF4D15FFF50656DE3142B9DFDC734B6E38888F4B480B5530A4800A6D454178107819A07026BCE781FAA1AE25F8DC5F7BEF77D43580892C09202128025B5B53584401E52CB';
wwv_flow_imp.g_varchar2_table(101) := '19EBA56073C6EBD7029F09C5E2D9BBD33F73E9DFD9FF699BD1D68A775A0109C0B49E6A23F028507315C00381BB5DCDD9BFC9FFF190F283C0E4021280C949554860B7CB55809CB95EB2C803813513E0A53A7ADE96D86BCEFE7B8E51DFA71450D7D4021280';
wwv_flow_imp.g_varchar2_table(102) := 'A945D547E0B940CE5CDD0A788E71F492DB1FA5C93FBBC430AF160204A61790004C6FAA46022F04DC0A7841F1D29B9ADB1FA52B282F55E8C3E6050438BD8004607A5335127821905B01A5AB00A3DD0AC8A5FFC4FC02E9C49B4CFECEFE4FC0584560420109';
wwv_flow_imp.g_varchar2_table(103) := 'C08498AA22704AA0E62A402E87E7B2F8A9FDB7B42E3126D6524C26FF92D068DBC53B878004600E557512381078FB7FBD79F0E9FCDB9ACBE2E7F7EE634B6D8CFFF3F39FEE2320BD24D0B18004A0E3C1D3F5F60532917DF1339FACEA682E8BE7F27855E10E';
wwv_flow_imp.g_varchar2_table(104) := '0B25B6C458D3F598C5AEA6AC32DB1710E13C021280795CD54A6097092C13D93514B93C9ECBE4D7ECD343D9C494D8AEE96BEC6278CD3ECA1220502F2001A8B7529240B5C067FFE4C3BB4C60D53B1C14ACBD4C7EB04BF36F6F8D2986B16C3E401D9C5140D5';
wwv_flow_imp.g_varchar2_table(105) := '73094800E69255EF9002FFF77FBFB9CB84F57FDEFCF2CDF1E732792E97DF5C41633B2696C4746BB762F9B1DFFFDD5D6C6FADC37E04083C1590003C35B186C04D0299A03EF5C77FB4CB84755305073BE5727926CE83555DBE4D0C89658ACEC7D62D812924';
wwv_flow_imp.g_varchar2_table(106) := 'FBAA436FE7139000CC67ABE6810432316582AA0DF9BBBFFD5B8B453371E6DE79B160A305D2F7C43065F7724B20D653D6A92E02A30A4800461D79714F2690092913536D8599FC7FECBDDFB9CB6B699F5BEF9D97EA5D62FB477FFD43C56662F0D37FFD95DD';
wwv_flow_imp.g_varchar2_table(107) := '0F7CCFB715CBEE0BC43AE6FBCF5EB72C20B63905240073EAAA7BF30299883221D5069A892E937FCAFF60C5A4977BE79FF9CD5F4DF1AE96DA3E1F5AC4A636C898C7BEB6BC7204083C1590003C35B1864095401EF6CB445455F8A15026B8C349FF956FFBD6';
wwv_flow_imp.g_varchar2_table(108) := 'AA33DF2401B997FE504517FFD2D7F4B9D4D9781C9689CDF1BAC3EDC7EF639F31385EEFF376044432AF8004605E5FB56F50200FFB65E2B9E661BFF7FFB5EFDC65823BE6C8BA9A492FF7D233B11EEFDFDAE7F4317D2DF52B3127F6E37259976DC7EBCF7DCE';
wwv_flow_imp.g_varchar2_table(109) := '18F80D81733AD613B82C2001B8EC632B81970432F9E761BF4C3C2F6DB8F021937FCEF6CF15C9A4977BE1E7B6EFD76762CD8375FBCFADBDDE3BF9EFE38947CCF69F6B5E33266E09D448F554465FE7169000CC2DACFECD086482C944531B5026F53CE07669';
wwv_flow_imp.g_varchar2_table(110) := 'F2DFD795496FFFFED26B1EAC6B3509488272A9EFFB6D35B1C62C7631DCEF577ACD2D818C51A99CED04083C1390003C73F093C045814C2C99602E163AD898896BFF80DBC1EAB36F33E1D55EFA6EF137036A1FFABBF6CC3E86B52EC1CD1865ACF2DED2B780';
wwv_flow_imp.g_varchar2_table(111) := 'DECF2F200198DF580B9D0B6442C9C4521B4626AC4C5CB5E5F7E572669C7DF79FCFBDE601BB5C6E3FB77DE9F5E94BFA546A37B125D129953BDE5EEBB2DF2F639531DB7FF64A80C0690109C069176B093C0AE461BF4C288F1F2A7E6492CB845551F46491EC';
wwv_flow_imp.g_varchar2_table(112) := '9BAB0727371EACCCE5F64CBC07AB56799B3EA42FA5C6A770491DA576F6DB336619BBFD67AFBD09E8EF120212802594B5D19D401EF6CB0472EDC37E99C0EF0DB6F6EA4126DE5C7A5FE39980B499B6D38752BC4968A670491DD72401193BBF21501A1DDB47';
wwv_flow_imp.g_varchar2_table(113) := '1690008C3CFA623F2990C93F0FFB65023959E0C4CADCDBBEE5F2F689AA1E57A5BEC737851FB9F49E070373269E25137361979B37A7EE2C99F8D366DAAEA9AC36A1A9A92B4940ADCDBEBE8CA55B027B8D3E5EF572190109C032CE5AE944201345268CDAEE';
wwv_flow_imp.g_varchar2_table(114) := 'E6EC364FAB4F39F9A7EDD477CDD96ECEC4B36462FEF0AF7C70776E49DD979673FB657DEACE523BF1A79D6B6248F99A2536318F7D4DF994C92D818C6DDE5B08107826200178E6E027815D26884C14B5149980A63CBB3D6E3767BB734CA0C7EDCCF5397D4F';
wwv_flow_imp.g_varchar2_table(115) := '0C73D51FFBB4515B7FC636635C5B5EB9B504B4BB948004602969ED342D90892113446D2733F16402AA2D7F6BB94CA069EBD6FDD7DA2F7D4EDFE76E3F6DA4ADDA7632C619EBDAF2CA11D8B2800460CBA32BB62A813CEC9789A1AAF043A14C3899781EDE2E';
wwv_flow_imp.g_varchar2_table(116) := 'F22F6DA5CD451A9BA091F4357D9EA0AAAA2AD256DAAC2AFC5028639D317F78EB5F8302BAB49C800460396B2D35269087FD32115CFBB05F269CA543499BD74C724BF76FDF5EFA98BEEE3F2FF59A36D3766D7B1973BF2150ABA5DC560524005B1D59715D14';
wwv_flow_imp.g_varchar2_table(117) := 'C8E49F87FD32115C2CF87C63EEF7E7E9F33C80F67CD5E22FD74E724B7670EF933E2ED9EE615B693B6374B8AEF43EC7805B0225A525B76B6B490109C092DADA6A42205FF8F9E2AFED4C26B7DCEF5F73F2DFF735935C9E80CFD96EFAB55FBFD66BFA9049B7';
wwv_flow_imp.g_varchar2_table(118) := '159F8C517CD2AF5A93DC12C831515B5E39025B1190006C6524C55125902FFA7CE157157E2894893693DBC3DBA6FE251148BF32D9A58F99F0B2CCDDC9B49125937E96F42193EEDCED5E5B7FFA1597DAFD724CE4D8A82DAFDC3C026A5D564002B0ACB7D656';
wwv_flow_imp.g_varchar2_table(119) := '14C8177CBEE86BBB900924136D6DF9B5CAA58F99F0B22421B8B494FA7869DF6C4B1B5932E96729D5B7E6F6B8640C6BFB906323C7486D79E508F42E2001E87D04F5BF4A200FFBE50BBEAAF043A14C1C99401EDEFAD7B140C63063591B428E911C2BB5E595';
wwv_flow_imp.g_varchar2_table(120) := '9B52405D4B0B48009616D7DEA20279D82F5FE8B50FFBA573B9B49D8923EF2DFD0B642CAF490272ACF80D81FEC75D0465010940D948894E0532F9E761BF7CA1D784B0BFB7DDFAA5ED9A5894795920494012BB97D75EFE9463C72D81CB46536E55D7F20212';
wwv_flow_imp.g_varchar2_table(121) := '80E5CDB5B88040BEB8F3055EDB5426FFFDBDEDDA7D94EB4B20895D9E63C858D7F63CB704722CD596578E404F0212809E464B5F8B0239EBCF25FF7C71170B3F2F90CBC399FC9F7FF4B271818C75C6BC36CC1C4B92805AAD5BCBD96F0D0109C01AEADA9C5C';
wwv_flow_imp.g_varchar2_table(122) := '603FF1E7ACBFF6927F3A9189209787F3DE328E40C63C635F1B7192803C172011A81553AE070109400FA3A48F4F0432E167C9D97E966B27FE549809201341DE5BC613C8D8E718B826F27D2290632EC940961C87D7D4A1EC53016BD6119000ACE3AED54A81';
wwv_flow_imp.g_varchar2_table(123) := '9C759D5A32E167C9D97E96CAEA5E14CB036199005EACF06648811C03D7260181CA319764204B8EC353C768D6A5AC8540AB021280564746BF6611C8036099FCF340D82C0DA8B43B8124013926BAEBF8663A2C90B50424006BC96B7771814CFE7900CCE4BF';
wwv_flow_imp.g_varchar2_table(124) := '387DF30DE698C86F08DC7235A0F9E07490C0190109C01918ABB725902FF64CFEDB8A4A34530BE46A408E95A9EB55DF79015BD61390C6A43FBE000008154944415400AC67AFE5050472D69FCBBBF9625FA0394D6C4020C74A8E1989C00606530817052400';
wwv_flow_imp.g_varchar2_table(125) := '17796C9C5B2013F41C6DA4DE7C89E7AC3F9777E768A3C73AE372AEDF26BC776572CC241188499677B74CF76EAE7AA7EBE1123569634D0109C09AFADADEE54B762A864C6E594CFCE7452F795FDA76BEC66D6F8949964CD659A68C36F54E599FBA085C2B20';
wwv_flow_imp.g_varchar2_table(126) := '01B8564CF9490572A675CBC35799E8F74B26FC2C39DBCF923A27EDE4862A8BCDB1771CE3B7A130270F25937596D8C52AC94096D865B9A6C1944F1DD7ECB3D5B2E25A574002B0AEBFD69F0BECBF5CF3055BB364A2DF2F99D4B23CAFCA4B85C0A1771CF955';
wwv_flow_imp.g_varchar2_table(127) := 'A03D2F12ABF865895D969A63765F26E553C7F3EABC10584D4002B01ABD8609102030B280D8D7169000AC3D02DA2740800001022B0848005640D724010204461710FFFA021280F5C7400F0810204080C0E2021280C5C93548800081D105C4DF828004A085';
wwv_flow_imp.g_varchar2_table(128) := '51D0070204081020B0B08004606170CD112040607401F1B721200168631CF48200010204082C2A200158945B63040810185D40FCAD0848005A1909FD2040800001020B0A480016C4D6140102044617107F3B02128076C6424F0810204080C062021280C5';
wwv_flow_imp.g_varchar2_table(129) := 'A83544800081D105C4DF928004A0A5D1D0170204081020B0908004602168CD102040607401F1B7252001686B3CF48600010204082C22200158845923040810185D40FCAD0948005A1B11FD2140800001020B0848001640D6040102044617107F7B021280';
wwv_flow_imp.g_varchar2_table(130) := 'F6C6448F0810204080C0EC021280D9893540800081D105C4DFA28004A0C551D127020408102030B38004606660D5132040607401F1B729200168735CF48A0001020408CC2A2001989557E5040810185D40FCAD0A48005A1D19FD224080000102330A4800';
wwv_flow_imp.g_varchar2_table(131) := '66C455350102044617107FBB02128076C746CF0810204080C06C021280D968554C800081D105C4DFB28004A0E5D1D137020408102030938004602658D5122040607401F1B72D2001687B7CF48E0001020408CC222001988555A5040810185D40FCAD0B48';
wwv_flow_imp.g_varchar2_table(132) := '005A1F21FD23408000010233084800664055250102044617107FFB021280F6C7480F0910204080C0E4021280C9495548800081D105C4DF838004A08751D247020408102030B18004606250D5112040607401F1F7212001E8639CF49200010204084C2A20';
wwv_flow_imp.g_varchar2_table(133) := '0198945365040810185D40FCBD0848007A1929FD244080000102130A480026C454150102044617107F3F0212807EC64A4F0910204080C064021280C9285544800081D105C4DF938004A0A7D1D257020408102030918004602248D5102040607401F1F725';
wwv_flow_imp.g_varchar2_table(134) := '2001E86BBCF49600010204084C22200198845125040810185D40FCBD0948007A1B31FD25408000010213084800264054050102044617107F7F021280FEC64C8F0910204080C0DD021280BB095540800081D105C4DFA38004A0C751D367020408102070A7';
wwv_flow_imp.g_varchar2_table(135) := '8004E04E40BB132040607401F1F7292001E873DCF49A0001020408DC252001B88BCFCE040810185D40FCBD0A48007A1D39FD26408000010277084800EEC0B32B0102044617107FBF0212807EC74ECF0910204080C0CD0212809BE9EC48800081D105C4DF';
wwv_flow_imp.g_varchar2_table(136) := 'B38004A0E7D1D377020408102070A38004E04638BB112040607401F1F72D2001E87BFCF49E0001020408DC242001B889CD4E040810185D40FCBD0B48007A1F41FD274080000102370848006E40B30B0102044617107FFF021280FEC750040408102040E0';
wwv_flow_imp.g_varchar2_table(137) := '6A0109C0D56476204080C0E802E2DF828004600BA32806020408102070A58004E04A30C509102030BA80F8B7212001D8C6388A8200010204085C252001B88A4B610204088C2E20FEAD084800B63292E220408000010257084800AEC05294000102A30B88';
wwv_flow_imp.g_varchar2_table(138) := '7F3B021280ED8CA548081020408040B58004A09A4A410204088C2E20FE2D094800B6349A62214080000102950212804A28C508102030BA80F8B7252001D8D6788A86000102040854094800AA9814224080C0E802E2DF9A8004606B232A1E020408102050';
wwv_flow_imp.g_varchar2_table(139) := '212001A8405284000102A30B887F7B021280ED8DA98808102040804051400250245280000102A30B887F8B0212802D8EAA980810204080404140025000B299000102A30B887F9B0212806D8EABA80810204080C0450109C0451E1B09102030BA80F8B72A';
wwv_flow_imp.g_varchar2_table(140) := '2001D8EAC88A8B00010204085C1090005CC0B189000102A30B887FBB021280ED8EADC80810204080C0590109C0591A1B08102030BA80F8B72C2001D8F2E88A8D00010204089C1190009C81B19A000102A30B887FDB0212806D8FAFE80810204080C04901';
wwv_flow_imp.g_varchar2_table(141) := '09C049162B09102030BA80F8B72E2001D8FA088B8F00010204089C1090009C40B18A000102A30B887FFB021280ED8FB1080910204080C0130109C013122B08102030BA80F8471090008C30CA622440800001024702128023101F09102030BA80F8C71090';
wwv_flow_imp.g_varchar2_table(142) := '008C31CEA22440800001022F0948005EE2F081000102A30B887F140109C028232D4E02040810207020200138C0F096000102A30B887F1C0109C038632D520204081020F0424002F082C21B0204088C2E20FE91042400238DB6580910204080C0730109C0';
wwv_flow_imp.g_varchar2_table(143) := '73082F040810185D40FC63094800C61A6FD1122040800081470109C023831F040810185D40FCA3094800461B71F1122040800081070109C003827F040810185D40FCE3094800C61B73111320408000819D04C04140800081E105008C2820011871D4C54C';
wwv_flow_imp.g_varchar2_table(144) := '80000102C30B4800863F0400102030BA80F8C71490008C39EEA22640800081C1052400831F00C22740607401F18F2A20011875E4C54D80000102430B4800861E7EC1132030BA80F8C71590008C3BF622274080008181052400030FBED00910185D40FC23';
wwv_flow_imp.g_varchar2_table(145) := '0B4800461E7DB113204080C0B002128061875EE004088C2E20FEB105FE0A0000FFFF28EF3F0E00000006494441540300F9E9E8007D98A0880000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(6852390213558787211)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(6852391552972787213)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/security/authorizations/es_conductor
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(7861014400008167488)
,p_name=>'Es conductor'
,p_static_id=>'es-conductor'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT 1',
    'FROM USUARIO_APEX_ESTUDIANTE u',
    'JOIN VEHICULO v',
    '  ON v.DOCUMENTO_CONDUCTOR = u.DOCUMENTO_IDENTIDAD',
    'WHERE LOWER(u.USUARIO_APEX) = LOWER(:APP_USER)')))).to_clob
,p_error_message=>'No tienes permisos de conductor para acceder a esta funcionalidad'
,p_version_scn=>'SH256:M-Z30oj5gE29FfR9pMega-aLb-KDNKCvUhprJrfQRwQ'
,p_caching=>'NOCACHE'
,p_created_on=>wwv_flow_imp.dz('20261026014910Z')
,p_updated_on=>wwv_flow_imp.dz('20261026014910Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6852400766381787256)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(6852400766381787256)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6852401435773787258)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6852401091244787257)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/estudiante_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7826597021154333407)
,p_lov_name=>'ESTUDIANTE.NOMBRE'
,p_static_id=>'estudiante-nombre'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NOMBRE || '' '' || APELLIDOS || '' - '' || DOCUMENTO_IDENTIDAD AS NOMBRE_COMPLETO,',
'    DOCUMENTO_IDENTIDAD',
'FROM ESTUDIANTE',
'ORDER BY NOMBRE, APELLIDOS'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'DOCUMENTO_IDENTIDAD'
,p_display_column_name=>'NOMBRE_COMPLETO'
,p_version_scn=>'SH256:CNXphIMtvGOejw7eOW4NyQld6j3Nu6sMhkMSj4N3Uvo'
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261026025858Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/shared_components/user_interface/lovs/estudiante_nombre_1
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7872208139523654227)
,p_lov_name=>'ESTUDIANTE.NOMBRE_1'
,p_static_id=>'estudiante-nombre-1'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ESTUDIANTE'
,p_return_column_name=>'DOCUMENTO_IDENTIDAD'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:50BTp40VixPU0-YfNFtPN9sGgldhjjuNsdPfk9MJqOI'
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031017Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/shared_components/user_interface/lovs/parada_direccion
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7838384553430760094)
,p_lov_name=>'PARADA.DIRECCION'
,p_static_id=>'parada-direccion'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PARADA'
,p_return_column_name=>'ID_PARADA'
,p_display_column_name=>'DIRECCION'
,p_default_sort_column_name=>'DIRECCION'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:-wfrHTZM9Bz-QNzIzRHVl95PNqEs85hnCsf3bb9Z4YA'
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/shared_components/user_interface/lovs/vehiculo_marca
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7834017909371600635)
,p_lov_name=>'VEHICULO.MARCA'
,p_static_id=>'vehiculo-marca'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'VEHICULO'
,p_return_column_name=>'PLACA'
,p_display_column_name=>'MARCA'
,p_default_sort_column_name=>'MARCA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:E01cct5U7iGshQNC_oPCMzuQpiYaqKGAAZmxtc5isa0'
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(6852391847273787214)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(6852385800527787201)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031017Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7843921366212262636)
,p_short_name=>'Actualizar estado del viaje'
,p_static_id=>'actualizar-estado-del-viaje'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7872202770878654155)
,p_short_name=>'Cancelar solicitud'
,p_static_id=>'cancelar-solicitud'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031017Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7868749952300421768)
,p_short_name=>'Consultar viajes disponibles'
,p_static_id=>'consultar-viajes-disponibles'
,p_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>15
,p_created_on=>wwv_flow_imp.dz('20261026023133Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023133Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7838398349930760424)
,p_short_name=>'Gestionar solicitudes'
,p_static_id=>'gestionar-solicitudes'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004119Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7848876467374968497)
,p_short_name=>'Historial de viajes'
,p_static_id=>'historial-de-viajes'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20261026011600Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011600Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6852386063680787202)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7867794268915334732)
,p_short_name=>'Listado de pasajeros'
,p_static_id=>'listado-de-pasajeros'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
,p_created_on=>wwv_flow_imp.dz('20261026021702Z')
,p_updated_on=>wwv_flow_imp.dz('20261026021702Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7834013556330600485)
,p_short_name=>'Publicar viaje'
,p_static_id=>'publicar-viaje'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20261026001440Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001440Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7861213896628203978)
,p_short_name=>'Registrar pasajero'
,p_static_id=>'registrar-pasajero'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7826587787679333162)
,p_short_name=>unistr('Registrar veh\00EDculo')
,p_static_id=>unistr('registrar-veh\00EDculo')
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20261025233007Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233007Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7870598400638512072)
,p_short_name=>'Solicitar cupo'
,p_static_id=>'solicitar-cupo'
,p_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>17
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024636Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(6852386777822787203)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>4194319937007846
,p_default_page_template=>4075783602716660119
,p_default_dialog_template=>2103835248774687739
,p_error_template=>2104585595298951431
,p_printer_friendly_template=>4075783602716660119
,p_login_template=>2104585595298951431
,p_default_button_template=>4075790603270660137
,p_default_region_template=>4075786578761660127
,p_default_chart_template=>4075786578761660127
,p_default_form_template=>4075786578761660127
,p_default_reportr_template=>4075786578761660127
,p_default_wizard_template=>4075786578761660127
,p_default_menur_template=>2534890969069732905
,p_default_listr_template=>4075786578761660127
,p_default_irr_template=>2103954283454391425
,p_default_report_template=>2542081983073888486
,p_default_label_template=>1612549609962752680
,p_default_menu_template=>4075790987805660140
,p_default_list_template=>4075788786379660133
,p_default_top_nav_list_temp=>2530182346535839887
,p_default_side_nav_list_temp=>2471166859590295591
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2129856781885180476
,p_default_dialogr_template=>4504868307683981366
,p_default_option_label=>1612549609962752680
,p_default_required_label=>1612549789555753698
,p_default_navbar_list_template=>2850970698196720012
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4075791579648660165,2000,'universal-theme',8842.262)
,p_version_scn=>'SH256:_ZA2OCAT0oe8zXeYXS4pqku9eJXOHXBko77-CJUyv6E'
,p_version_scn_master=>'SH256:S3Fh7S4ZMPpy-ID1j0RgxJIrTUyM6ZXOJB4KD7haOtc'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6852385152366787200)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(6852385488347787201)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_last_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Wheels Alpes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_last_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6852400147067787255)
,p_plug_name=>'Wheels Alpes'
,p_static_id=>'wheels-alpes'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Registrar conductor'
,p_alias=>'REGISTRAR-CONDUCTOR'
,p_step_title=>'Registrar conductor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261025225242Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261025231433Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7818889707277108911)
,p_plug_name=>'Registrar conductor'
,p_static_id=>'registrar-conductor'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ESTUDIANTE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261025225244Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225244Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7818895014457108956)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261025225245Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225245Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7818896336352108957)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P3_DOCUMENTO_IDENTIDAD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261025225245Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225245Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7818895526394108957)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_DOCUMENTO_IDENTIDAD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261025225245Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225245Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7818895923761108957)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P3_DOCUMENTO_IDENTIDAD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261025225245Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225245Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7818896755130108958)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261025225245Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225245Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7818891091144108944)
,p_name=>'P3_APELLIDOS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_item_source_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_prompt=>'Apellidos'
,p_source=>'APELLIDOS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025225244Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225244Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7818892603529108945)
,p_name=>'P3_CELULAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_item_source_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_prompt=>'Celular'
,p_source=>'CELULAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025225244Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225245Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7818892283816108945)
,p_name=>'P3_CORREO_INSTITUCIONAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_item_source_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_prompt=>'Correo Institucional'
,p_source=>'CORREO_INSTITUCIONAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025225244Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225244Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7818890264517108943)
,p_name=>'P3_DOCUMENTO_IDENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_item_source_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_prompt=>'Documento de identidad'
,p_source=>'DOCUMENTO_IDENTIDAD'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025225244Z')
,p_updated_on=>wwv_flow_imp.dz('20261025231433Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7818890638823108943)
,p_name=>'P3_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_item_source_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025225244Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225244Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7818891861313108944)
,p_name=>'P3_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_item_source_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_prompt=>'Programa'
,p_source=>'PROGRAMA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025225244Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225244Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7818891400059108944)
,p_name=>'P3_UNIVERSIDAD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_item_source_plug_id=>wwv_flow_imp.id(7818889707277108911)
,p_prompt=>'Universidad'
,p_source=>'UNIVERSIDAD'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025225244Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225244Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7818897186783108958)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7818889707277108911)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registrar conductor'
,p_static_id=>'initialize-form-registrar-conductor'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7818897186783108958
,p_created_on=>wwv_flow_imp.dz('20261025225245Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225245Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7818897531315108959)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7818889707277108911)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Registrar conductor'
,p_static_id=>'process-form-registrar-conductor'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7818897531315108959
,p_created_on=>wwv_flow_imp.dz('20261025225245Z')
,p_updated_on=>wwv_flow_imp.dz('20261025225245Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>unistr('Registrar veh\00EDculo')
,p_alias=>unistr('REGISTRAR-VEH\00CDCULO')
,p_step_title=>unistr('Registrar veh\00EDculo')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261025233006Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026000925Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7826586265714333119)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6852385800527787201)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261025233007Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233007Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7826593927503333400)
,p_plug_name=>unistr('Registrar veh\00EDculo')
,p_static_id=>unistr('registrar-veh\00EDculo')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'VEHICULO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7826599970944333411)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7826601210371333413)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P4_PLACA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7826600494871333412)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P4_PLACA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7826600840461333413)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P4_PLACA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7826601688190333414)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7826595440453333404)
,p_name=>'P4_ANIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_item_source_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_prompt=>'Anio'
,p_source=>'ANIO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7826596409226333406)
,p_name=>'P4_CAPACIDAD_CUPOS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_item_source_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_prompt=>'Capacidad Cupos'
,p_source=>'CAPACIDAD_CUPOS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7826595833166333405)
,p_name=>'P4_COLOR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_item_source_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_prompt=>'Color'
,p_source=>'COLOR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7826596856985333407)
,p_name=>'P4_DOCUMENTO_CONDUCTOR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_item_source_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_prompt=>'Documento Conductor'
,p_source=>'DOCUMENTO_CONDUCTOR'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre || '' '' || apellidos AS nombre_conductor,',
'       documento_identidad',
'FROM estudiante',
'ORDER BY nombre, apellidos'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione un conductor'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233526Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7826594642815333402)
,p_name=>'P4_MARCA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_item_source_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_prompt=>'Marca'
,p_source=>'MARCA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7826595038748333403)
,p_name=>'P4_MODELO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_item_source_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_prompt=>'Modelo'
,p_source=>'MODELO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7826594248410333401)
,p_name=>'P4_PLACA'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_item_source_plug_id=>wwv_flow_imp.id(7826593927503333400)
,p_prompt=>'PLACA'
,p_source=>'PLACA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261026000925Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7826602056455333414)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7826593927503333400)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Registrar veh\00EDculo')
,p_static_id=>unistr('initialize-form-registrar-veh\00EDculo')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7826602056455333414
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7826602465081333415)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7826593927503333400)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form Registrar veh\00EDculo')
,p_static_id=>unistr('process-form-registrar-veh\00EDculo')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7826602465081333415
,p_created_on=>wwv_flow_imp.dz('20261025233009Z')
,p_updated_on=>wwv_flow_imp.dz('20261025233009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Publicar viaje'
,p_alias=>'PUBLICAR-VIAJE'
,p_step_title=>'Publicar viaje'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261026001439Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026003710Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7834012975699600455)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6852385800527787201)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026001440Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001440Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7834015919885600633)
,p_plug_name=>'Publicar viaje'
,p_static_id=>'publicar-viaje'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'VIAJE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7834023679997600641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7834024902735600643)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P5_ID_VIAJE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7834024190420600642)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_ID_VIAJE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7834024597230600642)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P5_ID_VIAJE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7834025382592600643)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7834019084021600638)
,p_name=>'P5_COSTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_item_source_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_prompt=>'Costo'
,p_source=>'COSTO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7834018595776600637)
,p_name=>'P5_CUPOS_DISPONIBLES'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_item_source_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_prompt=>'Cupos Disponibles'
,p_source=>'CUPOS_DISPONIBLES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7834019897567600639)
,p_name=>'P5_DISTANCIA_EST_KM'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_item_source_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_prompt=>'Distancia Est Km'
,p_source=>'DISTANCIA_EST_KM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7834020202232600639)
,p_name=>'P5_DURACION_EST_MIN'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_item_source_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_prompt=>'Duracion Est Min'
,p_source=>'DURACION_EST_MIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7834019487460600638)
,p_name=>'P5_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_item_source_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Programado'' AS DISPLAY_VALUE,',
'       ''programado'' AS RETURN_VALUE',
'FROM DUAL',
'UNION ALL',
'SELECT ''En curso'', ''en_curso'' FROM DUAL',
'UNION ALL',
'SELECT ''Completado'', ''completado'' FROM DUAL',
'UNION ALL',
'SELECT ''Cancelado'', ''cancelado'' FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione un estado'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026002137Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7834016629473600634)
,p_name=>'P5_FECHA_HORA_SALIDA'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_item_source_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_prompt=>'Fecha Hora Salida'
,p_source=>'FECHA_HORA_SALIDA'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026003710Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7834016215296600633)
,p_name=>'P5_ID_VIAJE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_item_source_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_source=>'ID_VIAJE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7834017844790600635)
,p_name=>'P5_PLACA_VEHICULO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_item_source_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_prompt=>'Placa Vehiculo'
,p_source=>'PLACA_VEHICULO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PLACA AS DISPLAY_VALUE,',
'       PLACA AS RETURN_VALUE',
'FROM VEHICULO',
'ORDER BY PLACA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('Seleccione un veh\00EDculo')
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001734Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7834017084818600634)
,p_name=>'P5_PUNTO_ORIGEN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_item_source_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_prompt=>'Punto Origen'
,p_source=>'PUNTO_ORIGEN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7834017460567600635)
,p_name=>'P5_RUTA_GENERAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_item_source_plug_id=>wwv_flow_imp.id(7834015919885600633)
,p_prompt=>'Ruta General'
,p_source=>'RUTA_GENERAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7834025789258600643)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7834015919885600633)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Publicar viaje'
,p_static_id=>'initialize-form-publicar-viaje'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7834025789258600643
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7834026177027600644)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7834015919885600633)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Publicar viaje'
,p_static_id=>'process-form-publicar-viaje'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7834026177027600644
,p_created_on=>wwv_flow_imp.dz('20261026001441Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001441Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Gestionar solicitudes'
,p_alias=>'GESTIONAR-SOLICITUDES'
,p_step_title=>'Gestionar solicitudes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026004206Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7838398421975760424)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6852385800527787201)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004119Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7838391587616760388)
,p_plug_name=>'Gestionar solicitudes'
,p_static_id=>'gestionar-solicitudes'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SOLICITUD'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004206Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7838391688728760388)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_ID_SOLICITUD:\#ID_SOLICITUD#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>7838391688728760388
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004206Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7838395915933760414)
,p_db_column_name=>'DOCUMENTO_PASAJERO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Documento Pasajero'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(7826597021154333407)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004119Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7838395139622760412)
,p_db_column_name=>'ESTADO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004119Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7838394771687760410)
,p_db_column_name=>'FECHA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004119Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7838395568176760413)
,p_db_column_name=>'FECHA_CANCELACION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Fecha Cancelacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004119Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7838396349078760416)
,p_db_column_name=>'ID_PARADA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Id Parada'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(7838384553430760094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004119Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7838394363774760404)
,p_db_column_name=>'ID_SOLICITUD'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Solicitud'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004119Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7838449186490765091)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_SOLICITUD:FECHA:ESTADO:FECHA_CANCELACION:DOCUMENTO_PASAJERO:ID_PARADA'
,p_created_on=>wwv_flow_imp.dz('20261026004206Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004206Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7838396718442760417)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7838391587616760388)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004119Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7838397143097760418)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7838391587616760388)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004119Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7838397526179760419)
,p_event_id=>wwv_flow_imp.id(7838397143097760418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7838391587616760388)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026004119Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004119Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Responder solicitud'
,p_alias=>'RESPONDER-SOLICITUD'
,p_page_mode=>'MODAL'
,p_step_title=>'Responder solicitud'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026005657Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7838386906686760103)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7838382080912760088)
,p_plug_name=>'Responder solicitud'
,p_static_id=>'responder-solicitud'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SOLICITUD'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7838387367982760131)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7838386906686760103)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(7838387824167760131)
,p_button_id=>wwv_flow_imp.id(7838387367982760131)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7838389111255760133)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7838386906686760103)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7838388318683760132)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7838386906686760103)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7838388757981760133)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7838386906686760103)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7838384025172760092)
,p_name=>'P7_DOCUMENTO_PASAJERO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7838382080912760088)
,p_item_source_plug_id=>wwv_flow_imp.id(7838382080912760088)
,p_prompt=>'Documento Pasajero'
,p_source=>'DOCUMENTO_PASAJERO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ESTUDIANTE.NOMBRE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026005557Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7838383284450760091)
,p_name=>'P7_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7838382080912760088)
,p_item_source_plug_id=>wwv_flow_imp.id(7838382080912760088)
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Aceptar solicitud;aceptada,Rechazar solicitud;rechazada'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026005408Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7838382874869760091)
,p_name=>'P7_FECHA'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7838382080912760088)
,p_item_source_plug_id=>wwv_flow_imp.id(7838382080912760088)
,p_prompt=>'Fecha'
,p_source=>'FECHA'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026005544Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7838383629728760092)
,p_name=>'P7_FECHA_CANCELACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7838382080912760088)
,p_item_source_plug_id=>wwv_flow_imp.id(7838382080912760088)
,p_prompt=>'Fecha Cancelacion'
,p_source=>'FECHA_CANCELACION'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7838384420182760093)
,p_name=>'P7_ID_PARADA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7838382080912760088)
,p_item_source_plug_id=>wwv_flow_imp.id(7838382080912760088)
,p_prompt=>'Id Parada'
,p_source=>'ID_PARADA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PARADA.DIRECCION'
,p_lov_display_null=>'YES'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026005657Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7838382463233760089)
,p_name=>'P7_ID_SOLICITUD'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7838382080912760088)
,p_item_source_plug_id=>wwv_flow_imp.id(7838382080912760088)
,p_source=>'ID_SOLICITUD'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7838390311493760134)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7838390311493760134
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7838389539619760133)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7838382080912760088)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Responder solicitud'
,p_static_id=>'initialize-form-responder-solicitud'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7838389539619760133
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7838389909274760134)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7838382080912760088)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Responder solicitud'
,p_static_id=>'process-form-responder-solicitud'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7838389909274760134
,p_created_on=>wwv_flow_imp.dz('20261026004116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004116Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Actualizar estado del viaje'
,p_alias=>'ACTUALIZAR-ESTADO-DEL-VIAJE'
,p_step_title=>'Actualizar estado del viaje'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261026010105Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026010830Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7843913326147262613)
,p_plug_name=>'Actualizar estado del viaje'
,p_static_id=>'actualizar-estado-del-viaje'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'VIAJE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010830Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7843913471524262613)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_ID_VIAJE:\#ID_VIAJE#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>7843913471524262613
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010830Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7843917728173262626)
,p_db_column_name=>'COSTO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7843917105384262624)
,p_db_column_name=>'CUPOS_DISPONIBLES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cupos Disponibles'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7843918685466262629)
,p_db_column_name=>'DISTANCIA_EST_KM'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Distancia Est Km'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7843919156337262630)
,p_db_column_name=>'DURACION_EST_MIN'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Duracion Est Min'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7843918290793262627)
,p_db_column_name=>'ESTADO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7843915304958262619)
,p_db_column_name=>'FECHA_HORA_SALIDA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha Hora Salida'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7843914897437262617)
,p_db_column_name=>'ID_VIAJE'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Viaje'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7843916766595262623)
,p_db_column_name=>'PLACA_VEHICULO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Placa Vehiculo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(7834017909371600635)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7843915762444262620)
,p_db_column_name=>'PUNTO_ORIGEN'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Punto Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7843916260275262622)
,p_db_column_name=>'RUTA_GENERAL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ruta General'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7847359756420306860)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_VIAJE:FECHA_HORA_SALIDA:PUNTO_ORIGEN:RUTA_GENERAL:PLACA_VEHICULO:CUPOS_DISPONIBLES:COSTO:ESTADO:DISTANCIA_EST_KM:DURACION_EST_MIN'
,p_created_on=>wwv_flow_imp.dz('20261026010830Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010830Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7843921423262262636)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6852385800527787201)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7843919514692262631)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7843913326147262613)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7843920004209262632)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7843913326147262613)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7843920401740262633)
,p_event_id=>wwv_flow_imp.id(7843920004209262632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7843913326147262613)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026010108Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010108Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Cambiar estado del viaje'
,p_alias=>'CAMBIAR-ESTADO-DEL-VIAJE'
,p_page_mode=>'MODAL'
,p_step_title=>'Cambiar estado del viaje'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261026010103Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026010624Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7843894078367262273)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261026010105Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010105Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7843886400216262264)
,p_plug_name=>'Cambiar estado del viaje'
,p_static_id=>'cambiar-estado-del-viaje'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'VIAJE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261026010104Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010104Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7843895894918262306)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7843894078367262273)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261026010105Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010105Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(7843896326130262306)
,p_button_id=>wwv_flow_imp.id(7843895894918262306)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261026010105Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010105Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7843897781275262307)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7843894078367262273)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_ID_VIAJE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261026010105Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010105Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7843896840766262307)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7843894078367262273)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_ID_VIAJE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261026010105Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010105Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7843897345928262307)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7843894078367262273)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_ID_VIAJE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261026010105Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010105Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7843889302538262269)
,p_name=>'P9_COSTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_item_source_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_prompt=>'Costo'
,p_source=>'COSTO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026010104Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010605Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7843888920122262269)
,p_name=>'P9_CUPOS_DISPONIBLES'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_item_source_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_prompt=>'Cupos Disponibles'
,p_source=>'CUPOS_DISPONIBLES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026010104Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010554Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7843890145629262270)
,p_name=>'P9_DISTANCIA_EST_KM'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_item_source_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_prompt=>'Distancia Est Km'
,p_source=>'DISTANCIA_EST_KM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026010104Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010616Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7843890570849262270)
,p_name=>'P9_DURACION_EST_MIN'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_item_source_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_prompt=>'Duracion Est Min'
,p_source=>'DURACION_EST_MIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026010104Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010624Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7843889712293262270)
,p_name=>'P9_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_item_source_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Programado;programado,En curso;en_curso,Completado;completado,Cancelado;cancelado'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026010104Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010426Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7843887255808262266)
,p_name=>'P9_FECHA_HORA_SALIDA'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_item_source_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_prompt=>'Fecha Hora Salida'
,p_source=>'FECHA_HORA_SALIDA'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026010104Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010510Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7843886738933262265)
,p_name=>'P9_ID_VIAJE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_item_source_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_source=>'ID_VIAJE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026010104Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010104Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7843888456410262268)
,p_name=>'P9_PLACA_VEHICULO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_item_source_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_prompt=>'Placa Vehiculo'
,p_source=>'PLACA_VEHICULO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'VEHICULO.MARCA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026010104Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010545Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7843887607306262267)
,p_name=>'P9_PUNTO_ORIGEN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_item_source_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_prompt=>'Punto Origen'
,p_source=>'PUNTO_ORIGEN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026010104Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010518Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7843888035404262268)
,p_name=>'P9_RUTA_GENERAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_item_source_plug_id=>wwv_flow_imp.id(7843886400216262264)
,p_prompt=>'Ruta General'
,p_source=>'RUTA_GENERAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026010104Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010536Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7843898948301262308)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7843898948301262308
,p_created_on=>wwv_flow_imp.dz('20261026010105Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010105Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7843898196564262308)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7843886400216262264)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Cambiar estado del viaje'
,p_static_id=>'initialize-form-cambiar-estado-del-viaje'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7843898196564262308
,p_created_on=>wwv_flow_imp.dz('20261026010105Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010105Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7843898530563262308)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7843886400216262264)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Cambiar estado del viaje'
,p_static_id=>'process-form-cambiar-estado-del-viaje'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7843898530563262308
,p_created_on=>wwv_flow_imp.dz('20261026010105Z')
,p_updated_on=>wwv_flow_imp.dz('20261026010105Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Historial de viajes'
,p_alias=>'HISTORIAL-DE-VIAJES'
,p_step_title=>'Historial de viajes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7861014400008167488)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261026011600Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026015037Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7848875790612968470)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6852385800527787201)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026011600Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011600Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7848877027067968769)
,p_plug_name=>'Historial de viajes'
,p_static_id=>'historial-de-viajes'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.ID_VIAJE,',
'       v.FECHA_HORA_SALIDA,',
'       v.PUNTO_ORIGEN,',
'       v.RUTA_GENERAL,',
'       v.PLACA_VEHICULO,',
'       v.CUPOS_DISPONIBLES,',
'       v.COSTO,',
'       v.ESTADO,',
'       v.DISTANCIA_EST_KM,',
'       v.DURACION_EST_MIN',
'FROM VIAJE v',
'JOIN VEHICULO ve',
'    ON v.PLACA_VEHICULO = ve.PLACA',
'JOIN USUARIO_APEX_ESTUDIANTE u',
'    ON ve.DOCUMENTO_CONDUCTOR = u.DOCUMENTO_IDENTIDAD',
'WHERE LOWER(u.USUARIO_APEX) = LOWER(:APP_USER)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261026011603Z')
,p_updated_on=>wwv_flow_imp.dz('20261026014209Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7848877166693968769)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>7848877166693968769
,p_created_on=>wwv_flow_imp.dz('20261026011603Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011612Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7848880733788968805)
,p_db_column_name=>'COSTO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026011603Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011603Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7848880331598968804)
,p_db_column_name=>'CUPOS_DISPONIBLES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cupos Disponibles'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026011603Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011603Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7848881772657968807)
,p_db_column_name=>'DISTANCIA_EST_KM'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Distancia Est Km'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026011603Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011603Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7848882179552968809)
,p_db_column_name=>'DURACION_EST_MIN'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Duracion Est Min'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026011603Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011603Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7848881391553968806)
,p_db_column_name=>'ESTADO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026011603Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011603Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7848878771137968799)
,p_db_column_name=>'FECHA_HORA_SALIDA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha Hora Salida'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026011603Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011603Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7848878361027968797)
,p_db_column_name=>'ID_VIAJE'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Viaje'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261026011603Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011603Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7848879989494968803)
,p_db_column_name=>'PLACA_VEHICULO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Placa Vehiculo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(7834017909371600635)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026011603Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011603Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7848879163033968800)
,p_db_column_name=>'PUNTO_ORIGEN'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Punto Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026011603Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011603Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7848879552820968802)
,p_db_column_name=>'RUTA_GENERAL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ruta General'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026011603Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011603Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7848892812666969689)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_VIAJE:FECHA_HORA_SALIDA:PUNTO_ORIGEN:RUTA_GENERAL:PLACA_VEHICULO:CUPOS_DISPONIBLES:COSTO:ESTADO:DISTANCIA_EST_KM:DURACION_EST_MIN'
,p_created_on=>wwv_flow_imp.dz('20261026011612Z')
,p_updated_on=>wwv_flow_imp.dz('20261026011612Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Registrar pasajero'
,p_alias=>'REGISTRAR-PASAJERO'
,p_step_title=>'Registrar pasajero'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261026015514Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026015909Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7861211337980203950)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6852385800527787201)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7861214987887204004)
,p_plug_name=>'Registrar pasajero'
,p_static_id=>'registrar-pasajero'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ESTUDIANTE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7861220209085204008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7861221502543204010)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P12_DOCUMENTO_IDENTIDAD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7861220769890204009)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P12_DOCUMENTO_IDENTIDAD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7861221179071204009)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P12_DOCUMENTO_IDENTIDAD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7861221978854204010)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7861216103151204005)
,p_name=>'P12_APELLIDOS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_item_source_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_prompt=>'Apellidos'
,p_source=>'APELLIDOS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7861217748705204007)
,p_name=>'P12_CELULAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_item_source_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_prompt=>'Celular'
,p_source=>'CELULAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7861217357822204006)
,p_name=>'P12_CORREO_INSTITUCIONAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_item_source_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_prompt=>'Correo Institucional'
,p_source=>'CORREO_INSTITUCIONAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7861215305527204004)
,p_name=>'P12_DOCUMENTO_IDENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_item_source_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_prompt=>'Documento'
,p_source=>'DOCUMENTO_IDENTIDAD'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015909Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7861215704332204005)
,p_name=>'P12_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_item_source_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7861216990379204006)
,p_name=>'P12_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_item_source_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_prompt=>'Programa'
,p_source=>'PROGRAMA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7861216597215204005)
,p_name=>'P12_UNIVERSIDAD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_item_source_plug_id=>wwv_flow_imp.id(7861214987887204004)
,p_prompt=>'Universidad'
,p_source=>'UNIVERSIDAD'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7861222350298204010)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7861214987887204004)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registrar pasajero'
,p_static_id=>'initialize-form-registrar-pasajero'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7861222350298204010
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7861222716012204011)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7861214987887204004)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Registrar pasajero'
,p_static_id=>'process-form-registrar-pasajero'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7861222716012204011
,p_created_on=>wwv_flow_imp.dz('20261026015515Z')
,p_updated_on=>wwv_flow_imp.dz('20261026015515Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Listado de pasajeros'
,p_alias=>'LISTADO-DE-PASAJEROS'
,p_step_title=>'Listado de pasajeros'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261026021702Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026022545Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7867793667310334701)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6852385800527787201)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026021702Z')
,p_updated_on=>wwv_flow_imp.dz('20261026021702Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7867794637783335015)
,p_plug_name=>'Listado de pasajeros'
,p_static_id=>'listado-de-pasajeros'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ESTUDIANTE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261026021705Z')
,p_updated_on=>wwv_flow_imp.dz('20261026022545Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7867794773835335015)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>7867794773835335015
,p_created_on=>wwv_flow_imp.dz('20261026021705Z')
,p_updated_on=>wwv_flow_imp.dz('20261026022545Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7867796732290335055)
,p_db_column_name=>'APELLIDOS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Apellidos'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026021706Z')
,p_updated_on=>wwv_flow_imp.dz('20261026021706Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7867798201966335059)
,p_db_column_name=>'CELULAR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Celular'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026021706Z')
,p_updated_on=>wwv_flow_imp.dz('20261026021706Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7867797835704335058)
,p_db_column_name=>'CORREO_INSTITUCIONAL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Correo Institucional'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026021706Z')
,p_updated_on=>wwv_flow_imp.dz('20261026021706Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7867795960654335051)
,p_db_column_name=>'DOCUMENTO_IDENTIDAD'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Documento Identidad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261026021705Z')
,p_updated_on=>wwv_flow_imp.dz('20261026021705Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7867796388031335053)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12:P12_DOCUMENTO_IDENTIDAD:#DOCUMENTO_IDENTIDAD#'
,p_column_linktext=>'#NOMBRE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026021705Z')
,p_updated_on=>wwv_flow_imp.dz('20261026022545Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7867797402097335057)
,p_db_column_name=>'PROGRAMA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Programa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026021706Z')
,p_updated_on=>wwv_flow_imp.dz('20261026021706Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7867797080143335056)
,p_db_column_name=>'UNIVERSIDAD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Universidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026021706Z')
,p_updated_on=>wwv_flow_imp.dz('20261026021706Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7867938138586356964)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCUMENTO_IDENTIDAD:NOMBRE:APELLIDOS:UNIVERSIDAD:PROGRAMA:CORREO_INSTITUCIONAL:CELULAR'
,p_created_on=>wwv_flow_imp.dz('20261026022045Z')
,p_updated_on=>wwv_flow_imp.dz('20261026022045Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Consultar viajes disponibles'
,p_alias=>'CONSULTAR-VIAJES-DISPONIBLES'
,p_step_title=>'Consultar viajes disponibles'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261026023132Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026024023Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7868749450872421738)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6852385800527787201)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026023133Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023133Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7868750477559422039)
,p_plug_name=>'Consultar viajes disponibles'
,p_static_id=>'consultar-viajes-disponibles'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ID_VIAJE,',
'    TRUNC(FECHA_HORA_SALIDA) AS FECHA_HORA_SALIDA,',
'    PUNTO_ORIGEN,',
'    RUTA_GENERAL,',
'    PLACA_VEHICULO,',
'    CUPOS_DISPONIBLES,',
'    COSTO,',
'    ESTADO',
'FROM VIAJE',
'WHERE LOWER(ESTADO) = ''programado''',
'  AND CUPOS_DISPONIBLES > 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261026023135Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024023Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7868750539988422039)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>7868750539988422039
,p_created_on=>wwv_flow_imp.dz('20261026023135Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023224Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7868754145263422050)
,p_db_column_name=>'COSTO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026023135Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023135Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7868753764014422049)
,p_db_column_name=>'CUPOS_DISPONIBLES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cupos Disponibles'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026023135Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023135Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7868754599457422051)
,p_db_column_name=>'ESTADO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026023135Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023135Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7868752150616422045)
,p_db_column_name=>'FECHA_HORA_SALIDA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha Hora Salida'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026023135Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023135Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7868751709993422043)
,p_db_column_name=>'ID_VIAJE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Viaje'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026023135Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023135Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7868753343925422048)
,p_db_column_name=>'PLACA_VEHICULO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Placa Vehiculo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026023135Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023135Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7868752567317422046)
,p_db_column_name=>'PUNTO_ORIGEN'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Punto Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026023135Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023135Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7868752909778422047)
,p_db_column_name=>'RUTA_GENERAL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ruta General'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026023135Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023135Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7868826822774426886)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_VIAJE:FECHA_HORA_SALIDA:PUNTO_ORIGEN:RUTA_GENERAL:PLACA_VEHICULO:CUPOS_DISPONIBLES:COSTO:ESTADO'
,p_created_on=>wwv_flow_imp.dz('20261026023224Z')
,p_updated_on=>wwv_flow_imp.dz('20261026023224Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Solicitar cupo'
,p_alias=>'SOLICITAR-CUPO'
,p_step_title=>'Solicitar cupo'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261026024635Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026025231Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7870597959590512046)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6852385800527787201)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024636Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7870598618883512107)
,p_plug_name=>'Solicitar cupo'
,p_static_id=>'solicitar-cupo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SOLICITUD'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024636Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7870603201653512114)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024636Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7870604585470512115)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P17_ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024636Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7870603782909512114)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P17_ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024636Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7870604184888512114)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P17_ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024636Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7870604970552512115)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024636Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7870600660016512109)
,p_name=>'P17_DOCUMENTO_PASAJERO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_item_source_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_prompt=>'Seleccionar pasajero'
,p_source=>'DOCUMENTO_PASAJERO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ESTUDIANTE.NOMBRE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026025050Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7870599893021512109)
,p_name=>'P17_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_item_source_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_item_default=>'pendiente'
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024922Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7870599446538512108)
,p_name=>'P17_FECHA'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_item_source_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_prompt=>'Fecha'
,p_source=>'FECHA'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024636Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7870600230936512109)
,p_name=>'P17_FECHA_CANCELACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_item_source_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_source=>'FECHA_CANCELACION'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026025009Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7870601079316512110)
,p_name=>'P17_ID_PARADA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_item_source_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_prompt=>'Seleccionar parada'
,p_source=>'ID_PARADA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PARADA.DIRECCION'
,p_lov_display_null=>'YES'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026025231Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7870599045894512108)
,p_name=>'P17_ID_SOLICITUD'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_item_source_plug_id=>wwv_flow_imp.id(7870598618883512107)
,p_source=>'ID_SOLICITUD'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024636Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7870605330192512115)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7870598618883512107)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Solicitar cupo'
,p_static_id=>'initialize-form-solicitar-cupo'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7870605330192512115
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024636Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7870605739734512116)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7870598618883512107)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Solicitar cupo'
,p_static_id=>'process-form-solicitar-cupo'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7870605739734512116
,p_created_on=>wwv_flow_imp.dz('20261026024636Z')
,p_updated_on=>wwv_flow_imp.dz('20261026024636Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Cancelar solicitud'
,p_alias=>'CANCELAR-SOLICITUD'
,p_step_title=>'Cancelar solicitud'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261026031016Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026033104Z')
,p_created_by=>'VOTALORA'
,p_last_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7872202030465654098)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(6852385800527787201)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026031016Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031016Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7872206035031654224)
,p_plug_name=>'Cancelar solicitud'
,p_static_id=>'cancelar-solicitud'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SOLICITUD'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031017Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7872210974516654232)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031017Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7872212483726654234)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P18_ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031017Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7872211410550654232)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P18_ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031017Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7872211978928654233)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P18_ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031017Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7872212843940654234)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031017Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7872208085493654227)
,p_name=>'P18_DOCUMENTO_PASAJERO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_item_source_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_prompt=>'Documento Pasajero'
,p_source=>'DOCUMENTO_PASAJERO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ESTUDIANTE.NOMBRE_1'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031250Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7872207287503654226)
,p_name=>'P18_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_item_source_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031250Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7872206854013654225)
,p_name=>'P18_FECHA'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_item_source_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_prompt=>'Fecha'
,p_source=>'FECHA'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031250Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7872207632745654227)
,p_name=>'P18_FECHA_CANCELACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_item_source_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Cancelacion'
,p_source=>'FECHA_CANCELACION'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031443Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7872208784817654229)
,p_name=>'P18_ID_PARADA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_item_source_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_prompt=>'Id Parada'
,p_source=>'ID_PARADA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PARADA.DIRECCION'
,p_lov_display_null=>'YES'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031250Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7872206483337654225)
,p_name=>'P18_ID_SOLICITUD'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_item_source_plug_id=>wwv_flow_imp.id(7872206035031654224)
,p_item_default=>'cancelada'
,p_source=>'ID_SOLICITUD'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031250Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7872213271854654235)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7872206035031654224)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Cancelar solicitud'
,p_static_id=>'initialize-form-cancelar-solicitud'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7872213271854654235
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031017Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7872213664171654235)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7872206035031654224)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Cancelar solicitud'
,p_static_id=>'process-form-cancelar-solicitud'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>7872213664171654235
,p_created_on=>wwv_flow_imp.dz('20261026031017Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032608Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1692448174554077809)
,p_process_sequence=>5
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validar y cancelar solicitud'
,p_static_id=>'validar-y-cancelar-solicitud'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_estado SOLICITUD.ESTADO%TYPE;',
'    v_salida VIAJE.FECHA_HORA_SALIDA%TYPE;',
'BEGIN',
'    SELECT s.ESTADO, v.FECHA_HORA_SALIDA',
'    INTO v_estado, v_salida',
'    FROM SOLICITUD s',
'    JOIN PARADA p ON s.ID_PARADA = p.ID_PARADA',
'    JOIN VIAJE v ON p.ID_VIAJE = v.ID_VIAJE',
'    WHERE s.ID_SOLICITUD = :P18_ID_SOLICITUD;',
'',
'    IF LOWER(v_estado) <> ''aceptada'' THEN',
'        RAISE_APPLICATION_ERROR(',
'            -20001,',
'            ''Solo se pueden cancelar solicitudes aceptadas.''',
'        );',
'    END IF;',
'',
'    IF v_salida < SYSDATE + (2/24) THEN',
'        RAISE_APPLICATION_ERROR(',
'            -20002,',
'            ''Debes cancelar con al menos 2 horas de anticipacion.''',
'        );',
'    END IF;',
'',
'    UPDATE SOLICITUD',
'    SET ESTADO = ''cancelada'',',
'        FECHA_CANCELACION = SYSDATE',
'    WHERE ID_SOLICITUD = :P18_ID_SOLICITUD;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7872211978928654233)
,p_internal_uid=>1692448174554077809
,p_created_on=>wwv_flow_imp.dz('20261026032608Z')
,p_updated_on=>wwv_flow_imp.dz('20261026033104Z')
,p_created_by=>'VOTALORA'
,p_updated_by=>'VOTALORA'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Wheels Alpes - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2104585595298951431
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_last_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6852392726074787215)
,p_plug_name=>'Wheels Alpes'
,p_static_id=>'wheels-alpes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677585639786677191
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6852394785431787249)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6852392726074787215)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6852394051605787249)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6852392726074787215)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6852394425733787249)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6852392726074787215)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6852393622650787248)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6852392726074787215)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6852398893179787253)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6852398893179787253
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6852398464151787252)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6852398464151787252
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6852395103225787250)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6852395103225787250
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6852396147266787251)
,p_page_process_id=>wwv_flow_imp.id(6852395103225787250)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6852396667466787251)
,p_page_process_id=>wwv_flow_imp.id(6852395103225787250)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6852395608042787250)
,p_page_process_id=>wwv_flow_imp.id(6852395103225787250)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6852397035281787251)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6852397035281787251
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6852398022612787252)
,p_page_process_id=>wwv_flow_imp.id(6852397035281787251)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6852397531022787252)
,p_page_process_id=>wwv_flow_imp.id(6852397035281787251)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20261022122154Z')
,p_updated_on=>wwv_flow_imp.dz('20261022122154Z')
,p_created_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
,p_updated_by=>'A.ZULUAGAR@UNIANDES.EDU.CO'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
