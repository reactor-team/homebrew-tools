# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.8"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.8/reactor-cli_v1.20261110.8_darwin-arm64.tar.gz"
      sha256 "aa420096b3434ccd99811189aba60aadc4dddda928e1380f3b18fc6110e955bd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.8/reactor-cli_v1.20261110.8_darwin-amd64.tar.gz"
      sha256 "0e93893d2fd59eb4351b4094d1d9df69d9ce503d90f5002109a89520e56be6d8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.8/reactor-cli_v1.20261110.8_linux-arm64.tar.gz"
      sha256 "cd45845dd61d5941fe3e36c1cfc8cb1bec8d67d14012b9fb69bf77a1f12d7387"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.8/reactor-cli_v1.20261110.8_linux-amd64.tar.gz"
      sha256 "f9755d59b1f339722019b1b4d423cb7d836d201f1da93c5b6a43da11d4a9dbe0"
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
