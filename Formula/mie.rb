# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "1.3.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.2/mie_v1.3.2_darwin_arm64.tar.gz"
      sha256 "6eb929193129fbe91bdc329ac1fdb6d4b008961b12c31847950cc49886057524"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.2/mie_v1.3.2_darwin_amd64.tar.gz"
      sha256 "f66e33b84fc5945ff8fe0ae53c4c21de578de055a35f1f791126fb2f3b0b1162"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.2/mie_v1.3.2_linux_arm64.tar.gz"
      sha256 "f99b5dff5a4da8d71eda25c5ff3d121260be5df9a63845e191f95ce8ee2cf185"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.2/mie_v1.3.2_linux_amd64.tar.gz"
      sha256 "ecae1e02c501adbae82f227e574fef8fdbfae5ac69e0bcb67e73ce4cae600aff"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
