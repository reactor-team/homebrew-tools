# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260721.18927"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260721.18927/reactor-cli_v1.20260721.18927_darwin-arm64.tar.gz"
      sha256 "5a41310af281c0f2be3be7cbe3f0a0446cea7be1a1f00f22426f6a6958ed26d4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260721.18927/reactor-cli_v1.20260721.18927_darwin-amd64.tar.gz"
      sha256 "51db976ca691d0c9ffcf718582df6fec19ec8dacc77be8a90c80d041377081e6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260721.18927/reactor-cli_v1.20260721.18927_linux-arm64.tar.gz"
      sha256 "d57847fb09faea6d1cfd7ad58af1454ab94dbf0caed3b42def02fb3af30b0d1a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260721.18927/reactor-cli_v1.20260721.18927_linux-amd64.tar.gz"
      sha256 "4896cfde3f49abbc20dfc21486ecc93d9f8ae47e50f54dbac4e2c7508d0c32f0"
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
