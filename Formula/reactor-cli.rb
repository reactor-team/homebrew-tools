# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260818.22282"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22282/reactor-cli_v1.20260818.22282_darwin-arm64.tar.gz"
      sha256 "50ce4ca831a9e435f660b59c641d9ea10db4d95b286079dc3b29cd412676411e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22282/reactor-cli_v1.20260818.22282_darwin-amd64.tar.gz"
      sha256 "5d8c08c5293a68f95097a0639b778a4c5cff0c2770af74b736b211b78c2a5523"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22282/reactor-cli_v1.20260818.22282_linux-arm64.tar.gz"
      sha256 "a9749d8ca3a4f53bf7febd2df8a95ee2249ead15f2affc614d2afaf557d2c4b7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22282/reactor-cli_v1.20260818.22282_linux-amd64.tar.gz"
      sha256 "bcd0614b9ff5958bc9898117fcec9440a985962baeedb0726155e2bf0ad5831b"
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
