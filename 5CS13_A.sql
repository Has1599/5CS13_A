--
-- File generated with SQLiteStudio v3.4.21 on Mon Apr 27 20:48:08 2026
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Admin Users
CREATE TABLE IF NOT EXISTS "Admin Users" ("AdminUser ID" INTEGER NOT NULL, "Full Name" TEXT NOT NULL, Password TEXT, Role TEXT NOT NULL, Department TEXT, Team TEXT NOT NULL, Email TEXT NOT NULL, "Phone Number" TEXT NOT NULL);
INSERT INTO "Admin Users" ("AdminUser ID", "Full Name", Password, Role, Department, Team, Email, "Phone Number") VALUES (1, 'Sarah Johnson', 'password1', 'Team Leader', 'xTV_Web', 'Frontend Development ', 'SarahJohnson@gmail.com', '+44 3124 314-4134');
INSERT INTO "Admin Users" ("AdminUser ID", "Full Name", Password, Role, Department, Team, Email, "Phone Number") VALUES (2, 'Ben Wiliams', 'password2', 'Department Leader', 'Mobile', 'N/A', 'BenWilliams@yahoo.com', '+44 1431 133-1413');

-- Table: auth_group
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- Table: auth_group_permissions
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_permission
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 3, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 3, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 3, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 3, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 2, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 2, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 2, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 2, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');

-- Table: auth_user
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);

-- Table: auth_user_groups
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_user_user_permissions
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: Code Warriors
CREATE TABLE IF NOT EXISTS "Code Warriors" (MemberID INTEGER PRIMARY KEY NOT NULL, "Full Name", TeamID INTEGER REFERENCES xTV_Web (TeamID), Role TEXT NOT NULL, Email TEXT NOT NULL, "Phone Number" TEXT NOT NULL, Github TEXT NOT NULL, Slack TEXT NOT NULL, LinkedIn TEXT NOT NULL);
INSERT INTO "Code Warriors" (MemberID, "Full Name", TeamID, Role, Email, "Phone Number", Github, Slack, LinkedIn) VALUES (1, 'Alex Thompson', 1, 'Engineering Manager', 'alex.t@sky.com', '+44 20 7123 4567', 'github.com/alext', 'slack.com/alext', 'linkedin.com/alext');
INSERT INTO "Code Warriors" (MemberID, "Full Name", TeamID, Role, Email, "Phone Number", Github, Slack, LinkedIn) VALUES (2, 'Sarah Chen', 7, 'Tech Lead', 'sarah.c@sky.com', '+44 20 7123 4568', 'github.com/sarahc', 'lack.com/sarahc', 'linkedin.com/sarahc');

-- Table: django_admin_log
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);

-- Table: django_content_type
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');

-- Table: django_migrations
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2026-04-27 19:03:10.368281');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2026-04-27 19:03:10.378544');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2026-04-27 19:03:10.385401');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2026-04-27 19:03:10.403820');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2026-04-27 19:03:10.408393');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2026-04-27 19:03:10.419752');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2026-04-27 19:03:10.425355');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2026-04-27 19:03:10.431553');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2026-04-27 19:03:10.435681');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2026-04-27 19:03:10.442802');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2026-04-27 19:03:10.443844');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2026-04-27 19:03:10.448411');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2026-04-27 19:03:10.454034');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2026-04-27 19:03:10.460128');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2026-04-27 19:03:10.466303');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2026-04-27 19:03:10.471426');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2026-04-27 19:03:10.477037');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2026-04-27 19:03:10.479745');

-- Table: django_session
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);

-- Table: Users
CREATE TABLE IF NOT EXISTS Users ("User ID" INTEGER PRIMARY KEY NOT NULL, "Full Name" TEXT NOT NULL, Password TEXT, Role TEXT NOT NULL, Department TEXT NOT NULL, Team TEXT NOT NULL, Email TEXT NOT NULL, "Phone Number" TEXT NOT NULL);
INSERT INTO Users ("User ID", "Full Name", Password, Role, Department, Team, Email, "Phone Number") VALUES (1, 'John Doe', 'password1', 'Engineer', 'xTV_Web', 'Frontend Development', 'JohnDoe@gmail.com', '+44 1423 143-4132');
INSERT INTO Users ("User ID", "Full Name", Password, Role, Department, Team, Email, "Phone Number") VALUES (2, 'Alice Smith', 'PassWord2', 'Backend Developer', 'Mobile', 'Byte Force', 'AliceSmith@yahoo.com', '+44 132 412-3123');

