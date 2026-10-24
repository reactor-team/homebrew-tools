# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261024.148"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.148/reactor-cli_v1.20261024.148_darwin-arm64.tar.gz"
      sha256 "38e3c26322ee96263cc860814735535af85b3cc42ba4482d41d896195f765f55"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.148/reactor-cli_v1.20261024.148_darwin-amd64.tar.gz"
      sha256 "05f02c30942c6a79fc0722fbe19bde27205800d560be1ea0cfa395c100dcd575"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.148/reactor-cli_v1.20261024.148_linux-arm64.tar.gz"
      sha256 "d92b56cde3b53e036ce945de76d22dca90f32e227ba727fbb0c5a974ea923235"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.148/reactor-cli_v1.20261024.148_linux-amd64.tar.gz"
      sha256 "ce9d735946407e5e5c72ae118f7193143cb5d1ac2e125b463f430492f18c574e"
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
