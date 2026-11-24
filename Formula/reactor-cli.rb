# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261124.10"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.10/reactor-cli_v1.20261124.10_darwin-arm64.tar.gz"
      sha256 "fed25551ea3bb048af10033ef523f599c3aa9447627dbf713d5cf737b92fb86f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.10/reactor-cli_v1.20261124.10_darwin-amd64.tar.gz"
      sha256 "04dad2470dadefba07943e174d07e0f87caeffd2f0b868d6f629577d3dc4bbd4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.10/reactor-cli_v1.20261124.10_linux-arm64.tar.gz"
      sha256 "74e3bbb0870b9dbd4a7d73c5c052523a6b5d49c4422fb5bf093939b3cb22a5b9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.10/reactor-cli_v1.20261124.10_linux-amd64.tar.gz"
      sha256 "6fa9a9c2cb1ba6a59b81820788652f1651bd0a71c4d0f7888c6158abc0f8a26e"
    end
  end

  def install
    bin.install "reactor"
    # `reactor upgrade` reads this file and prints the command instead of
    # replacing a binary that Homebrew owns.
    (lib/"reactor-cli/upgrade-command").write "brew upgrade reactor-team/tools/reactor-cli\n"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
    assert_equal "brew upgrade reactor-team/tools/reactor-cli\n",
                 (lib/"reactor-cli/upgrade-command").read
  end
end
