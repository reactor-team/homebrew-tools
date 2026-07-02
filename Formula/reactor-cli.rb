# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260702.17207"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260702.17207/reactor-cli_v1.20260702.17207_darwin-arm64.tar.gz"
      sha256 "5c8faa0a94d13e8304e80441ae6ea615b0003436f9aedbed163b7e5635087ea1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260702.17207/reactor-cli_v1.20260702.17207_darwin-amd64.tar.gz"
      sha256 "59c98ac711561e155c49d68535b15abed7f728ac6a7e2629b7c3b61e9900ed8d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260702.17207/reactor-cli_v1.20260702.17207_linux-arm64.tar.gz"
      sha256 "235978dac22da92d411a5740264c79cdf7f0abd3f3891022a478a4e6b123bb9e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260702.17207/reactor-cli_v1.20260702.17207_linux-amd64.tar.gz"
      sha256 "23cb00bd925e4f100a4b9fb17b25d88e586442ea386ccbda02e934d4502dd1fe"
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
