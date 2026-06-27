# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16893"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16893/reactor-cli_v1.20260627.16893_darwin-arm64.tar.gz"
      sha256 "f2839287ee598ae91b1980d7da31399cb760aa62730a7bae42120519e4a2dd0d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16893/reactor-cli_v1.20260627.16893_darwin-amd64.tar.gz"
      sha256 "d0c9d1d2e248716152ef382cfe1a8c22b39d56ea95841f5f76f2a56d5c36bc27"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16893/reactor-cli_v1.20260627.16893_linux-arm64.tar.gz"
      sha256 "500a994d5ff86def13d9efc45955effb8a020b359d56c71b99f326181129c18b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16893/reactor-cli_v1.20260627.16893_linux-amd64.tar.gz"
      sha256 "791365ff7d99e71e008ff4e30ec77aaa2048c5f969ca22f4ca175ef6f085561d"
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
