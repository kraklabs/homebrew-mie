# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "1.3.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.1/mie_v1.3.1_darwin_arm64.tar.gz"
      sha256 "fbbd2ace68e41b09aeaa21fd7d4140dcdfdd36769985a79a123378b96ba38812"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.1/mie_v1.3.1_darwin_amd64.tar.gz"
      sha256 "6db23ad14efa037c1e7441637912892dda51d62e6c96ba6aad8890ff31fa54dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.1/mie_v1.3.1_linux_arm64.tar.gz"
      sha256 "30bb199608d797e50f05518b634c12e0d4c8a58c85f7171fe7559bc408d0f8d2"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.1/mie_v1.3.1_linux_amd64.tar.gz"
      sha256 "62ef5b7efb9de3dcd1ffa24f8d4e84da7e1aef997e02d5d73021314ca993fb86"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
