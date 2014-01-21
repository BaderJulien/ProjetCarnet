CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nom" varchar(255), "email" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "encrypted_password" varchar(255), "salt" varchar(255));
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20121028005808');

INSERT INTO schema_migrations (version) VALUES ('20121028011255');

INSERT INTO schema_migrations (version) VALUES ('20121028235116');

INSERT INTO schema_migrations (version) VALUES ('20121028235330');