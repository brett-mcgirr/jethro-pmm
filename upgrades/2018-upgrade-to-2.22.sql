/* Issue #440 - fix collations on several tables so they are all consistent */
ALTER TABLE family convert to CHARACTER SET utf8 COLLATE utf8_unicode_ci;
ALTER TABLE note_comment convert to CHARACTER SET utf8 COLLATE utf8_unicode_ci;
ALTER TABLE db_object_lock convert to CHARACTER SET utf8 COLLATE utf8_unicode_ci;
ALTER TABLE _person CONVERT TO CHARACTER SET utf8 COLLATE utf8_unicode_ci;

/* update emty setting where necessary to avoid errors */
UPDATE setting set value = 'SMS Sent'
WHERE symbol = 'SMS_SAVE_TO_NOTE_SUBJECT'
AND value = '';
