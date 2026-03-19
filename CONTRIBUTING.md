# Contributing to Flash

Flash is open-source Bitcoin banking software built in the Caribbean. We welcome contributors worldwide, and we pay in Bitcoin over Lightning.

---

## How the Bounty Program Works

1. **Find a bounty** — Browse issues labeled `bounty` + `approved` across any lnflash repo
2. **Signal interest** — Comment on the issue so the team knows you're looking at it
3. **Do the work** — Fork the repo, branch from `main`, and implement the solution
4. **Get reviewed** — Open a PR referencing the issue (`closes #N`). The review chain handles it
5. **Get paid** — Lightning payment sent to your wallet within 24 hours of merge

New to open source or Lightning? Start with a Spark bounty — they're designed for first-timers.

---

## Bounty Levels

| Level | Emoji | Sats Range | What it covers |
|-------|-------|-----------|----------------|
| Spark | ⚡ | 5k – 25k | Small fixes, docs, UI tweaks, typos |
| Flame | 🔥 | 25k – 75k | Medium features, integrations, refactors |
| Eruption | 🌋 | 75k – 150k | Significant features, complex fixes |
| Summit | 🏔️ | 150k – 250k | Major features, architecture changes |

The final bounty level is set by the team at approval time. Proposed levels in bounty proposals are a starting point.

---

## Contributor Tiers

Your tier determines which bounties you can claim and how long you have to complete them.

| Tier | Requirement | Can Claim | Claim Window |
|------|-------------|-----------|---------------|
| **New** | First PR | Spark, Flame | Open competition |
| **Trusted** | 3+ merged PRs | Spark, Flame, Eruption | 7 days |
| **Proven** | 8+ merged PRs | All levels including Summit | 14 days |
| **Core** | Invite only | All levels, priority review | Flexible |

Tiers are tracked in [CONTRIBUTORS.md](./CONTRIBUTORS.md) and updated by the team after each merge.

---

## Claim Rules

By default, bounties are **open competition** — anyone can submit a PR and the best one wins.

For higher-tier bounties (Eruption and Summit), eligible contributors can lock a bounty with `!claim`:

- Comment `!claim` on the issue to reserve it (Trusted+ for Eruption, Proven+ for Summit)
- You must post a **progress update within 3 days** of claiming or the claim expires
- If you go quiet for **5 days** without an update, the bounty is auto-unclaimed and reopened
- Submitting a PR counts as a progress update

**Anti-gaming rules:**
- One active claim per contributor at a time
- Don't claim bounties you have no intention of completing
- Don't submit low-effort PRs just to collect Sats — reviewers will notice
- Colluding to split bounties unfairly will result in a permanent ban
- Core team members cannot claim bounties on work they scoped themselves

---

## Review Chain

All bounty PRs go through a three-step review process:

1. **Vandana** reviews the code for correctness, style, and test coverage
2. **Nick** signs off on mobile/POS work — **Ben** signs off on backend work
3. **Dread** gives final approval before merge

Expect a first review within 48 hours. If you don't hear back in 3 days, ping in **#public-development** on Discord.

---

## Payment

- **Lightning only** — you must have a Lightning address or invoice ready
- Payment is sent **within 24 hours of merge**
- If your wallet has trouble receiving, reach out in Discord immediately
- Bounty amounts are in sats and fixed at approval time — exchange rate fluctuations don't affect payout

---

## Getting Help

Join the Flash Discord and head to:
- **#public-development** — technical questions, PR feedback, architecture discussions
- **#public-testing** — testing help, bug reports, QA coordination

The team is active and happy to help unblock you.

---

## Code Standards

- TypeScript preferred across all repos
- Tests required for new features and bug fixes
- Follow the existing code style and conventions in each repo
- Keep PRs focused — one bounty issue per PR
- Reference the issue in your PR title: `feat: add offline fallback for POS (closes #46)`

---

*Built in the Caribbean 🌴 Powered by Bitcoin ⚡*
