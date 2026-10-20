# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.316"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.316/reactor-cli_v1.20261020.316_darwin-arm64.tar.gz"
      sha256 "b36389705110bfdd26b24eb701eff39c5690f56cbc3eb9cfd6482ebe32d4d3d6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.316/reactor-cli_v1.20261020.316_darwin-amd64.tar.gz"
      sha256 "9581df158e3782c1bf1d5675b4a71a2ce1367ae571901f5eacd7b5d0fab8f318"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.316/reactor-cli_v1.20261020.316_linux-arm64.tar.gz"
      sha256 "d751ecebe73107d33b13da55bfd0110e3e6a98287762170c8d9f342f9755cb0b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.316/reactor-cli_v1.20261020.316_linux-amd64.tar.gz"
      sha256 "b1739404033f9d9cc2e63bd18378c7bfbb055912d614e1d439b01ec4040dbb05"
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
