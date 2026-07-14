# Intelligent Growth Product Marketing MCP Server

<p align="center">
  <a href="https://intelligentgrowth.app/mcp?utm_source=github&utm_medium=referral&utm_campaign=mcp_public_repo&utm_content=readme_logo">
    <img src="https://intelligentgrowth.app/images/ig-logo/ig-logo-full.png" alt="Intelligent Growth" width="220">
  </a>
</p>

Intelligent Growth is a hosted product marketing MCP server for positioning, messaging, competitive analysis, launch planning and go-to-market work in Claude and ChatGPT.

Bring the homepage, customer evidence, launch brief or competitor set already on your desk. Intelligent Growth returns one recommendation, the reasoning behind it, the assumptions it made and a working deliverable you can improve.

[Start with the guided setup](https://intelligentgrowth.app/mcp/start?job=competitive-gap&utm_source=github&utm_medium=referral&utm_campaign=mcp_public_repo&utm_content=setup_cta).

## What is a product marketing MCP server?

A product marketing MCP server gives an MCP-compatible AI client tools and context for repeatable product marketing jobs. It lets you ask for a positioning review, messaging hierarchy, competitive analysis or launch brief inside the AI client you already use.

Intelligent Growth is hosted. You connect to the endpoint, complete the secure sign-in and bring the context for the current job. You do not need to install or operate a local server.

## Hosted connection

```text
https://mcp.intelligentgrowth.app/mcp
```

The recommended path is the [guided setup](https://intelligentgrowth.app/mcp/start?job=competitive-gap&utm_source=github&utm_medium=referral&utm_campaign=mcp_public_repo&utm_content=setup_cta), which gives current instructions for each supported client and a starter prompt.

### Claude Desktop

1. Open Customize, then Connectors.
2. Select +, then Add custom connector. Team and Enterprise owners may need to add it through organisation settings first.
3. Paste the hosted endpoint.
4. Complete the secure sign-in.

### Claude Code

```bash
claude mcp add intelligent-growth --transport http https://mcp.intelligentgrowth.app/mcp
```

Complete the browser sign-in, then return to Claude Code.

### ChatGPT

Custom MCP setup depends on your current ChatGPT workspace and plan. If your workspace supports custom apps or connectors, add Intelligent Growth with the hosted endpoint and OAuth. The guided setup page keeps the client-specific instructions current.

## Product marketing jobs

### Competitive analysis

Find repeated category claims, weakly owned territory and a credible opening.

```text
Use Intelligent Growth to run a competitive gap analysis for my product. Start by telling me the product context, customer evidence and competitor URLs you need. Do not begin the analysis until I have supplied the required context.
```

### Positioning review

Make one positioning recommendation and separate evidence from assumptions.

```text
Use Intelligent Growth to review my positioning. Ask for the audience, alternatives, customer evidence, current page and business goal first. Then recommend one direction, explain why it is stronger and tell me what still needs proof.
```

### Messaging review

Turn customer language, proof and objections into a message hierarchy the team can use.

```text
Use Intelligent Growth to review my messaging. Ask for the offer, audience, customer language, current message, available proof and common objections before you start.
```

### Launch planning

Decide what kind of launch the change deserves, then build the brief and actions.

```text
Use Intelligent Growth to plan this launch. Ask for the product change, audience, business goal, deadline, evidence, readiness, owners and constraints. Make the launch call before building the plan.
```

See [example jobs](docs/example-jobs.md) for the context to bring and the output to expect.

## What comes back

Each completed job is designed to return:

- One clear recommendation.
- Reasoning tied to the context you supplied.
- Assumptions and missing evidence.
- A working deliverable you can edit.
- Relevant principles that help you understand the decision.

The useful result is not a generic list of ideas. It is a decision and a first version grounded in the real material you brought.

## What this repository contains

This public companion repository includes:

- Connection instructions for supported AI clients.
- Safe starter prompts for common product marketing jobs.
- A public capability overview.
- Troubleshooting, privacy and security guidance.
- A clear description of the hosted product boundary.

The server implementation and protected method files are not distributed here. Your AI client receives the applied result for the job you asked it to do.

## How the boundary works

```text
Your AI client
    |
    | secure MCP request
    v
Hosted Intelligent Growth service
    |
    | applies the right method to your context
    v
Structured result returned to your AI client
```

The result can teach relevant principles, explain the process and show why a recommendation holds. It does not export protected method files, source libraries or the server implementation.

Read the [public architecture note](docs/architecture.md) for more detail.

## Privacy

Product analytics record safe events such as connection, method, access tier, client, outcome and broad error category. They do not record prompts, outputs, email addresses, credentials, company text or full URLs.

Read the current [privacy policy](https://intelligentgrowth.app/privacy) and [terms](https://intelligentgrowth.app/terms).

## Frequently asked questions

### Do I need to install a local server?

No. Intelligent Growth is hosted. Connect your compatible AI client to the endpoint and complete the secure sign-in.

### Can I use it with Claude and ChatGPT?

It works with supported MCP-compatible clients. Claude Desktop and Claude Code have guided instructions. ChatGPT availability depends on the features enabled for your workspace and plan.

### What product marketing work can it do?

The public starting jobs cover competitive analysis, positioning, messaging and launch planning. The product page shows the current workflow catalogue.

### Will it teach me how to do the work?

The result can explain the relevant principles, show the reasoning behind its recommendation and make assumptions visible. It should help you understand and challenge the work, not only hand back an answer.

### Can I ask it to export its source material?

No. Intelligent Growth is designed for applied product marketing work. It does not provide bulk source reproduction, method-file export or server implementation access.

### Does analytics record my prompt or output?

No. Product analytics are designed to record safe usage events, not prompt text, output text, credentials, email addresses or company content.

## Support

- Setup guide: [intelligentgrowth.app/mcp/start](https://intelligentgrowth.app/mcp/start?job=competitive-gap&utm_source=github&utm_medium=referral&utm_campaign=mcp_public_repo&utm_content=support_setup)
- Troubleshooting: [docs/troubleshooting.md](docs/troubleshooting.md)
- Security reports: [SECURITY.md](SECURITY.md)
- Product issues and requests: use the GitHub issue templates

Never include access tokens, private company content, customer records or confidential prompts in an issue.
