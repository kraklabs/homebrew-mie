# Homebrew Tap for MIE

[MIE (Memory Intelligence Engine)](https://github.com/kraklabs/mie) is a persistent memory layer for AI agents. It provides semantic search, conflict detection, and graph-based memory management via the Model Context Protocol (MCP).

## Installation

```bash
brew tap kraklabs/mie
brew install mie
```

## Usage

After installation, configure MIE as an MCP server in your AI tool of choice. For example, in Claude Desktop:

```json
{
  "mcpServers": {
    "mie": {
      "command": "mie",
      "args": ["--transport", "stdio"]
    }
  }
}
```

## Upgrading

```bash
brew update
brew upgrade mie
```

## License

AGPL-3.0-or-later
