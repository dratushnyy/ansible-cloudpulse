CREATE TABLE `cpulse` (
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