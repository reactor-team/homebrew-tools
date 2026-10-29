# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261029.170"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.170/reactor-cli_v1.20261029.170_darwin-arm64.tar.gz"
      sha256 "c133e80c3a4a786e633689e566250ef96bf5836cdae3896f063960cb42a61d18"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.170/reactor-cli_v1.20261029.170_darwin-amd64.tar.gz"
      sha256 "3c45cdf692c4827f3d51ce685061c9ac5d8f2dade18a7380f5c3a2e06e1cc4ae"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.170/reactor-cli_v1.20261029.170_linux-arm64.tar.gz"
      sha256 "80891681ac63d0ba9efe44ce30de486d5bf044fbe339c5ac17b96609ad5d10fa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.170/reactor-cli_v1.20261029.170_linux-amd64.tar.gz"
      sha256 "aae231adc261feb0b31a69d23198a5251d57f98bc8befb45566220654df41c7b"
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
