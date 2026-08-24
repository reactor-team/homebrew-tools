# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260824.23050"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260824.23050/reactor-cli_v1.20260824.23050_darwin-arm64.tar.gz"
      sha256 "ce255f0ceffd222b8c8d4b4218532329c8d4a4951f74549bb6d864f07c4fad7e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260824.23050/reactor-cli_v1.20260824.23050_darwin-amd64.tar.gz"
      sha256 "769d9954408a6e8754c1339bb7d22e0bb4f39fd90872f6b95b9069bb64fdd69e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260824.23050/reactor-cli_v1.20260824.23050_linux-arm64.tar.gz"
      sha256 "b21dd0427794f007acf0fde0521cf6d5de1d73da8c2c40595547d93d79af62d9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260824.23050/reactor-cli_v1.20260824.23050_linux-amd64.tar.gz"
      sha256 "c5b7c0e712eb52f646294bc10edefc28cdb765b511202255b654669c378aca06"
    end
  end

  def install
    bin.install "reactor"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
  end
end
