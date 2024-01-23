DROP TABLE IF EXISTS staff;

CREATE TABLE staff (
  id int unsigned AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  age int unsigned NOT NULL,
  company VARCHAR(100) NOT NULL,
  smoking BOOLEAN NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO staff (name, age, company, smoking) VALUES ("山本 太郎", 32, "株式会社A", false);
INSERT INTO staff (name, age, company, smoking) VALUES ("田中 二郎", 41, "株式会社B", true);
INSERT INTO staff (name, age, company, smoking) VALUES ("佐藤 三郎", 25, "株式会社C", false);
INSERT INTO staff (name, age, company, smoking) VALUES ("鈴木 四郎", 36, "株式会社A", true);
INSERT INTO staff (name, age, company, smoking) VALUES ("高橋 五郎", 29, "株式会社D", false);

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

