from django.db import models

class XTVWeb(models.Model):
    team_id = models.IntegerField(primary_key=True, db_column='TeamID')
    team_name = models.TextField(db_column='Team Name')
    team_leader = models.TextField(db_column='Team Leader')
    department_id = models.IntegerField(null=True, db_column='DepartmentID')
    department_head = models.TextField(db_column='Department Head')
    jira_project_name = models.TextField(null=True, db_column='Jira Project Name')
    workstream = models.TextField(db_column='Workstream')
    github = models.TextField(db_column='Project(codebase)(Github)')
    jira_board_link = models.TextField(db_column='Jira Board Link')
    development_focus = models.TextField(db_column='Development Focus Areas')
    key_skills = models.TextField(db_column='Key Skills & Technologies')
    downstream_dependencies = models.TextField(db_column='Downstream Dependencies')
    dependency_type = models.TextField(db_column='Dependency Type')
    software = models.TextField(null=True, db_column='Software')
    versioning = models.TextField(null=True, db_column='Versioning Approaches')
    wiki_search_terms = models.TextField(null=True, db_column='Wiki Search Terms')
    slack_channels = models.TextField(null=True, db_column='Slack Channels')
    standup = models.TextField(null=True, db_column='Daily Standup Time and Link')
    agile_practices = models.TextField(null=True, db_column='Agile Practices')
    team_wiki = models.TextField(db_column='Team Wiki')

    class Meta:
        db_table = 'xTV_Web'
        managed = False
        app_label = 'sky_app'