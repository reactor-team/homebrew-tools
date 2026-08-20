# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260820.22485"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22485/reactor-cli_v1.20260820.22485_darwin-arm64.tar.gz"
      sha256 "dd2d841a50f815ce0b750d1e0133cdf0e00ebbe8b2e996d2231d876438024322"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22485/reactor-cli_v1.20260820.22485_darwin-amd64.tar.gz"
      sha256 "9349619911e19c87c8cfd1b10a54b219e692ad06392945b8894eaa609430ea92"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22485/reactor-cli_v1.20260820.22485_linux-arm64.tar.gz"
      sha256 "65226dcbeefedba1bf04e3b4f983d36b9d691aef952574d9158cb3fc18851d5f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22485/reactor-cli_v1.20260820.22485_linux-amd64.tar.gz"
      sha256 "372a8c9e40844127d29c5c0ad0002dd5e885338483ac56f2a8222d5bcd5e18a0"
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
