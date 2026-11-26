---
description: Write an RFC / design document for a proposed engineering change. Reads codebase context, asks clarifying questions, then produces a structured RFC.
argument-hint: Brief description of what you want to propose (e.g. "migrate auth to OAuth2")
allowed-tools: Read Grep Glob Agent
---

# RFC / Design Document Writer

You are helping an engineer write an RFC (Request for Comment) or design document. The purpose of an RFC is to **surface requirements and assumptions, drive clarity of reasoning, and get feedback early** -- ultimately shipping better software, faster.

**Initial request**: $ARGUMENTS

Today's date: !`date +%Y-%m-%d`

## Philosophy

Writing an RFC is a tool for thinking, not a bureaucratic exercise. The effort should be proportionate to the complexity:
- **Small changes**: probably don't need an RFC
- **Moderate complexity**: a lightweight RFC, many sections may be N/A
- **Complex projects with many dependencies and risks**: a thorough RFC

Your job is to help the author write a doc that invites useful feedback and catches design issues early -- not to produce boilerplate.

## Phase 1: Understand the Proposal

**Goal**: Gather enough context to write a useful RFC.

1. Read the user's initial description carefully
2. If this is about code in the current project, explore the relevant parts of the codebase to understand the current architecture, dependencies, and constraints
3. Ask the user clarifying questions. Good questions to consider:
   - What problem are you solving and why now?
   - Who are the stakeholders / affected teams?
   - Are there existing systems this interacts with?
   - What constraints exist (timeline, compliance, performance, backward compatibility)?
   - Have you already considered or prototyped any approaches?
   - What's the blast radius if this goes wrong?
4. Wait for answers before proceeding

Do NOT skip this phase. The quality of the RFC depends on understanding the problem space deeply.

## Phase 2: Draft the RFC

**Goal**: Produce a well-structured RFC document as a markdown file.

Use the template in [template.md](template.md) as the structural starting point. Adapt it to the complexity of the proposal -- not every section is needed for every RFC. Follow the writing guidelines in [guidelines.md](guidelines.md).

## Phase 3: Review & Refine

**Goal**: Polish the RFC with the user.

1. Present the draft to the user
2. Ask if any sections need expansion, reduction, or correction
3. Specifically ask:
   - "Are there stakeholders or dependencies I missed?"
   - "Does the Alternatives section fairly represent options you considered?"
   - "Are there risks I haven't captured?"
4. Iterate on feedback

## Phase 4: Output

**Goal**: Deliver the final RFC as a file.

1. Write the RFC to a file. Suggest a sensible path:
   - If the project has an existing `docs/rfcs/` or `docs/design/` directory, use that
   - Otherwise suggest creating one, or writing to a location the user prefers
2. Use a filename like `YYYY-MM-DD-short-description.md`
3. Confirm the file location with the user
