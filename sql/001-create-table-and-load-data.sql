DROP TABLE IF EXISTS staff;

CREATE TABLE staff (
  id int unsigned AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  age int unsigned NOT NULL,
  company_id int NOT NULL,
  smoking BOOLEAN NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO staff (name, age, company_id, smoking) VALUES ("山本 太郎", 32, 1, false);
INSERT INTO staff (name, age, company_id, smoking) VALUES ("田中 二郎", 41, 2, true);
INSERT INTO staff (name, age, company_id, smoking) VALUES ("佐藤 三郎", 25, 3, false);
INSERT INTO staff (name, age, company_id, smoking) VALUES ("鈴木 四郎", 36, 1, true);
INSERT INTO staff (name, age, company_id, smoking) VALUES ("高橋 五郎", 29, 4, false);

DROP TABLE IF EXISTS companies;

CREATE TABLE companies (
  id int unsigned AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  section VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO companies (name, section) VALUES ("株式会社A", "大道具");
INSERT INTO companies (name, section) VALUES ("株式会社B", "映像");
INSERT INTO companies (name, section) VALUES ("株式会社C", "照明");
INSERT INTO companies (name, section) VALUES ("株式会社D", "音響");

