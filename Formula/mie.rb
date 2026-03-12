# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "1.3.6"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.6/mie_v1.3.6_darwin_arm64.tar.gz"
      sha256 "8caf3a9d1f1ec7d6df9f60c1aa7da7f8556a502fdaf92ec24e3f00ec76b6c7eb"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.6/mie_v1.3.6_darwin_amd64.tar.gz"
      sha256 "5fa4d7258f6aca9708a03e272ef98a5b2cd4e9919c1ca93104ffe2a461486268"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.6/mie_v1.3.6_linux_arm64.tar.gz"
      sha256 "2ac88921672b9d7f014deec613f19f16f3ddc1121801eaf2ae671bd759faddae"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.6/mie_v1.3.6_linux_amd64.tar.gz"
      sha256 "da90b3443f67dd64f4f43b146fe2c87630cbea143ba29d9140ffaa4f545560e1"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
