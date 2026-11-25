# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261125.4"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.4/reactor-cli_v1.20261125.4_darwin-arm64.tar.gz"
      sha256 "ea67d4259d86e8ff2e79c435bf84ddc03980a9b906f4e81780e2580cfcc549f7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.4/reactor-cli_v1.20261125.4_darwin-amd64.tar.gz"
      sha256 "7d92a54a013873764ea5cf563d051dfedf7cc4cdcad260ba5bfa37d2ad930d0e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.4/reactor-cli_v1.20261125.4_linux-arm64.tar.gz"
      sha256 "ff70f2676704b06db06a4cda940dbc0f19ec50c78d2e10896e2441c94479a065"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.4/reactor-cli_v1.20261125.4_linux-amd64.tar.gz"
      sha256 "f7a622ff3c085307e45b36996f627630d2016f8964fcf4c97324e3a7a4cf2b66"
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
