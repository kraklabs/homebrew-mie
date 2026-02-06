# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "0.1.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.0/mie_v0.1.0_darwin_arm64.tar.gz"
      sha256 "335eb4117fdd31fce24c43b70100404d0aaf8bb7ab02494681539bace79d729e"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.0/mie_v0.1.0_darwin_amd64.tar.gz"
      sha256 "38f90425fa0cbd6c0794dd786d8eae2c084c0c4b23464d8bbfde6a41060cd44a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.0/mie_v0.1.0_linux_arm64.tar.gz"
      sha256 "2a7afb9fd9e17f48ca9ea1f51ef62ffb81e2ec71f12f22efefef453b71f8bf09"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.0/mie_v0.1.0_linux_amd64.tar.gz"
      sha256 "a0e6894f568b2c5169c0b255d4e70dd42904380f5d75a9a353919e86ad31c4df"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
