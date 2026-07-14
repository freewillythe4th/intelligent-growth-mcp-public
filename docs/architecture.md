# Public architecture

Intelligent Growth is a hosted remote MCP. The hosted boundary is deliberate.

## Request flow

1. Your AI client connects to `https://mcp.intelligentgrowth.app/mcp`.
2. The service authenticates the connection and checks the available access tier.
3. Your client sends the context required for the job you chose.
4. The service selects and applies the relevant method.
5. A structured result returns to your AI client.
6. You challenge the recommendation, check the assumptions and make the final call.

## What the client receives

- The recommendation for the current job.
- Reasoning tied to the context you supplied.
- Assumptions and missing evidence.
- A working deliverable to review.
- Relevant principles and process explanations when useful.

## What remains inside the hosted service

- Server implementation.
- Protected method definitions.
- Internal routing and quality controls.
- Authentication and entitlement logic.
- Deployment and provider configuration.

The hosted service can improve a method without asking users to download a new prompt pack or update a local copy.

## Analytics boundary

Safe product events may include:

- Anonymous connection.
- Method and access tier.
- Supported client category.
- Success or broad error category.
- First result and repeat-use milestones.

Events do not include prompts, outputs, email addresses, credentials, company text or full URLs.
