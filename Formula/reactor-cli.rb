# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261023.45"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.45/reactor-cli_v1.20261023.45_darwin-arm64.tar.gz"
      sha256 "f9dee1204da472bd2cd33893624538d123129c2ba849bdedf2406184184393d9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.45/reactor-cli_v1.20261023.45_darwin-amd64.tar.gz"
      sha256 "14a5232c85d80d638990956d4d16ff4ab91414ead465eb47df4c373464bb9512"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.45/reactor-cli_v1.20261023.45_linux-arm64.tar.gz"
      sha256 "b948432222689e33962bb88ef64fff06a8c9efe3502a3377e63b6e41e4aac219"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.45/reactor-cli_v1.20261023.45_linux-amd64.tar.gz"
      sha256 "959948ff665ac986b2dfa240fbc7750f6796c87edb4736de32ebcd6fd15f6416"
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
