CREATE TABLE IF NOT EXISTS tki_ships (
  ship_id integer NOT NULL DEFAULT nextval('tki_ships_ship_id_seq'),
  ship_name character varying(20) DEFAULT NULL,
  ship_destroyed character varying(1) NOT NULL DEFAULT 'N',
  character_name character varying(20) NOT NULL,
  "password" character varying(255) NOT NULL,
  recovery_time integer DEFAULT NULL,
  email character varying(60) DEFAULT NULL,
  hull integer NOT NULL DEFAULT '0',
  "engines" integer NOT NULL DEFAULT '0',
  power integer NOT NULL DEFAULT '0',
  computer integer NOT NULL DEFAULT '0',
  sensors integer NOT NULL DEFAULT '0',
  beams integer NOT NULL DEFAULT '0',
  torp_launchers integer NOT NULL DEFAULT '0',
  torps integer NOT NULL DEFAULT '0',
  shields integer NOT NULL DEFAULT '0',
  armor integer NOT NULL DEFAULT '0',
  armor_pts integer NOT NULL DEFAULT '0',
  cloak integer NOT NULL DEFAULT '0',
  credits integer NOT NULL DEFAULT '0',
  sector integer NOT NULL DEFAULT '1',
  ship_ore integer NOT NULL DEFAULT '0',
  ship_organics integer NOT NULL DEFAULT '0',
  ship_goods integer NOT NULL DEFAULT '0',
  ship_energy integer NOT NULL DEFAULT '0',
  ship_colonists integer NOT NULL DEFAULT '0',
  ship_fighters integer NOT NULL DEFAULT '0',
  ship_damage integer NOT NULL DEFAULT '0',
  turns integer NOT NULL DEFAULT '0',
  on_planet character varying(1) NOT NULL DEFAULT 'N',
  dev_warpedit integer NOT NULL DEFAULT '0',
  dev_genesis integer NOT NULL DEFAULT '0',
  dev_beacon integer NOT NULL DEFAULT '0',
  dev_emerwarp integer NOT NULL DEFAULT '0',
  dev_escapepod character varying(1) NOT NULL DEFAULT 'N',
  dev_fuelscoop character varying(1) NOT NULL DEFAULT 'N',
  dev_minedeflector integer NOT NULL DEFAULT '0',
  turns_used integer NOT NULL DEFAULT '0',
  last_login timestamp without time zone DEFAULT NULL,
  rating integer NOT NULL DEFAULT '0',
  score integer NOT NULL DEFAULT '0',
  team integer NOT NULL DEFAULT '0',
  team_invite integer NOT NULL DEFAULT '0',
  ip_address character varying(16) NOT NULL,
  planet_id integer NOT NULL DEFAULT '0',
  trade_colonists character varying(1) NOT NULL DEFAULT 'Y',
  trade_fighters character varying(1) NOT NULL DEFAULT 'N',
  trade_torps character varying(1) NOT NULL DEFAULT 'N',
  trade_energy character varying(1) NOT NULL DEFAULT 'Y',
  cleared_defenses character varying(99) DEFAULT NULL,
  lang character varying(30) NOT NULL DEFAULT 'english.inc',
  dev_lssd character varying(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (ship_id)
);
