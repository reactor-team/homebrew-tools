# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260707.17607"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17607/reactor-cli_v1.20260707.17607_darwin-arm64.tar.gz"
      sha256 "9d68b0efe38eec0953140a8f48df9e8cec1e2edfa2085b9d1fc23b5e779359de"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17607/reactor-cli_v1.20260707.17607_darwin-amd64.tar.gz"
      sha256 "df8afd0b4dd1d006b7d61aa6db00bb39392dd5f392d0e36b4f98b2954411ddbb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17607/reactor-cli_v1.20260707.17607_linux-arm64.tar.gz"
      sha256 "1349ea56f31fdff458c7023743e70720d5644612de52092eb2bf4e7b2a6c04b8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17607/reactor-cli_v1.20260707.17607_linux-amd64.tar.gz"
      sha256 "f62e57d4ef9b6f2f3956d0b7cbd3faf3c76f62be004738b695f8ad7416044374"
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
