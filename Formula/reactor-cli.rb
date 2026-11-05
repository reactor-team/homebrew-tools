# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.391"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.391/reactor-cli_v1.20261105.391_darwin-arm64.tar.gz"
      sha256 "0b2fa255a662a65950a8a1d6bc6ca9dbd79f64dfea016cf5581a0432d6449049"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.391/reactor-cli_v1.20261105.391_darwin-amd64.tar.gz"
      sha256 "c90c3d9501ccaeeb4286dd125b6681943389153168c09b0611dddc3fc2ce2534"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.391/reactor-cli_v1.20261105.391_linux-arm64.tar.gz"
      sha256 "7d21911c86600a86ce22c6473cfb934dfc80c710ad13e3fe05fb36cdc38ada00"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.391/reactor-cli_v1.20261105.391_linux-amd64.tar.gz"
      sha256 "3c867c8ecda659b052ddcc84275f5e3098c032fe1863ac4d96db1a4f7ce724f3"
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
