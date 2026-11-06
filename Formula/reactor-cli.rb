# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.520"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.520/reactor-cli_v1.20261106.520_darwin-arm64.tar.gz"
      sha256 "1b7e533a8cad13dbdef9e69486d3fbed4ad3903bde842ccfd76ffcfa7d38d125"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.520/reactor-cli_v1.20261106.520_darwin-amd64.tar.gz"
      sha256 "8ec8b826ab8683204c41798a937a491d0af5aeed599922b01b4ced1d3d33d779"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.520/reactor-cli_v1.20261106.520_linux-arm64.tar.gz"
      sha256 "79fa2d4588017c7f15dca319149224fb096aabdb296d639297482b733719109d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.520/reactor-cli_v1.20261106.520_linux-amd64.tar.gz"
      sha256 "9b435889371e60e567bdde76b9f37d1d5d9dd37262c524ed0d6122ce32c5e973"
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
