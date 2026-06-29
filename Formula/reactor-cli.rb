# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260629.16946"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260629.16946/reactor-cli_v1.20260629.16946_darwin-arm64.tar.gz"
      sha256 "2a1dd0598bb3de0e5daee488c403a7af4d17d09ad04a5872a7271d99d79e5536"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260629.16946/reactor-cli_v1.20260629.16946_darwin-amd64.tar.gz"
      sha256 "0247cd877ca71e52bf02f73a24a5f3a04d4c95061e30c9d23a991ccde3fb4072"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260629.16946/reactor-cli_v1.20260629.16946_linux-arm64.tar.gz"
      sha256 "ad944fea82686a87468fe780d9bb013bb1d5c8eccf2655b050eeb4e225d2e7eb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260629.16946/reactor-cli_v1.20260629.16946_linux-amd64.tar.gz"
      sha256 "168ad6566944b40ffc5da713501ffd3774930e4572cfcc5366ffdaf04ef5aa2b"
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
