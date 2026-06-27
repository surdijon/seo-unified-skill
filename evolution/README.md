# evolution/ — Self-Learning System

This folder makes the skill **stronger with every use**. Each command stores what it learned.

## Structure

```
evolution/
├── README.md                 ← this file
├── quality-gates.md          ← self-checks before every output
├── pattern-library.md        ← recurring issues per industry (auto-grows)
├── calibrations.md           ← scoring adjustments from real outcomes
├── templates/
│   └── session-log.md        ← copy this for each learning file
├── checklists/
│   ├── audit.md              ← full site audit walkthrough
│   ├── technical.md          ← technical SEO diagnostic checklist
│   ├── geo.md                ← GEO analysis checklist
│   ├── page.md               ← single page optimization checklist
│   └── migration.md          ← site migration checklist
└── learnings/
    ├── YYYY-MM-DD-HHMM-command-target.md  ← created after every command
    └── ...
```

## How it works

1. **Before** analysis → read `pattern-library.md` and `calibrations.md`
2. **After** analysis → write new learning file in `learnings/`
3. **Periodically** → consolidate learnings into `pattern-library.md`
4. **Monthly** → review `calibrations.md` for scoring accuracy

## Rules for the AI

- ALWAYS write a learning file after every command
- ALWAYS read pattern-library.md before starting analysis
- NEVER delete old learning files (archive if needed)
- When you find a recurring pattern → update pattern-library.md
- When scoring feels wrong → update calibrations.md

## Evolution milestones

| Trigger | Action |
|---------|--------|
| 5 learnings logged | Consolidate into pattern-library.md |
| Same pattern appears 3x | Add to pattern-library.md with weight label |
| Scoring feels too strict/lenient | Update calibrations.md with note |
| New command type discovered | Create new checklist in checklists/ |
