# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.114"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.114/reactor-cli_v1.20261112.114_darwin-arm64.tar.gz"
      sha256 "e504d762fe6f173f5e7e53ec9456e8e4c60cc1451201cd56df191d5575ac616c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.114/reactor-cli_v1.20261112.114_darwin-amd64.tar.gz"
      sha256 "e95945d52ab0bc2b1fcda8acfae00f433ea7a3041c3fe6cc0c5fc9579685d463"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.114/reactor-cli_v1.20261112.114_linux-arm64.tar.gz"
      sha256 "ffcf2c55eef1501bef8b3b58141dd551fc40de235adba132ba7a7bbc9aaf53a9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.114/reactor-cli_v1.20261112.114_linux-amd64.tar.gz"
      sha256 "b0bb5f70ad5796b06463874663f49cfc3e8cfc1777c551b35979d3931260c90b"
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
