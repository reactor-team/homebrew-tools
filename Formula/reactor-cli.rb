# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.362"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.362/reactor-cli_v1.20261111.362_darwin-arm64.tar.gz"
      sha256 "ba735e2d7ac3db1f64b9d9ea444937b74cb8d642c514f8c82256e3cc690f7f06"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.362/reactor-cli_v1.20261111.362_darwin-amd64.tar.gz"
      sha256 "bb7415ea0cd6fdad30c4e0c7f1241beded4defe69ae630df803a3f6d3182a224"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.362/reactor-cli_v1.20261111.362_linux-arm64.tar.gz"
      sha256 "934a8f92ca104b1f80378f28642858e22f165a0e8a9badd9c6ffd65e56b6b935"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.362/reactor-cli_v1.20261111.362_linux-amd64.tar.gz"
      sha256 "d79ef9bac5375aae00decc3635ff906f5cbb33ffcdb0b7e93877cf2f73696f05"
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
