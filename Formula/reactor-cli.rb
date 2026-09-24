# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260924.28426"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28426/reactor-cli_v1.20260924.28426_darwin-arm64.tar.gz"
      sha256 "f4ef8115b2edd20b2196fd4b397816fd18814e4d74958b96a6250aa5de0d30fc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28426/reactor-cli_v1.20260924.28426_darwin-amd64.tar.gz"
      sha256 "ca566dbf309c162a87e8d00496af103986dc55facf83b5920023b18c0d4d8feb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28426/reactor-cli_v1.20260924.28426_linux-arm64.tar.gz"
      sha256 "860c0b894ddfcd5350221cc137a54364ba8bd602856e1fec4fd738e1d18e2488"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28426/reactor-cli_v1.20260924.28426_linux-amd64.tar.gz"
      sha256 "98aed015b3c515eb3e4cb34f2962c2a06a8916abf5e9d0adefa27ca7cbb399b1"
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
