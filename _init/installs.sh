#!/usr/bin/env bash

# Install opencode https://opencode.ai/
curl -fsSL https://opencode.ai/install | bash

# Install bun https://bun.com/
curl -fsSL https://bun.com/install | bash

# Install oh-my-opencode
bunx oh-my-opencode-darwin-arm64 install
