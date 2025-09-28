# cl_general_2023

==2025-09-28==
```
INSERT INTO `config` (`name`, `value`, `value_blob`, `help`) VALUES
('edit_delete_restriction_bypass_examination',	'10015,10016',	NULL,	'');
-- 2025-09-28 16:18:37 UTC

INSERT INTO `examination` (`examination_id`, `name`, `sample_requirement`, `edit_specification`, `description`, `request_route`, `display_route`, `print_route`, `request_route_priority`, `display_route_priority`, `print_route_priority`, `display_format`, `insert_minimum_authorization_level`, `update_minimum_authorization_level`, `select_minimum_authorization_level`, `delete_minimum_authorization_level`, `append_user`, `default_value`, `equipment`, `display_help`, `print_help`, `accr_status`, `display_choice`, `displayed_scope`, `instruction_for_requester`, `class_tag`) VALUES
(10015,	'sample_printed',	'None',	'{\"hide\":\"yes\",\"type\":\"datetime-local\"}',	'',	'Misc/Sample Details/Sample Status',	'Sample Details',	'Sample Details',	'',	'',	'',	'compact_report',	1,	1,	0,	1,	1,	'',	'',	'',	'',	'',	NULL,	'yes',	'',	''),
(10016,	'sample_print_delivered',	'None',	'{\"hide\":\"yes\",\"type\":\"datetime-local\"}',	'',	'Misc/Sample Details/Sample Status',	'Sample Details',	'Sample Details',	'',	'',	'',	'compact_report',	1,	1,	0,	1,	1,	'',	'',	'',	'',	'',	NULL,	'yes',	'',	'');
-- 2025-09-28 16:20:09 UTC

INSERT INTO `examination` (`examination_id`, `name`, `sample_requirement`, `edit_specification`, `description`, `request_route`, `display_route`, `print_route`, `request_route_priority`, `display_route_priority`, `print_route_priority`, `display_format`, `insert_minimum_authorization_level`, `update_minimum_authorization_level`, `select_minimum_authorization_level`, `delete_minimum_authorization_level`, `append_user`, `default_value`, `equipment`, `display_help`, `print_help`, `accr_status`, `display_choice`, `displayed_scope`, `instruction_for_requester`, `class_tag`) VALUES
(5227,	'referenced_sample_id',	'complex',	'',	NULL,	'referenced_sample_id',	'referenced_sample_id',	'referenced_sample_id',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(5229,	'Serum Osmolality (Complex)',	'complex',	'',	NULL,	'serum_osmolality_complex',	'serum_osmolality_complex',	'serum_osmolality_complex',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL);
-- 2025-09-28 16:21:18 UTC


INSERT INTO `sample_status` (`id`, `priority`, `name`, `examination_id`, `color`, `shortcut`, `dependancy_examination_id`) VALUES
(20,	800.000,	'sample_printed',	10015,	'#91648B',	1,	'10008,10010'),
(21,	900.000,	'sample_print_delivered',	10016,	'#91AAC2',	1,	'10015');

INSERT INTO `sample_id_strategy` (`sample_requirement`, `lowest_id`, `highest_id`, `description`) VALUES
('complex',	1000,	1999999,	'Biochemistry');
-- 2025-09-28 16:34:26 UTC
```
