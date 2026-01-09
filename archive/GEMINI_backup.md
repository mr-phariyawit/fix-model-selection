# Antigravity Global Rules

## 🚀 Performance & Workflow
1.  **Vibe Coding**: Use "Goal -> Context -> Constraint" prompt structure.
2.  **Mode Selection**: Use "Deep Think" for planning, "Turbo" for execution.
3.  **Artifacts**: Debug via artifacts, not chat loops.

## 🚨 Emergency Protocols (Global Rules)

### 🔴 Global Rule #1: Agent Termination Protocol
**Trigger**: "Agent terminated", "Model provider overload", or 413 error.
**Resolution Steps:**

**Phase 0: Immediate Config Check (User Verification)**
1.  **HTTP Check**: Ensure **"HTTP Compatibility Mode"** is set to **"HTTP/1.1"** in IDE Settings > Network.
2.  **Resource Check**: Run `Developer: Open Process Explorer` and kill any high-RAM (>2GB) processes.

**Phase 1: Mitigation (Agent Actions)**
1.  **Downshift Model**: Switch models (High → Standard → Low).
2.  **DISABLE MCPs**: Temporarily disable **ALL** MCP servers. This is critical for 413 errors.
3.  **Context Cull**: Clear chat history or start a fresh session if context > 20k tokens.

**Phase 2: Hard Reset (If error persists)**
1.  **Close IDE**.
2.  **Run the hard reset script**:
    ```bash
    ~/.gemini/scripts/hard_reset_agent.sh
    ```
3.  **Restart IDE**.

### 🟠 Global Rule #2: Claude-MCP Conflict
If using Claude + MCP fails: **Disable ALL MCP servers** immediately. Retry one by one only if strictly necessary.

### 🟡 Global Rule #3: Token-Aware Context Hygiene
- **Strict Limit**: NEVER read files > 500 lines or > 50KB without checking first.
- **Pre-Check**: ALWAYS use `view_file_outline` or `du -h` before reading large files.
- **No Dumping**: Do not dump massive logs or `grep` output directly into chat. Pipe to a file and read snippets.

## 🛡️ Prevention Protocols
1.  **Project Hygiene**: Ensure workspace has a valid `package.json` or `.git` root.
2.  **Network**: Use Cloudflare DNS (1.1.1.1) for connection stability.
3.  **Scratch Cleanup**: Periodically run `find ~/.gemini -name "*.scratch" -delete`.
