# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260821.22647"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22647/reactor-cli_v1.20260821.22647_darwin-arm64.tar.gz"
      sha256 "4429c4d281a6307a45069d495e2b0d307e0cb79d61ac44198a0e4256e8bfef2f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22647/reactor-cli_v1.20260821.22647_darwin-amd64.tar.gz"
      sha256 "1f40f1c022db7a06e5cfb213d2e65b3070c7ea817d10a75d5c9e5d3856673737"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22647/reactor-cli_v1.20260821.22647_linux-arm64.tar.gz"
      sha256 "8eecca3236867cab56662c9b09ffe31056f7bad38ed25365297904df472c1452"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260821.22647/reactor-cli_v1.20260821.22647_linux-amd64.tar.gz"
      sha256 "f6145c5982d5ea06d52a948c3aa0b2032e99e649527918c2b59f06d31bfa665c"
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
