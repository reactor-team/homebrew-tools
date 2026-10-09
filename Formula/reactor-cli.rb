# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261009.281"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.281/reactor-cli_v1.20261009.281_darwin-arm64.tar.gz"
      sha256 "efa22c6909bf4c6819c6a58a5f9d2a8922d1b3e4da376d2e38b2c68d0f0d8f3b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.281/reactor-cli_v1.20261009.281_darwin-amd64.tar.gz"
      sha256 "b0881b55b5ae607f0d476c4179d4e70e5e59d78b66684c0ba0693e31ab6a4928"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.281/reactor-cli_v1.20261009.281_linux-arm64.tar.gz"
      sha256 "5e6ec501261821355f6eb5d7717d1a8c9133d90f6a50ae122fdc41d2b9d72d14"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.281/reactor-cli_v1.20261009.281_linux-amd64.tar.gz"
      sha256 "8dd65c7270735e86d71147befba95268295926fcc913c92bcdc8669018518fe5"
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
