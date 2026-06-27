# Quality Gates — Self-Check Before Any Output

## Gate 1: Veto Check

- [ ] Checked SKILL.md VETO CONDITIONS (all apply here)
- [ ] If any veto fires → flag at top of output
- [ ] If 3+ vetos or Critical → return `PARTIALLY_BLOCKED`

## Gate 2: Evidence Quality

- [ ] Every finding cites a specific CORE-EEAT criterion (e.g., "C02 fail: answer not in first 150 words")
- [ ] Every score has a written justification (never just a number)
- [ ] No generic advice — every recommendation is site-specific
- [ ] Data from the site is quoted or referenced (not assumed)
- [ ] If uncertain → `⚠️ DATA NEEDED: [...]` is used

## Gate 3: Actionability

- [ ] Every issue has a concrete fix
- [ ] Action plan items have effort estimates (low/medium/high)
- [ ] Action plan items have timeline (immediate/this week/this month)
- [ ] Priority order reflects impact, not ease
- [ ] Quick wins (<1 hour) are identified

## Gate 4: Completeness

- [ ] Executive summary covers: strength + critical issue + opportunity
- [ ] Industry type was detected (SaaS/local/ecommerce/publisher/agency)
- [ ] Findings match the industry type's priorities
- [ ] Pattern library was checked for relevant patterns
- [ ] Learning was written to `evolution/learnings/`

## Gate 5: Honesty

- [ ] No made-up data or metrics
- [ ] All testing/auditing assumptions are stated
- [ ] Limitations of the analysis are mentioned
- [ ] User is asked for missing data when needed

## Gate 6: Format Compliance

- [ ] Output follows the format: Score → Executive Summary → Key Findings → Action Plan → Detailed Analysis → Learnings Logged
- [ ] Score includes rating label (Excellent/Good/Medium/Low/Poor)
- [ ] Key Findings table has all columns (Issue, CORE-EEAT, Severity, Impact, Fix)
- [ ] Action plan includes effort + timeline for each item
