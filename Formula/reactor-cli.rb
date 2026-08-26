# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260826.23359"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23359/reactor-cli_v1.20260826.23359_darwin-arm64.tar.gz"
      sha256 "e90a67960a2c6356c8b7214c14cc15202f5f40d70370db41fbe1ea2893b9d993"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23359/reactor-cli_v1.20260826.23359_darwin-amd64.tar.gz"
      sha256 "58a5b28bab04ee4b07996df3796e8f6a00873d45abc5683f3ea1ab57de9418e1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23359/reactor-cli_v1.20260826.23359_linux-arm64.tar.gz"
      sha256 "382cc2d8ca01a95ba7d82d9da61210a413866df80b41801ac38da2da0cadad51"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23359/reactor-cli_v1.20260826.23359_linux-amd64.tar.gz"
      sha256 "078e40d5693469dd0404aebbe156ebda3cebcf07ead1e352a1aefb3b332cd8b2"
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
