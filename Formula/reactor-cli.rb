# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260910.25740"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25740/reactor-cli_v1.20260910.25740_darwin-arm64.tar.gz"
      sha256 "84273cfbfb978e1333c15a8903154305ed571792b384fc856eb52213ac982e58"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25740/reactor-cli_v1.20260910.25740_darwin-amd64.tar.gz"
      sha256 "aa7ec73a2a4b9457f2bb73526d8555a750465abf6dc48db004ea84e132df802f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25740/reactor-cli_v1.20260910.25740_linux-arm64.tar.gz"
      sha256 "4eb65ff79fd013c1d4e02622859647631211fa653184f8c7d8c00bf9d208e2da"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25740/reactor-cli_v1.20260910.25740_linux-amd64.tar.gz"
      sha256 "075104c551bdb94d091bb201873c2d4bd29f05084dae88726708e861c598f765"
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
