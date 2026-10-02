# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.83"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.83/reactor-cli_v1.20261002.83_darwin-arm64.tar.gz"
      sha256 "2e466db7d2b3108c2533a48b41be8c9017b76d6584b313d44741cf3525f6be43"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.83/reactor-cli_v1.20261002.83_darwin-amd64.tar.gz"
      sha256 "19b5a95b447305b695f4aecee5f0a0b08bf79068e74c71044ec596d8561216cb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.83/reactor-cli_v1.20261002.83_linux-arm64.tar.gz"
      sha256 "633ec31b1df67ba1d0da4bd753b6bf4bf1b63dfed2fcf2da3d5f6cbb0c9f04ac"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.83/reactor-cli_v1.20261002.83_linux-amd64.tar.gz"
      sha256 "0877ff7e84c37faddc047e4a4ebc4d663d00fbe3822749ec5a2af5b3f1503cc1"
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
