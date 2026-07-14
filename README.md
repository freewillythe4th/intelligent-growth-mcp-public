# Intelligent Growth MCP

<p align="center">
  <img src="https://intelligentgrowth.app/images/ig-logo/ig-logo-full.png" alt="Intelligent Growth" width="220">
</p>

Intelligent Growth connects a practical product marketing method to the AI client you already use.

Bring the homepage, interviews, launch brief or competitor set already on your desk. The hosted MCP helps turn that context into a recommendation, the reasoning behind it, the assumptions it made and a working deliverable you can improve.

Start with the free competitive gap at [intelligentgrowth.app/mcp](https://intelligentgrowth.app/mcp).

## What this repository is

This is the public setup and examples repository for the hosted Intelligent Growth MCP.

It includes:

- Connection instructions for supported AI clients.
- Safe starter prompts for common product marketing jobs.
- A public capability overview.
- Troubleshooting, privacy and security guidance.
- A clear description of the hosted product boundary.

The server implementation and protected methods are not distributed in this repository. Your AI client receives the applied result for the job you asked it to do.

## Connect

Hosted MCP endpoint:

```text
https://mcp.intelligentgrowth.app/mcp
```

### Claude Desktop

1. Open Settings, then Connectors.
2. If your plan supports custom connectors, add one named `Intelligent Growth`.
3. Paste the hosted endpoint.
4. Complete the secure sign-in.

### Claude Code

```bash
claude mcp add intelligent-growth --transport http https://mcp.intelligentgrowth.app/mcp
```

Complete the browser sign-in, then return to Claude Code.

### ChatGPT

Open Settings and find Connectors. If custom MCP connectors are available on your plan, add `Intelligent Growth`, paste the hosted endpoint and complete the secure sign-in.

For the guided path, use [the two-minute setup](https://intelligentgrowth.app/mcp/start?job=competitive-gap).

## Start with a real job

```text
Use Intelligent Growth to run a competitive gap analysis for my product. Start by telling me the product context, customer evidence and competitor URLs you need. Do not begin the analysis until I have supplied the required context.
```

Other good starting jobs:

- Review my positioning and recommend one direction.
- Turn this customer language into a messaging hierarchy.
- Decide what kind of launch this change deserves, then build the brief.
- Review this homepage and give me the version I should work from.

See [example jobs](docs/example-jobs.md) for the context to bring and the output to expect.

## How the boundary works

```text
Your AI client
    |
    | secure MCP request
    v
Hosted Intelligent Growth service
    |
    | applies the right protected method to your context
    v
Structured result returned to your AI client
```

The result can teach the relevant principles, explain the process and show why a recommendation holds. It does not export the protected method files or server implementation.

Read [the public architecture note](docs/architecture.md) for more detail.

## Privacy

Product analytics record safe events such as connection, method, access tier, client, outcome and broad error category. They do not record prompts, outputs, email addresses, credentials, company text or full URLs.

Read the current [privacy policy](https://intelligentgrowth.app/privacy) and [terms](https://intelligentgrowth.app/terms).

## Support

- Setup guide: [intelligentgrowth.app/mcp/start](https://intelligentgrowth.app/mcp/start?job=competitive-gap)
- Troubleshooting: [docs/troubleshooting.md](docs/troubleshooting.md)
- Security reports: [SECURITY.md](SECURITY.md)
- Product issues and requests: use the GitHub issue templates

Never include access tokens, private company content, customer records or confidential prompts in an issue.
