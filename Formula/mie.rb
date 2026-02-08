# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "0.1.6"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.6/mie_v0.1.6_darwin_arm64.tar.gz"
      sha256 "b513d94cbe9e18b0b0a15dbc85585a1b7386419d5e55e57ca5bd10dc484d23db"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.6/mie_v0.1.6_darwin_amd64.tar.gz"
      sha256 "09d8339d67f3a735e781381e15963f1756e4097d158486d07be5156baf380f5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.6/mie_v0.1.6_linux_arm64.tar.gz"
      sha256 "427ad82ac252aed953db226b89bfe6d0fdfb81b07ba852bc4e5d1a608eea4d1c"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.6/mie_v0.1.6_linux_amd64.tar.gz"
      sha256 "aa580a897336e23874733b396e1a56010910727d8efc434df7864dc65e938a33"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
