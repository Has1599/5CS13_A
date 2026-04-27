import json
from django.shortcuts import render
from .models import XTVWeb

COLOUR_MAP = {
    'infrastructure': '#8E44AD',
    'ci/cd':          '#8E44AD',
    'devops':         '#8E44AD',
    'frontend':       '#0072C9',
    'ui':             '#0072C9',
    'backend':        '#27AE60',
    'api':            '#27AE60',
    'mobile':         '#16A085',
    'data':           '#E74C3C',
    'qa':             '#E67E22',
    'testing':        '#E67E22',
}

def get_colour(focus_areas):
    focus_lower = focus_areas.lower()
    for keyword, colour in COLOUR_MAP.items():
        if keyword in focus_lower:
            return colour
    return '#6B7280'

def network_view(request):
    teams = list(XTVWeb.objects.all())

    name_to_id = {t.team_name.strip().lower(): t.team_id for t in teams}

    teams_data = []
    for t in teams:
        raw_deps = [d.strip() for d in t.downstream_dependencies.split(',') if d.strip()]
        dep_ids = [
            name_to_id[d.lower()]
            for d in raw_deps
            if d.lower() in name_to_id
        ]

        teams_data.append({
            'id':        t.team_id,
            'name':      t.team_name,
            'abbr':      ''.join(w[0] for w in t.team_name.split()[:2]).upper(),
            'leader':    t.team_leader,
            'dept':      'Dept {}'.format(t.department_id),
            'dept_head': t.department_head,
            'workstream': t.workstream,
            'jira':      t.jira_project_name or 'N/A',
            'jira_link': t.jira_board_link,
            'github':    t.github,
            'focus':     t.development_focus,
            'skills':    t.key_skills,
            'dep_type':  t.dependency_type,
            'wiki':      t.team_wiki,
            'slack':     t.slack_channels or 'N/A',
            'standup':   t.standup or 'N/A',
            'deps':      dep_ids,
            'color':     get_colour(t.development_focus),
        })

    return render(request, 'organisation.html', {
        'teams_json': json.dumps(teams_data)
    })