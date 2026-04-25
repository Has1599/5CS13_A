--
-- File generated with SQLiteStudio v3.4.21 on Sat Apr 25 13:18:31 2026
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Admin Users
CREATE TABLE IF NOT EXISTS "Admin Users" ("AdminUser ID" INTEGER NOT NULL, "Full Name" TEXT NOT NULL, Password TEXT, Role TEXT NOT NULL, Department TEXT, Team TEXT NOT NULL, Email TEXT NOT NULL, "Phone Number" TEXT NOT NULL);
INSERT INTO "Admin Users" ("AdminUser ID", "Full Name", Password, Role, Department, Team, Email, "Phone Number") VALUES (1, 'Sarah Johnson', 'password1', 'Team Leader', 'xTV_Web', 'Frontend Development ', 'SarahJohnson@gmail.com', '+44 3124 314-4134');
INSERT INTO "Admin Users" ("AdminUser ID", "Full Name", Password, Role, Department, Team, Email, "Phone Number") VALUES (2, 'Ben Wiliams', 'password2', 'Department Leader', 'Mobile', 'N/A', 'BenWilliams@yahoo.com', '+44 1431 133-1413');

-- Table: Code Warriors
CREATE TABLE IF NOT EXISTS "Code Warriors" (MemberID INTEGER PRIMARY KEY NOT NULL, "Full Name", TeamID INTEGER REFERENCES xTV_Web (TeamID), Role TEXT NOT NULL, Email TEXT NOT NULL, "Phone Number" TEXT NOT NULL, Github TEXT NOT NULL, Slack TEXT NOT NULL, LinkedIn TEXT NOT NULL);
INSERT INTO "Code Warriors" (MemberID, "Full Name", TeamID, Role, Email, "Phone Number", Github, Slack, LinkedIn) VALUES (1, 'Alex Thompson', 1, 'Engineering Manager', 'alex.t@sky.com', '+44 20 7123 4567', 'github.com/alext', 'slack.com/alext', 'linkedin.com/alext');
INSERT INTO "Code Warriors" (MemberID, "Full Name", TeamID, Role, Email, "Phone Number", Github, Slack, LinkedIn) VALUES (2, 'Sarah Chen', 7, 'Tech Lead', 'sarah.c@sky.com', '+44 20 7123 4568', 'github.com/sarahc', 'lack.com/sarahc', 'linkedin.com/sarahc');

-- Table: Users
CREATE TABLE IF NOT EXISTS Users ("User ID" INTEGER PRIMARY KEY NOT NULL, "Full Name" TEXT NOT NULL, Password TEXT, Role TEXT NOT NULL, Department TEXT NOT NULL, Team TEXT NOT NULL, Email TEXT NOT NULL, "Phone Number" TEXT NOT NULL);
INSERT INTO Users ("User ID", "Full Name", Password, Role, Department, Team, Email, "Phone Number") VALUES (1, 'John Doe', 'password1', 'Engineer', 'xTV_Web', 'Frontend Development', 'JohnDoe@gmail.com', '+44 1423 143-4132');
INSERT INTO Users ("User ID", "Full Name", Password, Role, Department, Team, Email, "Phone Number") VALUES (2, 'Alice Smith', 'PassWord2', 'Backend Developer', 'Mobile', 'Byte Force', 'AliceSmith@yahoo.com', '+44 132 412-3123');

-- Table: xTV_Web
CREATE TABLE IF NOT EXISTS xTV_Web (TeamID INTEGER PRIMARY KEY NOT NULL, "Team Name" TEXT NOT NULL, "Team Leader" TEXT NOT NULL, DepartmentID INTEGER, "Department Head" TEXT NOT NULL, "Jira Project Name" TEXT, Workstream TEXT NOT NULL, "Project(codebase)(Github)" TEXT NOT NULL, "Jira Board Link" TEXT NOT NULL, "Development Focus Areas" TEXT NOT NULL, "Key Skills & Technologies" TEXT NOT NULL, "Downstream Dependencies" TEXT NOT NULL, "Dependency Type" TEXT NOT NULL, Software TEXT, "Versioning Approaches" TEXT, "Wiki Search Terms" TEXT, "Slack Channels" TEXT, "Daily Standup Time and Link" TEXT, "Agile Practices" TEXT, "Team Wiki" TEXT NOT NULL);
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (1, 'Code Warriors', 'Olivia Carter', 1, 'Sebastian Holt', 'Client Lighting Xtv', 'Commerce', 'tiny.cc/x9b4b', 'short.ly/a7XbP3', 'Infrastructure scalability, CI/CD integration, platform resilience', 'AWS/GCP, Terraform, Kubernetes, CI/CD, Docker, Python, Bash', 'The Debuggers', 'Infrastructure Support', NULL, NULL, NULL, NULL, NULL, NULL, 'fake.ly/X9TQ74M');
INSERT INTO xTV_Web (TeamID, "Team Name", "Team Leader", DepartmentID, "Department Head", "Jira Project Name", Workstream, "Project(codebase)(Github)", "Jira Board Link", "Development Focus Areas", "Key Skills & Technologies", "Downstream Dependencies", "Dependency Type", Software, "Versioning Approaches", "Wiki Search Terms", "Slack Channels", "Daily Standup Time and Link", "Agile Practices", "Team Wiki") VALUES (7, 'DevOps Dynasty', 'Isabella Ross', 1, 'Sebastian Holt', NULL, 'Commerce', 'is.gd/Kp4XQ9', 'quick.li/9X7TQ4M', 'DevOps best practices, Kubernetes orchestration, cloud automation', 'Kubernetes, Terraform, Ansible, CI/CD, AWS/GCP, Docker, Linux
', 'Code Warriors', 'CI/CD Infrastructure', NULL, NULL, NULL, NULL, NULL, NULL, 'goquick.ly/Q7X9MT4');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
