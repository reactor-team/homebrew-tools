# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260701.17111"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260701.17111/reactor-cli_v1.20260701.17111_darwin-arm64.tar.gz"
      sha256 "2c7603b4ed0ebbc7701f5ed11577b3f75b92c1fb800f7cd4a13acb0d33ea6c3a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260701.17111/reactor-cli_v1.20260701.17111_darwin-amd64.tar.gz"
      sha256 "4f13b067ac83f052d125085b924034ea08fd3a7486126157af10c4cb13e4256b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260701.17111/reactor-cli_v1.20260701.17111_linux-arm64.tar.gz"
      sha256 "2c28f9acaba07988fdc8442a92688580c6ec4b4a91a87f0b867ee3a01181c1d6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260701.17111/reactor-cli_v1.20260701.17111_linux-amd64.tar.gz"
      sha256 "d4dc9cebac83866f14d85780d5a30862c958e37594f04e5f72c35b7ce81e53b4"
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
