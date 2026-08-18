# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260818.22134"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22134/reactor-cli_v1.20260818.22134_darwin-arm64.tar.gz"
      sha256 "b2ad7d33dd9f83f49d86348e83aedef3fe9c968d8f3688755e09a2c685e56d94"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22134/reactor-cli_v1.20260818.22134_darwin-amd64.tar.gz"
      sha256 "149fe0a71ada8a2f20a7d14a0779fdad2e5bb03b6e197f6d0b716a102bad703e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22134/reactor-cli_v1.20260818.22134_linux-arm64.tar.gz"
      sha256 "5ba431645c2c7355b6e02d10434edbea315137b707329fa015cbb45bb2cd5be3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260818.22134/reactor-cli_v1.20260818.22134_linux-amd64.tar.gz"
      sha256 "085afddafe064fd0ba465db3f683ba2997ae38b8bcb125150810d587dee53863"
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
