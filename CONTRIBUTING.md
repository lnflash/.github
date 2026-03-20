# Contributing to Flash

Flash is open-source Bitcoin banking software built in the Caribbean. We welcome contributors worldwide, and we pay in Bitcoin over Lightning.

---

## How the Bounty Program Works

1. **Find a bounty** — Browse issues labeled `💰 bounty` + `approved` across any [LNFlash](https://github.com/lnflash) or [IslandBitcoin](https://github.com/islandbitcoin) repo
2. **Read the Definition of Done** — Every approved bounty has a DoD comment from the team. Read it carefully before starting
3. **Signal interest** — Comment on the issue with your **Lightning address** and a brief plan of approach
4. **Get acknowledged** — Wait for a team member to confirm you're good to start
5. **Do the work** — Fork the repo, branch from `main`, and implement the solution
6. **Submit your PR** — Reference the issue (`closes #N`), include your Lightning address, and meet all DoD requirements
7. **Get reviewed** — The review chain handles it (see below)
8. **Get paid** — Lightning payment sent to your address within 24 hours of merge

New to open source or Lightning? Start with a ⚡ Spark bounty — they're designed for first-timers.

---

## Bounty Levels

| Level | Emoji | Sats Range | What it covers |
|-------|-------|-----------|----------------|
| Spark | ⚡ | 5,000 – 25,000 | Small fixes, docs, UI tweaks, typos |
| Flame | 🔥 | 25,001 – 75,000 | Bug fixes, minor features, test coverage |
| Eruption | 🌋 | 75,001 – 150,000 | Medium features, integrations, significant refactors |
| Summit | 🏔️ | 150,001 – 500,000 | Major features, architecture changes, complex multi-file fixes |

The final bounty level and sats amount are set by the team at approval time.

---

## Bundled Bounties

Some bounties span **multiple related issues** — for example, a bug that requires fixes in both the backend and mobile app, or a feature that touches several files across repos.

Bundled bounties are identified by references between issues (e.g. "Related: #284, #282, #267"). **The sats amount covers all linked issues as a package.** Before starting work on any bounty, check for linked issues to understand the full scope.

If you're unsure whether issues are bundled, ask in the issue comments.

---

## Definition of Done (DoD)

Every approved bounty has a **Definition of Done** comment posted by the team. This is your contract — it describes:

- **Expected behavior** — what the code should do after your fix (not how to implement it)
- **Deliverables** — what you need to submit (PR, tests, screen recordings, docs, etc.)
- **Review gate** — who needs to approve before merge

**You must meet every item in the DoD to receive payment.** If something in the DoD is unclear or seems wrong, ask before you start — not after you submit.

---

## Contributor Tiers

Your tier determines which bounties you can exclusively claim and how long you have to complete them.

| Tier | Requirement | Can Claim Exclusively | Claim Window |
|------|-------------|----------------------|--------------|
| 🌱 **New** | First PR | — (open competition only) | — |
| ⭐ **Trusted** | 3+ merged PRs | Eruption | 7 days |
| 💎 **Proven** | 8+ merged PRs | Summit | 14 days |
| 🏆 **Core** | Invite only | All levels, priority review | Flexible |

Tiers are tracked in [CONTRIBUTORS.md](./CONTRIBUTORS.md) and updated after each merge.

**Tier rules:**
- Quality matters — reverted PRs or PRs requiring extensive rework count against advancement
- Ghosting a claimed bounty (no activity for 5 days) triggers a tier review

---

## Claim Rules

By default, bounties are **open competition** — anyone can submit a PR and the best one wins.

### Open Competition
- Multiple contributors can work on the same bounty simultaneously
- The team reviews all submitted PRs and picks the best one
- PRs that aren't selected are closed with thanks — your effort is noted and counts toward your contributor profile

### Exclusive Claims (Trusted+ only)
- Comment `!claim` on the issue to reserve it
- ⭐ Trusted can claim Eruption bounties (7-day window)
- 💎 Proven can claim Summit bounties (14-day window)
- You must post a **progress update within 3 days** of claiming
- **5 days** without an update → auto-unclaimed and reopened

### Anti-Gaming Rules
- One active exclusive claim per contributor at a time
- Don't claim bounties you have no intention of completing
- Low-effort or spam PRs will be closed and the contributor flagged
- Colluding to split bounties unfairly → permanent ban
- AI-assisted PRs are welcome — quality is what matters, not how you got there
- Core team members cannot claim bounties on work they scoped

---

## Before You Start

**Required:** You must provide your **Lightning address** (e.g. `you@walletofsatoshi.com`, LNURL, or any LN address) in your first comment on the issue. No Lightning address = no claim, no payment.

**Checklist before coding:**
- [ ] Read the full issue description
- [ ] Check for linked/bundled issues (read all of them)
- [ ] Read the Definition of Done comment
- [ ] Provide your Lightning address in a comment
- [ ] Wait for team acknowledgment

---

## Proposing Bounties

Anyone can propose work items as bounties — you don't have to be a contributor.

Use the [Bounty Proposal template](https://github.com/lnflash/.github/issues/new?template=bounty-proposal.yml) to suggest work. Include:
- Which repo and what needs to be done
- Why it matters
- Suggested level (the team sets the final amount)

All proposals are reviewed by the team. Approved proposals get labeled, a DoD is posted, and they become available for contributors.

---

## Review Chain

All bounty PRs go through a structured review process:

| Repo | Code Review | Technical Sign-off | Final Approval |
|------|------------|-------------------|----------------|
| flash-mobile | Vandana | Nick | Dread |
| flash-pos | Vandana | Nick | Dread |
| flash (backend) | Vandana | Ben | Dread |
| All other repos | Vandana | — | Dread |

Expect a first review within 48 hours. If you don't hear back in 3 days, ping in **#public-development** on Discord.

---

## Payment

- **Lightning only** — no exceptions. You must have a working Lightning address
- **Include your Lightning address** in both your issue comment AND your PR description
- Payment is sent **within 24 hours of merge**
- Bounty amounts are in sats, fixed at approval time — exchange rate fluctuations don't affect payout
- All payments are logged in [CONTRIBUTORS.md](./CONTRIBUTORS.md)
- If your wallet has trouble receiving, reach out in Discord immediately

---

## Getting Help

Join the [Flash Discord](https://discord.gg/lnflash) and head to:
- **#public-development** — technical questions, PR feedback, architecture discussions
- **#public-testing** — testing help, bug reports, QA coordination

The team is active and happy to help unblock you.

---

## Code Standards

- TypeScript preferred across all repos
- Tests required for new features and bug fixes
- Follow the existing code style and conventions in each repo
- Keep PRs focused — one bounty per PR (bundled issues can be in one PR)
- Reference the issue in your PR: `closes #N` or `fixes #N`
- Commit messages follow [Conventional Commits](https://www.conventionalcommits.org/): `feat:`, `fix:`, `docs:`, `chore:`

---

*Built in the Caribbean 🌴 Powered by Bitcoin ⚡*
