CREATE TABLE IF NOT EXISTS `cpulse` (
  id         INT NOT NULL AUTO_INCREMENT,
  uuid       VARBINARY(128),
  name       VARCHAR(128),
  state      VARCHAR(128),
  created_at TIMESTAMP    DEFAULT current_timestamp,
  updated_at TIMESTAMP    DEFAULT 0,
  testtype   VARBINARY(128),
  result     TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS cpulselock (
  id           INT NOT NULL AUTO_INCREMENT,
  test_name    VARBINARY(128),
  conductor_id VARBINARY(128),
  created_at   TIMESTAMP    DEFAULT current_timestamp,
  updated_at   TIMESTAMP    DEFAULT 0,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS cloudpulse_tests (
  id           INT NOT NULL AUTO_INCREMENT,
  uuid       VARBINARY(128),
  created_at   TIMESTAMP    DEFAULT current_timestamp,
  updated_at   TIMESTAMP    DEFAULT 0,
  type    VARCHAR(128),
  name    VARCHAR(128),
  endpoint VARCHAR(128),
  commands     TEXT,
  enabled     BOOLEAN,

  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS service_tests (
  id           INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  service      VARCHAR(128),
  name         VARCHAR(128),
  command      VARCHAR(128),
  PRIMARY KEY (id)
);
