# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260707.17751"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17751/reactor-cli_v1.20260707.17751_darwin-arm64.tar.gz"
      sha256 "43591f5dcf8a818ab91405f39aab343d68076d43bcdc7b8586837da9c67e947a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17751/reactor-cli_v1.20260707.17751_darwin-amd64.tar.gz"
      sha256 "1237e489f89eae88d43c07f07bd4299ebda85a91fbc06d04419d7ebcb6947b1a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17751/reactor-cli_v1.20260707.17751_linux-arm64.tar.gz"
      sha256 "9542aa599bad20511c2e386fca9f301f1edb0a24056add0d8a202199f3fe0ec4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17751/reactor-cli_v1.20260707.17751_linux-amd64.tar.gz"
      sha256 "6323fbc504d1f6ad752e9a5fbd28c0428cd07be72e53f039a8f49ae601c7f805"
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
