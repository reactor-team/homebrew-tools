# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.112"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.112/reactor-cli_v1.20261111.112_darwin-arm64.tar.gz"
      sha256 "d9b986c970a344b5f6c1f8b6e76fa39c0c36d609898b79aadd27b3bca92182e0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.112/reactor-cli_v1.20261111.112_darwin-amd64.tar.gz"
      sha256 "17b36af68f0b291024367aa3e67ababc59c8ff5e090d09d003db81250180d1c1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.112/reactor-cli_v1.20261111.112_linux-arm64.tar.gz"
      sha256 "7db3f4f115d93c43e8473df2c9c07a931e736d549c152d14658c31656bdd395d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.112/reactor-cli_v1.20261111.112_linux-amd64.tar.gz"
      sha256 "4a5e3b858d2b9c81618b7a9cc38d84f4302a810f8a731ce9424fb87812bcf300"
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
