# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261109.218"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.218/reactor-cli_v1.20261109.218_darwin-arm64.tar.gz"
      sha256 "716245e9bfa149a8010ca1bbbe9fc24a24e7bbe29e992bc79ba723d14c62b1fe"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.218/reactor-cli_v1.20261109.218_darwin-amd64.tar.gz"
      sha256 "94c9a49252783c297d5f265b408e1a6345fc6e22508b4b08ae812891ede61a6b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.218/reactor-cli_v1.20261109.218_linux-arm64.tar.gz"
      sha256 "73ae2c67dc27148204784d4ad87870c7db11c1e44ce0d3a23677a679defaa81d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.218/reactor-cli_v1.20261109.218_linux-amd64.tar.gz"
      sha256 "c2a9cce36fcbcaae39861ceaca34d3faddcf6bfb98145f4e1a535899e3933a63"
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
