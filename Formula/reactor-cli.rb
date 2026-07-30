# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260730.20252"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260730.20252/reactor-cli_v1.20260730.20252_darwin-arm64.tar.gz"
      sha256 "2ac1a267bd6b455db07002ef92ab4dbcc12dfb09cee9a55710547493ac8539c5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260730.20252/reactor-cli_v1.20260730.20252_darwin-amd64.tar.gz"
      sha256 "6accebb06dc006044d6978e109bb6afc0d2d64f74bb5e0e4ff6b57a2c4375cd3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260730.20252/reactor-cli_v1.20260730.20252_linux-arm64.tar.gz"
      sha256 "313b270bf6131e7ef399eae1aa10b89462ad616105cf4cca31f5e5073373ae74"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260730.20252/reactor-cli_v1.20260730.20252_linux-amd64.tar.gz"
      sha256 "49fec44a22a50e9f0966a847c9de26f5816d5e7a95a4694d9ae52a5a2ace9126"
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
