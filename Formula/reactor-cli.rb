# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260908.25364"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260908.25364/reactor-cli_v1.20260908.25364_darwin-arm64.tar.gz"
      sha256 "cae1ccbd473bec80b2dcab1a13b6c5413e09cf8748e43917e20c84f175b47a9b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260908.25364/reactor-cli_v1.20260908.25364_darwin-amd64.tar.gz"
      sha256 "6439b75c4d1199696f80f16c1e5bc8d0a0ade7a9774c945b3b29b20716a389fb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260908.25364/reactor-cli_v1.20260908.25364_linux-arm64.tar.gz"
      sha256 "adb27d0c9a00ece4523eeaea4b8a7428d916e4947683f5bb8353cb96063d0086"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260908.25364/reactor-cli_v1.20260908.25364_linux-amd64.tar.gz"
      sha256 "7b37e5d707de6c86e9b98fe1b672009f9f4537bb4180d33be318013da5924502"
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
