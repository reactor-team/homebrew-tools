# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261015.255"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.255/reactor-cli_v1.20261015.255_darwin-arm64.tar.gz"
      sha256 "f2a7dc1868908b927231be9a743b96ab999aad0b41c8820b6ecb4dd2e92286c5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.255/reactor-cli_v1.20261015.255_darwin-amd64.tar.gz"
      sha256 "aba8a7335c3b88994102436d626366690ae905aaab8f4c5e688e1447a02e6d08"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.255/reactor-cli_v1.20261015.255_linux-arm64.tar.gz"
      sha256 "951391042accf7e815fff41e41517b8a1f99a901eb7e67d9662c3043dc91d61a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.255/reactor-cli_v1.20261015.255_linux-amd64.tar.gz"
      sha256 "b910b70f4aa78fe9182b7e377117873c6258587cc8e4a77904fc2eac2c8a6f07"
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
