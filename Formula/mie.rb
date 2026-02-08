# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "0.1.5"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.5/mie_v0.1.5_darwin_arm64.tar.gz"
      sha256 "797517633cddf0ef936540c679d2def3dedc1681e2e96ba67f96de22113fbe96"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.5/mie_v0.1.5_darwin_amd64.tar.gz"
      sha256 "483089ec0a343ee8e8b204e17e9e84642fcf6c10c7d3f7dfe7b864be3844bfe1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.5/mie_v0.1.5_linux_arm64.tar.gz"
      sha256 "771cdde87274be21bdd0cba894c01163ea82f061c8a080bfda575dd947b004e8"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.5/mie_v0.1.5_linux_amd64.tar.gz"
      sha256 "8b68d277e45e79a8ce3d5097412018ff194971627165f5d1092a45219195c0e0"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
