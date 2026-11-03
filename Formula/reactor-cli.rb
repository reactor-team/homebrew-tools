# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261103.179"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.179/reactor-cli_v1.20261103.179_darwin-arm64.tar.gz"
      sha256 "dadc991ef5fb537d7fb765065ab535fb1c838b04265cfc734851f419b7db7ea1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.179/reactor-cli_v1.20261103.179_darwin-amd64.tar.gz"
      sha256 "08be207b4f330d1020b85908985022757e9cc0683aceaedd8894a42e850befae"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.179/reactor-cli_v1.20261103.179_linux-arm64.tar.gz"
      sha256 "00bf325f24a7c1b5b002696e8ec6892a996590482bd6f6a6cfde4f4b1dcc7c19"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.179/reactor-cli_v1.20261103.179_linux-amd64.tar.gz"
      sha256 "15c6a671ad61b99d9df7988eaa4f42dfcf1e1df03f1d0164d756f10a8ca1be52"
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
