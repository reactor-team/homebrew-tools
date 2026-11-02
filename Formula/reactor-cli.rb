# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.300"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.300/reactor-cli_v1.20261102.300_darwin-arm64.tar.gz"
      sha256 "7dad63f28bc6682712fc34b2911f42c614199104e64aeb06b965a3cb6c393613"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.300/reactor-cli_v1.20261102.300_darwin-amd64.tar.gz"
      sha256 "ee478c6dd4b837a8f7dfd4a213b0dc3b3bddf1a922b0deaf42d9fbf2aa032ffc"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.300/reactor-cli_v1.20261102.300_linux-arm64.tar.gz"
      sha256 "46727812643216fe45d3d4bcccb0e66cb268092301c67b77f428111298236aab"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.300/reactor-cli_v1.20261102.300_linux-amd64.tar.gz"
      sha256 "5f87220f719052e7d2a0335f5f8524d407279b5cde16ed8279551cb23247b8df"
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
