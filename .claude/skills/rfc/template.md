# RFC Template

Adapt this structure to the complexity of the proposal. Include sections that are relevant; omit or collapse sections that aren't. Mark the document status as **Draft**.

```markdown
# RFC: [Title]

**Status**: Draft
**Author**: [name]
**Date**: [today's date]
**Reviewers/Approvers**: [to be filled in]

---

## Summary

A concise (2-4 sentence) overview of what is being proposed and why. A reader should understand the gist from this alone.

## Context & Motivation

- What is the problem or opportunity?
- Why does it matter now?
- What is the current state of things?
- Include relevant background a reviewer needs to understand the proposal.

## Goals and Non-Goals

**Goals** (what this RFC aims to achieve):
- ...

**Non-Goals** (what is explicitly out of scope):
- ...

Non-goals are critical. They prevent scope creep and set clear expectations for reviewers.

## Proposed Design

The detailed technical approach. Depending on the nature of the change, this may include:
- System architecture / component diagrams
- API contracts (endpoints, request/response schemas)
- Data model changes (new tables, schema migrations)
- Key algorithms or workflows
- Code-level design (interfaces, modules, patterns)

Be specific enough that a reviewer can evaluate trade-offs, but don't write implementation-level pseudocode unless it clarifies a non-obvious approach.

## Alternatives Considered

For each alternative:
- What is it?
- Why was it not chosen?
- What are its trade-offs vs. the proposed approach?

This section is mandatory. If you haven't considered alternatives, you haven't thought hard enough about the problem. Even "do nothing" is an alternative worth addressing.

## Risks & Mitigation

- What could go wrong?
- What are the failure modes?
- How will you mitigate each risk?
- What is the rollback plan?

Consider: security, data integrity, performance degradation, backward compatibility, operational burden, legal/compliance implications.

## Dependencies & Cross-Cutting Concerns

- Which teams or systems are affected?
- Are there upstream/downstream dependencies?
- Security considerations
- Privacy / compliance (GDPR, etc.)
- Observability (logging, monitoring, alerting)
- Accessibility (if user-facing)

## Rollout Plan

- How will this be deployed? (feature flag, phased rollout, big bang)
- Testing strategy (unit, integration, load, manual)
- Migration plan (if applicable)
- Rollback procedure

## Success Metrics

How will you know this worked? Define measurable criteria:
- Performance targets
- Error rate thresholds
- User-facing metrics
- Business metrics

## Open Questions

Things that still need to be resolved. Be honest about unknowns -- surfacing them is one of the main values of writing an RFC.

## References

Links to related RFCs, PRDs, documentation, prior art, or relevant reading.
```
