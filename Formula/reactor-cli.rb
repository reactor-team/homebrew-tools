# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.466"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.466/reactor-cli_v1.20261013.466_darwin-arm64.tar.gz"
      sha256 "ac9d5e0afcda11a1eaee3d06e4c662058bea225acf4a298437fbf93555ee0c71"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.466/reactor-cli_v1.20261013.466_darwin-amd64.tar.gz"
      sha256 "5ff1bf41d9f0029c0945eeec771e1a7fd504129b2db5714463f9472044f95bf0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.466/reactor-cli_v1.20261013.466_linux-arm64.tar.gz"
      sha256 "8752dec50f4ba34350c6b95d23f6e5ea96ab75b9da37e4128834a8dafb6f6861"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.466/reactor-cli_v1.20261013.466_linux-amd64.tar.gz"
      sha256 "9c732b29537563c769df223d3e58bb32cfd35d3fb4d105e128eb48b6a19a0b0e"
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
