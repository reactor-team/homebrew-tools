# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260724.19152"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19152/reactor-cli_v1.20260724.19152_darwin-arm64.tar.gz"
      sha256 "089b03e04faeda82164ab2cf0856b44feb7c9c7f36743e8f8fa4174ff830046c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19152/reactor-cli_v1.20260724.19152_darwin-amd64.tar.gz"
      sha256 "cfaa04d770a07fed7ddb208de0e7a2350218c954d25d3e277e6beb2043e62127"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19152/reactor-cli_v1.20260724.19152_linux-arm64.tar.gz"
      sha256 "ffec57a709b039cebe19eb872b700ca793c1124392620c6ba8a57703d0c2995d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19152/reactor-cli_v1.20260724.19152_linux-amd64.tar.gz"
      sha256 "1db356ba9f933e79b72759956175d3f01d8176201bb5baea431d6fe9f4afe03b"
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
