# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261023.93"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.93/reactor-cli_v1.20261023.93_darwin-arm64.tar.gz"
      sha256 "2e28937b67ea16f7607431a49d8dc68cd2085ee7f0011d4aaee2cd311e248dad"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.93/reactor-cli_v1.20261023.93_darwin-amd64.tar.gz"
      sha256 "c6ef4933f3ff7e5629eb99f923c8a1c7a438efcb464755a4ec1de96e18df54ba"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.93/reactor-cli_v1.20261023.93_linux-arm64.tar.gz"
      sha256 "1d872db9f4c19f1861f9c313e61fe73462bff0a8159a88f4528ef89a114bf5ff"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.93/reactor-cli_v1.20261023.93_linux-amd64.tar.gz"
      sha256 "3588b0299927c5940940fda0ef05de2e916f11018605897cfc64873355b10831"
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
