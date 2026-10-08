# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.126"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.126/reactor-cli_v1.20261008.126_darwin-arm64.tar.gz"
      sha256 "3d3279631b275d5d52e9e7782e510693eeb2160608cde451215ea8df3d09034b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.126/reactor-cli_v1.20261008.126_darwin-amd64.tar.gz"
      sha256 "d8385671685183c9e2e8257045b48fe6eff58f15f07e37d475d958e7489a2643"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.126/reactor-cli_v1.20261008.126_linux-arm64.tar.gz"
      sha256 "f180649c1a946ebceb223ff8e2e59acad07ddec478c2203adc21ca7858ccc1b9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.126/reactor-cli_v1.20261008.126_linux-amd64.tar.gz"
      sha256 "ada5becf93968d44e6c4775c8e7809bc3f482c727af3e0dce83ee9c9c64dcc3e"
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
