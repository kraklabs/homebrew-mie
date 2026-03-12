# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "1.3.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.5/mie_v1.3.5_darwin_arm64.tar.gz"
      sha256 "8e67ece959b7c252940fb6e38ba3a2f137e7f3b232f7c530277f4f966baa04e0"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.5/mie_v1.3.5_darwin_amd64.tar.gz"
      sha256 "b6844c42e7edd3635ef13f091e048e323022e3f534cc107a9af0db7a649b56a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.5/mie_v1.3.5_linux_arm64.tar.gz"
      sha256 "3aab6de56c0cb5e8f78c05bfcfb384fba969eba945eb717c434882db6f621e09"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.5/mie_v1.3.5_linux_amd64.tar.gz"
      sha256 "2d473dbd725a8f9c94caf80617be97a3c42276fdd7c59659898d7e1caff0f74e"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