-- Table: xTV_Web
CREATE TABLE IF NOT EXISTS xTV_Web (TeamID INTEGER PRIMARY KEY NOT NULL, "Team Name" TEXT NOT NULL, "Team Leader" TEXT NOT NULL, DepartmentID INTEGER, "Department Head" TEXT NOT NULL, "Jira Project Name" TEXT, Workstream TEXT, "Project(codebase)(Github)" TEXT NOT NULL, "Jira Board Link" TEXT NOT NULL, "Development Focus Areas" TEXT NOT NULL, "Key Skills & Technologies" TEXT NOT NULL, "Downstream Dependencies" TEXT NOT NULL, "Dependency Type" TEXT NOT NULL, Software TEXT, "Versioning Approaches" TEXT, "Wiki Search Terms" TEXT, "Slack Channels" TEXT, "Daily Standup Time and Link" TEXT, "Agile Practices" TEXT, "Team Wiki" TEXT NOT NULL);
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (1, 'Code Warriors', 'Olivia Carter', 1, 'Sebastian Holt', 'Client Lighting Xtv', NULL, 'tiny.cc/x9b4b', 'short.ly/a7XbP3', 'Infrastructure scalability, CI/CD integration, platform resilience', 'AWS/GCP, Terraform, Kubernetes, CI/CD, Docker, Python, Bash', 'The Debuggers', 'Infrastructure Support', NULL, NULL, NULL, NULL, NULL, NULL, 'fake.ly/X9TQ74M');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (2, 'The Debuggers', 'James Bennett', 1, 'Sebastian Holt', 'Client Lightning Xtv', NULL, 'bit.ly/3FgTzX', 'tiny.link/ZpQ4M9', 'Advanced debugging tools, automated error detection, root cause analysis', 'Debugging tools (GDB, LLDB), Stack traces, Log analysis, Python, Java', 'Bit Masters', 'Bug Resolution', NULL, NULL, NULL, NULL, NULL, NULL, 'shorter.io/MTX97Q4');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (3, 'Bit Masters', 'Emma Richardson', 1, 'Sebastian Holt', 'Client Lightning Xtv', NULL, 't.ly/8YpQm', 'bitly.io/7XQM94T', 'Security compliance, encryption techniques, data integrity', 'Cryptography, Penetration Testing, Security Compliance (ISO 27001)', 'API Avengers', 'Security Fixes', NULL, NULL, NULL, NULL, NULL, NULL, 'tinyjump.me/7T9QX4M');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (4, 'Agile Avengers', 'Benjamin Hayes', 1, 'Sebastian Holt', 'Client Lightning Xtv', NULL, 'goo.gl/R2X7Pd', 'shrt.me/M7QXT49', 'Agile transformation, workflow optimization, lean process improvement', 'Agile frameworks (Scrum, SAFe, Kanban), Jira, Miro, Confluence', 'The Sprint Kings', 'Agile Coaching', NULL, NULL, NULL, 'peacock-bravo, gst-xtv-commerce, gst-xtv-bravo-frontdoor', NULL, NULL, 'noway.cc/QX7MT94');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (5, 'Syntax Squad', 'Sophia Mitchell', 1, 'Sebastian Holt', 'Client Lightning Xtv', NULL, 'tinyurl.com/y7n3lxp2', 'fakeurl.net/X94TQM7', 'Automated deployment pipelines, release management, rollback strategies', 'CI/CD, GitHub Actions, Jenkins, YAML, Kubernetes, Helm Charts', 'The Feature Crafters', 'Deployment Pipeline', NULL, NULL, NULL, NULL, NULL, NULL, 'notreal.co/TQX79M4');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (6, 'The Codebreakers', 'William Cooper', 1, 'Sebastian Holt', 'Client Lightning Xtv', NULL, 'bit.do/rJ4mT', 'notreal.ly/MTQX947', 'Cryptographic security, authentication protocols, secure APIs', 'Cybersecurity, Ethical Hacking, Encryption (AES, RSA), SSL/TLS', 'The Encryption Squad', 'Encryption Logic', NULL, NULL, NULL, NULL, NULL, NULL, 'zapclick.io/MTQ79X4');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (7, 'DevOps Dynasty', 'Isabella Ross', 1, 'Sebastian Holt', NULL, NULL, 'is.gd/Kp4XQ9', 'quick.li/9X7TQ4M', 'DevOps best practices, Kubernetes orchestration, cloud automation', 'Kubernetes, Terraform, Ansible, CI/CD, AWS/GCP, Docker, Linux
', 'Code Warriors', 'CI/CD Infrastructure', NULL, NULL, NULL, NULL, NULL, NULL, 'goquick.ly/Q7X9MT4');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (8, 'Byte Force', 'Elijah Parker', 1, 'Sebastian Holt', 'Client Lightning Xtv', NULL, 'short.io/L2rYQ5', 'go2.cc/MT7XQ49', 'Cloud infrastructure, API gateway development, serverless architecture', 'AWS Lambda, API Gateway, Microservices, GraphQL, Node.js, Go', 'API Avengers', 'Cloud Hosting Services', NULL, NULL, NULL, NULL, NULL, NULL, 'bitnot.cc/X79TQ4M');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (9, 'The Cloud Architects', 'Ava Sullivan', 1, 'Sebastian Holt', 'Client Lightning Xtv', NULL, 'tiny.cc/mQ7nX8', 'linktr.ee/7TQX94M', 'Cloud-native applications, distributed systems, multi-region deployments', 'Kubernetes, Istio, Terraform, AWS/GCP/Azure, Load Balancing', 'Byte Force, Cache Me Outside', 'Service Orchestration', NULL, NULL, NULL, NULL, NULL, NULL, 'shrinkurl.me/T79XQ4M');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (10, 'Full Stack Ninjas', 'Noah Campbell', 1, 'Sebastian Holt', 'Client Lightning Xtv', NULL, 'bit.ly/4Yx9TmR', 'jumpto.me/QX97MT4', 'Frontend and backend synchronization, API integration, UX/UI consistency', 'React, Node.js, TypeScript, GraphQL, Next.js, Django, REST APIs', 'The API Explorers', 'Frontend Design', NULL, NULL, NULL, NULL, NULL, NULL, 'tinygo.cc/QXMT749');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (11, 'The Error Handlers', 'Mia Henderson', 1, 'Nora Chandler', 'Client Web', NULL, 't.ly/xM7p9Q', 'tinygo.co/T9X7Q4M', 'Log aggregation, AI-driven anomaly detection, real-time monitoring', 'Logging (ELK, Splunk), APM (Datadog, New Relic), Exception Handling', 'The Debuggers', 'Error Logging Services', NULL, NULL, NULL, NULL, NULL, NULL, 'jumplink.io/X7MT9Q4');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (12, 'Stack Overflow Survivors', 'Lucas Foster', 1, 'Nora Chandler', 'Client Web', NULL, 'goo.gl/YX34Pn', 'click4.cc/X7TQM94', 'Knowledge management, engineering playbooks, documentation automation', 'Technical Documentation, Knowledge Sharing, Confluence, AI Bots', 'The Scrum Lords', 'Best Practices Sharing', NULL, NULL, NULL, NULL, NULL, NULL, 'voidjump.me/MTX97Q4');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (13, 'The Binary Beasts', 'Charlotte Murphy', 1, 'Nora Chandler', 'Client Web', NULL, 'tinyurl.com/98tXmLp', 'shortr.io/M9X7QT4', 'High-performance computing, low-latency data processing, algorithm efficiency', 'C/C++, Data Structures, Parallel Computing, GPU Programming', 'The Algorithm Alliance', 'Data Processing', NULL, NULL, NULL, NULL, NULL, NULL, 'shortpoint.cc/QX7T9M4');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (14, 'API Avengers', 'Henry Ward', 1, 'Nora Chandler', 'Client Web', NULL, 'bit.do/ZpL4TQ', 'fake.li/QXMT749', 'API security, authentication layers, API scalability', 'API Security (OAuth, JWT), Postman, OpenAPI/Swagger, REST, gRPC', 'The Dev Dragons', 'Secure API Development', NULL, NULL, NULL, NULL, NULL, NULL, 'clktr.im/T79XQ4M');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (15, 'The Algorithm Alliance', 'Amelia Brooks', 1, 'Nora Chandler', 'Client Web', NULL, 'is.gd/QxN7T9', 'notreal.cc/7QX9MT4', 'Machine learning models, AI-driven analytics, data science applications', 'Machine Learning, Data Science (Pandas, NumPy, Scikit-learn)', 'The Codebreakers', 'Advanced Algorithm Support', NULL, NULL, NULL, NULL, NULL, NULL, 'redirect4.me/7XMTQ94');

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: auth_user_groups_group_id_97559544
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Index: auth_user_groups_user_id_6a12ed8b
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Index: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
