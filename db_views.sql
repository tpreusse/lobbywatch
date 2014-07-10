-- VIEWS ------------------

-- Last updated views

CREATE OR REPLACE VIEW `v_last_updated_branche` AS
  (SELECT
  'branche' table_name,
  'Branche' name,
  (select count(*) from `branche`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `branche` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_interessenbindung` AS
  (SELECT
  'interessenbindung' table_name,
  'Interessenbindung' name,
  (select count(*) from `interessenbindung`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `interessenbindung` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_interessengruppe` AS
  (SELECT
  'interessengruppe' table_name,
  'Lobbygruppe' name,
  (select count(*) from `interessengruppe`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `interessengruppe` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_in_kommission` AS
  (SELECT
  'in_kommission' table_name,
  'In Kommission' name,
  (select count(*) from `in_kommission`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `in_kommission` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_kommission` AS
  (SELECT
  'kommission' table_name,
  'Kommission' name,
  (select count(*) from `kommission`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `kommission` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_mandat` AS
  (SELECT
  'mandat' table_name,
  'Mandat' name,
  (select count(*) from `mandat`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `mandat` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_organisation` AS
  (SELECT
  'organisation' table_name,
  'Organisation' name,
  (select count(*) from `organisation`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `organisation` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_organisation_anhang` AS
  (SELECT
  'organisation_anhang' table_name,
  'Organisationsanhang' name,
  (select count(*) from `organisation_anhang`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `organisation_anhang` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_organisation_beziehung` AS
  (SELECT
  'organisation_beziehung' table_name,
  'Organisation Beziehung' name,
  (select count(*) from `organisation_beziehung`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `organisation_beziehung` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_organisation_jahr` AS
  (SELECT
  'organisation_jahr' table_name,
  'Organisationsjahr' name,
  (select count(*) from `organisation_jahr`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `organisation_jahr` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_parlamentarier` AS
  (SELECT
  'parlamentarier' table_name,
  'Parlamentarier' name,
  (select count(*) from `parlamentarier`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `parlamentarier` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_parlamentarier_anhang` AS
  (SELECT
  'parlamentarier_anhang' table_name,
  'Parlamentarieranhang' name,
  (select count(*) from `parlamentarier_anhang`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `parlamentarier_anhang` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_partei` AS
  (SELECT
  'partei' table_name,
  'Partei' name,
  (select count(*) from `partei`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `partei` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_fraktion` AS
  (SELECT
  'fraktion' table_name,
  'Fraktion' name,
  (select count(*) from `fraktion`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `fraktion` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_rat` AS
  (SELECT
  'rat' table_name,
  'Rat' name,
  (select count(*) from `rat`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `rat` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_kanton` AS
  (SELECT
  'kanton' table_name,
  'Kanton' name,
  (select count(*) from `kanton`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `kanton` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_kanton_jahr` AS
  (SELECT
  'kanton_jahr' table_name,
  'Kantonjahr' name,
  (select count(*) from `kanton_jahr`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `kanton_jahr` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_settings` AS
  (SELECT
  'settings' table_name,
  'Einstellungen' name,
  (select count(*) from `settings`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `settings` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_settings_category` AS
  (SELECT
  'settings_category' table_name,
  'Einstellungskategorien' name,
  (select count(*) from `settings_category`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `settings_category` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_zutrittsberechtigung` AS
  (SELECT
  'zutrittsberechtigung' table_name,
  'Zutrittsberechtigter' name,
  (select count(*) from `zutrittsberechtigung`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `zutrittsberechtigung` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_zutrittsberechtigung_anhang` AS
  (SELECT
  'zutrittsberechtigung_anhang' table_name,
  'Zutrittsberechtigunganhang' name,
  (select count(*) from `zutrittsberechtigung_anhang`) anzahl_eintraege,
  t.`updated_visa` AS last_visa,
  t.`updated_date` last_updated,
  t.id last_updated_id
  FROM
  `zutrittsberechtigung_anhang` t
  ORDER BY t.`updated_date` DESC
  LIMIT 1
  );
CREATE OR REPLACE VIEW `v_last_updated_tables_unordered` AS
SELECT * FROM v_last_updated_branche
UNION
SELECT * FROM v_last_updated_interessenbindung
UNION
SELECT * FROM v_last_updated_interessengruppe
UNION
SELECT * FROM v_last_updated_in_kommission
UNION
SELECT * FROM v_last_updated_kommission
UNION
SELECT * FROM v_last_updated_mandat
UNION
SELECT * FROM v_last_updated_organisation
UNION
SELECT * FROM v_last_updated_organisation_anhang
UNION
SELECT * FROM v_last_updated_organisation_beziehung
UNION
SELECT * FROM v_last_updated_organisation_jahr
UNION
SELECT * FROM v_last_updated_parlamentarier
UNION
SELECT * FROM v_last_updated_parlamentarier_anhang
UNION
SELECT * FROM v_last_updated_partei
UNION
SELECT * FROM v_last_updated_fraktion
UNION
SELECT * FROM v_last_updated_rat
UNION
SELECT * FROM v_last_updated_kanton
UNION
SELECT * FROM v_last_updated_kanton_jahr
UNION
SELECT * FROM v_last_updated_settings
UNION
SELECT * FROM v_last_updated_settings_category
UNION
SELECT * FROM v_last_updated_zutrittsberechtigung
UNION
SELECT * FROM v_last_updated_zutrittsberechtigung_anhang;

CREATE OR REPLACE VIEW `v_last_updated_tables` AS
SELECT * FROM `v_last_updated_tables_unordered`
ORDER BY last_updated DESC;

-- VIEWS

CREATE OR REPLACE VIEW `v_settings_category` AS
SELECT `settings_category`.*
FROM `settings_category`;

CREATE OR REPLACE VIEW `v_settings` AS
SELECT `settings`.*, settings_category.name as category_name
FROM `settings`
LEFT JOIN `v_settings_category` settings_category
ON settings.category_id = settings_category.id;

CREATE OR REPLACE VIEW `v_country` AS
SELECT country.name_de as anzeige_name, country.*
FROM `country`;

CREATE OR REPLACE VIEW `v_rat` AS
SELECT rat.name_de as anzeige_name, rat.*
FROM `rat`
ORDER BY `gewicht` ASC;;

CREATE OR REPLACE VIEW `v_kanton_jahr` AS
SELECT kanton_jahr.*
FROM `kanton_jahr`;

CREATE OR REPLACE VIEW `v_kanton_jahr_last` AS
SELECT MAX(kanton_jahr.jahr) max_jahr, kanton_jahr.*
FROM `kanton_jahr`
GROUP BY kanton_jahr.kanton_id;

CREATE OR REPLACE VIEW `v_kanton_2012` AS
SELECT kanton.name_de as anzeige_name, kanton.*, kanton_jahr.`id` as kanton_jahr_id, kanton_jahr.`jahr`, kanton_jahr.einwohner, kanton_jahr.auslaenderanteil, kanton_jahr.bevoelkerungsdichte, kanton_jahr.anzahl_gemeinden, kanton_jahr.anzahl_nationalraete
FROM `kanton`
LEFT JOIN `v_kanton_jahr` kanton_jahr
ON kanton_jahr.kanton_id = kanton.id AND kanton_jahr.jahr=2012;

CREATE OR REPLACE VIEW `v_kanton` AS
SELECT kanton.name_de as anzeige_name, kanton.*, kanton_jahr.`id` as kanton_jahr_id, kanton_jahr.`jahr`, kanton_jahr.einwohner, kanton_jahr.auslaenderanteil, kanton_jahr.bevoelkerungsdichte, kanton_jahr.anzahl_gemeinden, kanton_jahr.anzahl_nationalraete
FROM `kanton`
LEFT JOIN `v_kanton_jahr_last` kanton_jahr
ON kanton_jahr.kanton_id = kanton.id;

CREATE OR REPLACE VIEW `v_interessenraum` AS
SELECT interessenraum.name as anzeige_name, interessenraum.*
FROM `interessenraum` interessenraum
ORDER BY interessenraum.`reihenfolge` ASC;

CREATE OR REPLACE VIEW `v_kommission` AS
SELECT CONCAT(kommission.name, ' (', kommission.abkuerzung, ')') AS anzeige_name, kommission.*
FROM `kommission`;

CREATE OR REPLACE VIEW `v_partei` AS
SELECT CONCAT(partei.name, ' (', partei.abkuerzung, ')') AS anzeige_name, partei.*
FROM `partei`;

CREATE OR REPLACE VIEW `v_fraktion` AS
SELECT CONCAT_WS(', ', fraktion.abkuerzung, fraktion.name) AS anzeige_name, fraktion.*
FROM `fraktion`;

CREATE OR REPLACE VIEW `v_interessenbindung` AS
SELECT interessenbindung.*
FROM `interessenbindung`;

CREATE OR REPLACE VIEW `v_branche` AS
SELECT CONCAT(branche.name) AS anzeige_name,
branche.*,
kommission.anzeige_name as kommission
FROM `branche`
LEFT JOIN `v_kommission` kommission
ON kommission.id = branche.kommission_id
;

CREATE OR REPLACE VIEW `v_interessengruppe` AS
SELECT CONCAT(interessengruppe.name) AS anzeige_name,
interessengruppe.*,
branche.anzeige_name as branche,
branche.kommission_id as kommission_id,
branche.kommission as kommission
FROM `interessengruppe`
LEFT JOIN `v_branche` branche
ON branche.id = interessengruppe.branche_id
;

CREATE OR REPLACE VIEW `v_organisation_jahr` AS
SELECT `organisation_jahr`.*
FROM `organisation_jahr`;

CREATE OR REPLACE VIEW `v_kanton_jahr_last` AS
SELECT MAX(kanton_jahr.jahr) max_jahr, kanton_jahr.*
FROM `kanton_jahr`
GROUP BY kanton_jahr.kanton_id;

CREATE OR REPLACE VIEW `v_organisation_jahr_last` AS
SELECT MAX(organisation_jahr.jahr) max_jahr, `organisation_jahr`.*
FROM `organisation_jahr`
GROUP BY organisation_jahr.organisation_id;

CREATE OR REPLACE VIEW `v_organisation` AS
SELECT CONCAT_WS('; ', o.name_de, o.name_fr, o.name_it) AS anzeige_name,
CONCAT_WS('; ', o.name_de , o.name_fr, o.name_it) AS name,
o.*,
branche.anzeige_name as branche,
interessengruppe1.anzeige_name as interessengruppe,
interessengruppe1.branche as interessengruppe_branche,
interessengruppe2.anzeige_name as interessengruppe2,
interessengruppe2.branche as interessengruppe2_branche,
interessengruppe3.anzeige_name as interessengruppe3,
interessengruppe3.branche as interessengruppe3_branche,
country.name_de as land,
interessenraum.anzeige_name as interessenraum,
organisation_jahr.`id` as organisation_jahr_id, organisation_jahr.jahr, organisation_jahr.umsatz, organisation_jahr.gewinn, organisation_jahr.kapital, organisation_jahr.mitarbeiter_weltweit, organisation_jahr.mitarbeiter_schweiz, organisation_jahr.geschaeftsbericht_url, organisation_jahr.quelle_url
FROM `organisation` o
LEFT JOIN `v_branche` branche
ON branche.id = o.branche_id
LEFT JOIN `v_interessengruppe` interessengruppe1
ON interessengruppe1.id = o.interessengruppe_id
LEFT JOIN `v_interessengruppe` interessengruppe2
ON interessengruppe2.id = o.interessengruppe2_id
LEFT JOIN `v_interessengruppe` interessengruppe3
ON interessengruppe3.id = o.interessengruppe3_id
LEFT JOIN `v_country` country
ON country.id = o.land_id
LEFT JOIN `v_interessenraum` interessenraum
ON interessenraum.id = o.interessenraum_id
LEFT JOIN `v_organisation_jahr_last` organisation_jahr
ON organisation_jahr.organisation_id = o.id
;

CREATE OR REPLACE VIEW `v_organisation_anhang` AS
SELECT organisation_anhang.organisation_id as organisation_id2, organisation_anhang.*
FROM `organisation_anhang`;

CREATE OR REPLACE VIEW `v_mandat` AS SELECT mandat.* FROM `mandat`;

CREATE OR REPLACE VIEW `v_in_kommission` AS
SELECT in_kommission.*, rat.abkuerzung as rat, rat.abkuerzung as ratstyp, parlamentarier.partei_id, parlamentarier.fraktion_id, parlamentarier.freigabe_datum as parlamentarier_freigabe_datum, kanton.abkuerzung as kanton
FROM `in_kommission`
INNER JOIN `parlamentarier`
ON in_kommission.parlamentarier_id = parlamentarier.id
LEFT JOIN `kanton`
ON parlamentarier.kanton_id = kanton.id
LEFT JOIN `rat`
ON parlamentarier.rat_id = rat.id;

CREATE OR REPLACE VIEW `v_organisation_beziehung` AS
SELECT organisation_beziehung.*
FROM `organisation_beziehung`;

CREATE OR REPLACE VIEW `v_parlamentarier_anhang` AS
SELECT parlamentarier_anhang.parlamentarier_id as parlamentarier_id2, parlamentarier_anhang.*
FROM `parlamentarier_anhang`;

CREATE OR REPLACE VIEW `v_zutrittsberechtigung_anhang` AS
SELECT zutrittsberechtigung_anhang.zutrittsberechtigung_id as zutrittsberechtigung_id2, zutrittsberechtigung_anhang.*
FROM `zutrittsberechtigung_anhang`;

CREATE OR REPLACE VIEW `v_user` AS
SELECT IFNULL(CONCAT_WS(' ', u.vorname, u.nachname ), u.name) as anzeige_name, u.name as username, u.*
FROM `user` u;

CREATE OR REPLACE VIEW `v_user_permission` AS
SELECT t.*
FROM `user_permission` t;

CREATE OR REPLACE VIEW `v_mil_grad` AS
SELECT t.*
FROM `mil_grad` t
ORDER BY `ranghoehe` ASC;

CREATE OR REPLACE VIEW `v_parlamentarier_simple` AS
SELECT CONCAT(p.nachname, ', ', p.vorname) AS anzeige_name,
CONCAT_WS(' ', p.vorname, p.zweiter_vorname, p.nachname) AS name,
p.*
FROM `parlamentarier` p;

CREATE OR REPLACE VIEW `v_parlamentarier` AS
SELECT p.*,
rat.abkuerzung as rat, rat.abkuerzung as ratstyp, kanton.abkuerzung as kanton,
CAST(
(CASE rat.abkuerzung
  WHEN 'SR' THEN ROUND(kanton.einwohner / kanton.anzahl_staenderaete)
  WHEN 'NR' THEN ROUND(kanton.einwohner / kanton.anzahl_nationalraete)
  ELSE NULL
END)
AS UNSIGNED INTEGER) AS vertretene_bevoelkerung,
GROUP_CONCAT(DISTINCT CONCAT(k.name, '(', k.abkuerzung, ')') ORDER BY k.abkuerzung SEPARATOR ', ') kommissionen_namen,
--GROUP_CONCAT(DISTINCT CONCAT(k.name, '(', k.abkuerzung, ')') ORDER BY k.abkuerzung SEPARATOR ', ') kommissionen2,
GROUP_CONCAT(DISTINCT k.abkuerzung ORDER BY k.abkuerzung SEPARATOR ', ') kommissionen_abkuerzung, partei.abkuerzung AS partei, fraktion.abkuerzung AS fraktion, mil_grad.name as militaerischer_grad
FROM `v_parlamentarier_simple` p
LEFT JOIN `v_in_kommission` ik ON p.id = ik.parlamentarier_id AND ik.bis IS NULL
LEFT JOIN `v_kommission` k ON ik.kommission_id=k.id
LEFT JOIN `v_partei` partei ON p.partei_id=partei.id
LEFT JOIN `v_fraktion` fraktion ON p.fraktion_id=fraktion.id
LEFT JOIN `v_mil_grad` mil_grad ON p.militaerischer_grad_id=mil_grad.id
LEFT JOIN `v_kanton` kanton ON p.kanton_id = kanton.id
LEFT JOIN `v_rat` rat ON p.rat_id = rat.id
GROUP BY p.id;

CREATE OR REPLACE VIEW `v_zutrittsberechtigung` AS
SELECT CONCAT(zutrittsberechtigung.nachname, ', ', zutrittsberechtigung.vorname) AS anzeige_name, CONCAT(zutrittsberechtigung.vorname, ' ', zutrittsberechtigung.nachname) AS name,
zutrittsberechtigung.*,
partei.abkuerzung AS partei,
parlamentarier.anzeige_name as parlamentarier_name, parlamentarier.freigabe_datum as parlamentarier_freigabe_datum
FROM `zutrittsberechtigung`
LEFT JOIN `v_partei` partei
ON zutrittsberechtigung.partei_id=partei.id
LEFT JOIN `v_parlamentarier` parlamentarier
ON parlamentarier.id = zutrittsberechtigung.parlamentarier_id;


-- Der der Kommissionen für Parlamenterier
-- Connector: in_kommission.parlamentarier_id
CREATE OR REPLACE VIEW `v_in_kommission_liste` AS
SELECT kommission.abkuerzung, kommission.name, in_kommission.*
FROM v_in_kommission in_kommission
INNER JOIN v_kommission kommission
  ON in_kommission.kommission_id = kommission.id
ORDER BY kommission.abkuerzung;

-- Parlamenterier einer Kommission
-- Connector: in_kommission.kommission_id
CREATE OR REPLACE VIEW `v_in_kommission_parlamentarier` AS
SELECT parlamentarier.anzeige_name as parlamentarier_name, parlamentarier.partei, parlamentarier.im_rat_seit, parlamentarier.im_rat_bis, in_kommission.*
FROM v_in_kommission in_kommission
INNER JOIN v_parlamentarier parlamentarier
  ON in_kommission.parlamentarier_id = parlamentarier.id
ORDER BY parlamentarier.anzeige_name;

-- Interessenbindung eines Parlamenteriers
-- Connector: interessenbindung.parlamentarier_id
CREATE OR REPLACE VIEW `v_interessenbindung_liste` AS
SELECT organisation.anzeige_name as organisation_name, interessenbindung.*
FROM v_interessenbindung interessenbindung
INNER JOIN v_organisation organisation
  ON interessenbindung.organisation_id = organisation.id
ORDER BY organisation.anzeige_name;

-- Indirekte Interessenbindungen eines Parlamenteriers
-- Connector: interessenbindung.parlamentarier_id
CREATE OR REPLACE VIEW `v_interessenbindung_liste_indirekt` AS
SELECT 'direkt' as beziehung, interessenbindung_liste.* FROM v_interessenbindung_liste interessenbindung_liste
UNION
SELECT 'indirekt' as beziehung, organisation.anzeige_name as organisation_name, interessenbindung.*
FROM v_interessenbindung interessenbindung
INNER JOIN v_organisation_beziehung organisation_beziehung
  ON interessenbindung.organisation_id = organisation_beziehung.organisation_id
INNER JOIN v_organisation organisation
  ON organisation_beziehung.ziel_organisation_id = organisation.id
WHERE
  organisation_beziehung.art = 'arbeitet fuer'
ORDER BY beziehung, organisation_name;

-- Mandate einer Zutrittsberechtigung (INNER JOIN)
-- Connector: zutrittsberechtigung.parlamentarier_id
CREATE OR REPLACE VIEW `v_zutrittsberechtigung_mandate` AS
SELECT zutrittsberechtigung.parlamentarier_id, organisation.anzeige_name as organisation_name, zutrittsberechtigung.anzeige_name as zutrittsberechtigung_name, zutrittsberechtigung.funktion, mandat.*
FROM v_zutrittsberechtigung zutrittsberechtigung
INNER JOIN v_mandat mandat
  ON zutrittsberechtigung.id = mandat.zutrittsberechtigung_id
INNER JOIN v_organisation organisation
  ON mandat.organisation_id = organisation.id
ORDER BY organisation.anzeige_name;

-- Mandate einer Zutrittsberechtigung (LFET JOIN)
-- Connector: zutrittsberechtigung.parlamentarier_id
CREATE OR REPLACE VIEW `v_zutrittsberechtigung_mit_mandaten` AS
SELECT organisation.anzeige_name as organisation_name, zutrittsberechtigung.anzeige_name as zutrittsberechtigung_name, zutrittsberechtigung.funktion, zutrittsberechtigung.parlamentarier_id, mandat.*
FROM v_zutrittsberechtigung zutrittsberechtigung
LEFT JOIN v_mandat mandat
  ON zutrittsberechtigung.id = mandat.zutrittsberechtigung_id
LEFT JOIN v_organisation organisation
  ON mandat.organisation_id = organisation.id
ORDER BY zutrittsberechtigung.anzeige_name;

-- Indirekte Mandate einer Zutrittsberechtigung (INNER JOIN)
-- Connector: zutrittsberechtigung.parlamentarier_id
CREATE OR REPLACE VIEW `v_zutrittsberechtigung_mit_mandaten_indirekt` AS
SELECT 'direkt' as beziehung, zutrittsberechtigung.* FROM v_zutrittsberechtigung_mit_mandaten zutrittsberechtigung
UNION
SELECT 'indirekt' as beziehung, organisation.name as organisation_name, zutrittsberechtigung.anzeige_name as zutrittsberechtigung_name, zutrittsberechtigung.funktion, zutrittsberechtigung.parlamentarier_id, mandat.*
FROM v_zutrittsberechtigung zutrittsberechtigung
INNER JOIN v_mandat mandat
  ON zutrittsberechtigung.id = mandat.zutrittsberechtigung_id
INNER JOIN v_organisation_beziehung organisation_beziehung
  ON mandat.organisation_id = organisation_beziehung.organisation_id
INNER JOIN v_organisation organisation
  ON organisation_beziehung.ziel_organisation_id = organisation.id
WHERE
  organisation_beziehung.art = 'arbeitet fuer'
ORDER BY beziehung, organisation_name;

-- Organisationen für welche eine PR-Agentur arbeitet.
-- Connector: organisation_beziehung.organisation_id
CREATE OR REPLACE VIEW `v_organisation_beziehung_arbeitet_fuer` AS
SELECT organisation.anzeige_name as organisation_name, organisation_beziehung.organisation_id, organisation_beziehung.ziel_organisation_id, organisation_beziehung.art, organisation_beziehung.von, organisation_beziehung.bis, organisation.*
FROM v_organisation_beziehung organisation_beziehung
INNER JOIN v_organisation organisation
  ON organisation_beziehung.ziel_organisation_id = organisation.id
WHERE
  organisation_beziehung.art = 'arbeitet fuer'
ORDER BY organisation.anzeige_name;

-- Organisationen, die eine PR-Firma beauftragt haben.
-- Connector: organisation_beziehung.ziel_organisation_id
-- Reverse Beziehung
CREATE OR REPLACE VIEW `v_organisation_beziehung_auftraggeber_fuer` AS
SELECT organisation.anzeige_name as organisation_name, organisation_beziehung.organisation_id, organisation_beziehung.ziel_organisation_id, organisation_beziehung.art, organisation_beziehung.von, organisation_beziehung.bis, organisation.*
FROM v_organisation_beziehung organisation_beziehung
INNER JOIN v_organisation organisation
  ON organisation_beziehung.organisation_id = organisation.id
WHERE
  organisation_beziehung.art = 'arbeitet fuer'
ORDER BY organisation.anzeige_name;

-- Organisationen, in welcher eine Organisation Mitglied ist.
-- Connector: organisation_beziehung.organisation_id
CREATE OR REPLACE VIEW `v_organisation_beziehung_mitglied_von` AS
SELECT organisation.anzeige_name as organisation_name, organisation_beziehung.organisation_id, organisation_beziehung.ziel_organisation_id, organisation_beziehung.art, organisation_beziehung.von, organisation_beziehung.bis, organisation.*
FROM v_organisation_beziehung organisation_beziehung
INNER JOIN v_organisation organisation
  ON organisation_beziehung.ziel_organisation_id = organisation.id
WHERE
  organisation_beziehung.art = 'mitglied von'
ORDER BY organisation.anzeige_name;

-- Mitgliedsorganisationen
-- Connector: organisation_beziehung.ziel_organisation_id
-- Reverse Beziehung
CREATE OR REPLACE VIEW `v_organisation_beziehung_mitglieder` AS
SELECT organisation.anzeige_name as organisation_name, organisation_beziehung.organisation_id, organisation_beziehung.ziel_organisation_id, organisation_beziehung.art, organisation_beziehung.von, organisation_beziehung.bis, organisation.*
FROM v_organisation_beziehung organisation_beziehung
INNER JOIN v_organisation organisation
  ON organisation_beziehung.organisation_id = organisation.id
WHERE
  organisation_beziehung.art = 'mitglied von'
ORDER BY organisation.anzeige_name;

-- Muttergesellschaften.
-- Connector: organisation_beziehung.organisation_id
CREATE OR REPLACE VIEW `v_organisation_beziehung_muttergesellschaft` AS
SELECT organisation.anzeige_name as organisation_name, organisation_beziehung.organisation_id, organisation_beziehung.ziel_organisation_id, organisation_beziehung.art, organisation_beziehung.von, organisation_beziehung.bis, organisation.*
FROM v_organisation_beziehung organisation_beziehung
INNER JOIN v_organisation organisation
  ON organisation_beziehung.ziel_organisation_id = organisation.id
WHERE
  organisation_beziehung.art = 'tochtergesellschaft von'
ORDER BY organisation.anzeige_name;

-- Tochtergesellschaften
-- Connector: organisation_beziehung.ziel_organisation_id
-- Reverse Beziehung
CREATE OR REPLACE VIEW `v_organisation_beziehung_tochtergesellschaften` AS
SELECT organisation.anzeige_name as organisation_name, organisation_beziehung.organisation_id, organisation_beziehung.ziel_organisation_id, organisation_beziehung.art, organisation_beziehung.von, organisation_beziehung.bis, organisation.*
FROM v_organisation_beziehung organisation_beziehung
INNER JOIN v_organisation organisation
  ON organisation_beziehung.organisation_id = organisation.id
WHERE
  organisation_beziehung.art = 'tochtergesellschaft von'
ORDER BY organisation.anzeige_name;

-- Parlamenterier, die eine Interessenbindung zu dieser Organisation haben.
-- Connector: interessenbindung.organisation_id
CREATE OR REPLACE VIEW `v_organisation_parlamentarier` AS
SELECT parlamentarier.anzeige_name as parlamentarier_name, interessenbindung.*
FROM v_interessenbindung interessenbindung
INNER JOIN v_parlamentarier parlamentarier
  ON interessenbindung.parlamentarier_id = parlamentarier.id
ORDER BY parlamentarier.anzeige_name;

-- Parlamenterier, die eine indirekte Interessenbindung zu dieser Organisation haben.
-- Connector: connector_organisation_id
-- Reverse Beziehung
CREATE OR REPLACE VIEW `v_organisation_parlamentarier_indirekt` AS
SELECT 'direkt' as beziehung, organisation_parlamentarier.*, organisation_parlamentarier.organisation_id as connector_organisation_id FROM v_organisation_parlamentarier organisation_parlamentarier
UNION
SELECT 'indirekt' as beziehung, parlamentarier.anzeige_name as parlamentarier_name, interessenbindung.*, organisation_beziehung.ziel_organisation_id as connector_organisation_id
FROM v_organisation_beziehung organisation_beziehung
INNER JOIN v_interessenbindung interessenbindung
  ON organisation_beziehung.organisation_id = interessenbindung.organisation_id
INNER JOIN v_parlamentarier parlamentarier
  ON interessenbindung.parlamentarier_id = parlamentarier.id
WHERE
  organisation_beziehung.art = 'arbeitet fuer'
ORDER BY beziehung, parlamentarier_name;

-- Parlamenterier, die eine Zutrittsberechtiung mit Mandant oder Interessenbindung zu dieser Organisation haben.
-- Connector: organisation_id oder parlamentarier_id
CREATE OR REPLACE VIEW `v_organisation_parlamentarier_beide` AS
SELECT 'interessenbindung' as verbindung, parlamentarier.id as parlamentarier_id, parlamentarier.anzeige_name as parlamentarier_name, parlamentarier.ratstyp, parlamentarier.kanton, parlamentarier.partei_id, parlamentarier.partei, parlamentarier.kommissionen, parlamentarier.parlament_biografie_id, NULL as zutrittsberechtigung_id, NULL as zutrittsberechtigter, interessenbindung.art, interessenbindung.von, interessenbindung.bis,  interessenbindung.organisation_id
FROM v_interessenbindung interessenbindung
INNER JOIN v_parlamentarier parlamentarier
  ON interessenbindung.parlamentarier_id = parlamentarier.id
UNION
SELECT 'zutritt-mandat' as verbindung, parlamentarier.id as parlamentarier_id, parlamentarier.anzeige_name as parlamentarier_name, parlamentarier.ratstyp, parlamentarier.kanton, parlamentarier.partei_id, parlamentarier.partei, parlamentarier.kommissionen, parlamentarier.parlament_biografie_id, zutrittsberechtigung.id as zutrittsberechtigung_id, zutrittsberechtigung.anzeige_name as zutrittsberechtigter, mandat.art, mandat.von, mandat.bis, mandat.organisation_id
FROM v_zutrittsberechtigung zutrittsberechtigung
INNER JOIN v_mandat mandat
  ON mandat.zutrittsberechtigung_id = zutrittsberechtigung.id
INNER JOIN v_parlamentarier parlamentarier
  ON zutrittsberechtigung.parlamentarier_id = parlamentarier.id;

-- Parlamenterier, die eine indirekte Interessenbindung oder indirekte Zutrittsberechtiung mit Mandat zu dieser Organisation haben.
-- Connector: connector_organisation_id oder parlamentarier_id
-- Reverse Beziehung
CREATE OR REPLACE VIEW `v_organisation_parlamentarier_beide_indirekt` AS
SELECT 'direkt' as beziehung, organisation_parlamentarier.verbindung, organisation_parlamentarier.parlamentarier_id, organisation_parlamentarier.parlamentarier_name, organisation_parlamentarier.ratstyp, organisation_parlamentarier.kanton, organisation_parlamentarier.partei_id, organisation_parlamentarier.partei, organisation_parlamentarier.kommissionen, organisation_parlamentarier.parlament_biografie_id, organisation_parlamentarier.zutrittsberechtigung_id, organisation_parlamentarier.zutrittsberechtigter, organisation_parlamentarier.art, organisation_parlamentarier.von, organisation_parlamentarier.bis, NULL as zwischenorganisation_id, organisation_parlamentarier.organisation_id as connector_organisation_id
FROM v_organisation_parlamentarier_beide organisation_parlamentarier
UNION
SELECT 'indirekt' as beziehung, 'interessenbindung' as verbindung, parlamentarier.id as parlamentarier_id, parlamentarier.anzeige_name as parlamentarier_name, parlamentarier.ratstyp, parlamentarier.kanton, parlamentarier.partei_id, parlamentarier.partei, parlamentarier.kommissionen, parlamentarier.parlament_biografie_id, NULL as zutrittsberechtigung_id, NULL as zutrittsberechtigter, interessenbindung.art, interessenbindung.von, interessenbindung.bis, organisation_beziehung.organisation_id as zwischenorganisation_id, organisation_beziehung.ziel_organisation_id as connector_organisation_id
FROM v_organisation_beziehung organisation_beziehung
INNER JOIN v_interessenbindung interessenbindung
  ON organisation_beziehung.organisation_id = interessenbindung.organisation_id
INNER JOIN v_parlamentarier parlamentarier
  ON interessenbindung.parlamentarier_id = parlamentarier.id
WHERE
  organisation_beziehung.art = 'arbeitet fuer'
UNION
SELECT 'indirekt' as beziehung, 'zutritt-mandat' as verbindung, parlamentarier.id as parlamentarier_id, parlamentarier.anzeige_name as parlamentarier_name, parlamentarier.ratstyp, parlamentarier.kanton, parlamentarier.partei_id, parlamentarier.partei, parlamentarier.kommissionen, parlamentarier.parlament_biografie_id, zutrittsberechtigung.id as zutrittsberechtigung_id, zutrittsberechtigung.anzeige_name as zutrittsberechtigter, mandat.art, mandat.von, mandat.bis, organisation_beziehung.organisation_id as zwischenorganisation_id, organisation_beziehung.ziel_organisation_id as connector_organisation_id
FROM v_organisation_beziehung organisation_beziehung
INNER JOIN v_mandat mandat
  ON organisation_beziehung.organisation_id = mandat.organisation_id
INNER JOIN v_zutrittsberechtigung zutrittsberechtigung
  ON mandat.zutrittsberechtigung_id = zutrittsberechtigung.id
INNER JOIN v_parlamentarier parlamentarier
  ON zutrittsberechtigung.parlamentarier_id = parlamentarier.id
WHERE
  organisation_beziehung.art = 'arbeitet fuer';

-- Authorisieurngsemail Interessenbindung für Parlamenterier
-- Connector: interessenbindung.parlamentarier_id
CREATE OR REPLACE VIEW `v_interessenbindung_authorisierungs_email` AS
SELECT parlamentarier.name as parlamentarier_name, IFNULL(parlamentarier.geschlecht, '') geschlecht, organisation.anzeige_name as organisation_name, IFNULL(organisation.rechtsform,'') rechtsform, IFNULL(organisation.ort,'') ort, interessenbindung.art, interessenbindung.beschreibung
FROM v_interessenbindung interessenbindung
INNER JOIN v_organisation organisation
  ON interessenbindung.organisation_id = organisation.id
INNER JOIN v_parlamentarier parlamentarier
  ON interessenbindung.parlamentarier_id = parlamentarier.id
ORDER BY organisation.anzeige_name;

-- Authorisieurngsemail Interessenbindung für Parlamenterier
-- Connector: interessenbindung.parlamentarier_id
CREATE OR REPLACE VIEW `v_zutrittsberechtigung_authorisierungs_email` AS
SELECT parlamentarier.name as parlamentarier_name, IFNULL(parlamentarier.geschlecht, '') geschlecht, zutrittsberechtigung.name zutrittsberechtigung_name, zutrittsberechtigung.funktion
FROM v_zutrittsberechtigung zutrittsberechtigung
INNER JOIN v_parlamentarier parlamentarier
  ON zutrittsberechtigung.parlamentarier_id = parlamentarier.id
GROUP BY parlamentarier.id;

-- Authorisieurngsemail Interessenbindung für Parlamenterier
-- Connector: interessenbindung.parlamentarier_id
CREATE OR REPLACE VIEW `v_interessenbindung_authorisierungs_email` AS
SELECT parlamentarier.name as parlamentarier_name, IFNULL(parlamentarier.geschlecht, '') geschlecht, organisation.anzeige_name as organisation_name, IFNULL(organisation.rechtsform,'') rechtsform, IFNULL(organisation.ort,'') ort, interessenbindung.art, interessenbindung.beschreibung
FROM v_interessenbindung interessenbindung
INNER JOIN v_organisation organisation
  ON interessenbindung.organisation_id = organisation.id
INNER JOIN v_parlamentarier parlamentarier
  ON interessenbindung.parlamentarier_id = parlamentarier.id
GROUP BY parlamentarier.id
ORDER BY organisation.anzeige_name;

-- Authorisieurngsemail Interessenbindung für Parlamenterier
-- Connector: parlamentarier_id
CREATE OR REPLACE VIEW `v_parlamentarier_authorisierungs_email` AS
SELECT parlamentarier.id, parlamentarier.anzeige_name as parlamentarier_name, parlamentarier.email,
CONCAT(
  CASE parlamentarier.geschlecht
    WHEN 'M' THEN CONCAT('<p>Sehr geehrter Herr ', parlamentarier.nachname, '</p>')
    WHEN 'F' THEN CONCAT('<p>Sehr geehrte Frau ', parlamentarier.nachname, '</p>')
    ELSE CONCAT('<p>Sehr geehrte(r) Herr/Frau ', parlamentarier.nachname, '</p>')
  END,
  '<p>[Einleitung]</p>',
  '<p>Ihre <b>Interessenbindungen</b>:</p>',
  '<ul>',
  GROUP_CONCAT(DISTINCT
    CONCAT('<li>', organisation.anzeige_name, IF(organisation.rechtsform IS NULL OR TRIM(organisation.rechtsform) = '', '', CONCAT(', ', organisation.rechtsform)), IF(organisation.ort IS NULL OR TRIM(organisation.ort) = '', '', CONCAT(', ', organisation.ort)), ', ', interessenbindung.art, ', ', IFNULL(interessenbindung.beschreibung, ''))
    ORDER BY organisation.anzeige_name
    SEPARATOR ' '
  ),
  '</ul>',
  '<p>Ihre <b>Gäste</b>:</p>',
  '<ul>',
  GROUP_CONCAT(DISTINCT
    CONCAT('<li>', zutrittsberechtigung.name, ', ', zutrittsberechtigung.funktion)
    ORDER BY zutrittsberechtigung.name
    SEPARATOR ' '
  ),
  '</ul>',
  '<p><b>Mandate</b> der Gäste:</p>',
  '<ul>',
  GROUP_CONCAT(DISTINCT
    CONCAT('<li>', zutrittsberechtigung.name, ', ', zutrittsberechtigung.funktion,
    IF (organisation2.id IS NOT NULL,
      CONCAT(', ',
        organisation2.anzeige_name
        , IF(organisation2.rechtsform IS NULL OR TRIM(organisation2.rechtsform) = '', '', CONCAT(', ', organisation2.rechtsform)), IF(organisation2.ort IS NULL OR TRIM(organisation2.ort) = '', '', CONCAT(', ', organisation2.ort)), ', '
        , IFNULL(mandat.art, ''), ', ', IFNULL(mandat.beschreibung, '')
      ),
      '')
    )
    ORDER BY zutrittsberechtigung.name, organisation2.anzeige_name
    SEPARATOR ' '
  ),
  '</ul>',
  '<p>Freundliche Grüsse<br></p>'
) email_text_html,
UTF8_URLENCODE(CONCAT(
  CASE parlamentarier.geschlecht
    WHEN 'M' THEN CONCAT('Sehr geehrter Herr ', parlamentarier.nachname, '\r\n')
    WHEN 'F' THEN CONCAT('Sehr geehrte Frau ', parlamentarier.nachname, '\r\n')
    ELSE CONCAT('Sehr geehrte(r) Herr/Frau ', parlamentarier.nachname, '\r\n')
  END,
  '\r\n[Ersetze Text mit HTML-Vorlage]\r\n',
  'Ihre Interessenbindungen:\r\n',
  GROUP_CONCAT(DISTINCT
    CONCAT('* ', organisation.anzeige_name, IF(organisation.rechtsform IS NULL OR TRIM(organisation.rechtsform) = '', '', CONCAT(', ', organisation.rechtsform)), IF(organisation.ort IS NULL OR TRIM(organisation.ort) = '', '', CONCAT(', ', organisation.ort)), ', ', interessenbindung.art, ', ', IFNULL(interessenbindung.beschreibung, ''), '\r\n')
    ORDER BY organisation.anzeige_name
    SEPARATOR ' '
  ),
  '\r\nIhre Gäste:\r\n',
  GROUP_CONCAT(DISTINCT
    CONCAT('* ', zutrittsberechtigung.name, ', ', zutrittsberechtigung.funktion, '\r\n')
    ORDER BY organisation.anzeige_name
    SEPARATOR ' '
  ),
  '\r\nMit freundlichen Grüssen,\r\n'
)) email_text_for_url
FROM v_parlamentarier parlamentarier
LEFT JOIN v_interessenbindung interessenbindung
  ON interessenbindung.parlamentarier_id = parlamentarier.id AND interessenbindung.bis IS NULL
LEFT JOIN v_organisation organisation
  ON interessenbindung.organisation_id = organisation.id
LEFT JOIN v_zutrittsberechtigung zutrittsberechtigung
  ON zutrittsberechtigung.parlamentarier_id = parlamentarier.id AND zutrittsberechtigung.bis IS NULL
LEFT JOIN v_mandat mandat
  ON mandat.zutrittsberechtigung_id = zutrittsberechtigung.id AND mandat.bis IS NULL
LEFT JOIN v_organisation organisation2
  ON mandat.organisation_id = organisation2.id
WHERE
  parlamentarier.im_rat_bis IS NULL
GROUP BY parlamentarier.id;
