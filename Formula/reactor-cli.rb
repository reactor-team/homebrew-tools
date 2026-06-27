# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16849"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16849/reactor-cli_v1.20260627.16849_darwin-arm64.tar.gz"
      sha256 "9ea723e175ea1d39ecb071fdd11cb8aea022348f652d214c88c33f203b3c9c9f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16849/reactor-cli_v1.20260627.16849_darwin-amd64.tar.gz"
      sha256 "15d3539222745a5fea9c44cf2096c0e8f6fcda81a4475e8839cec7833bc678a8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16849/reactor-cli_v1.20260627.16849_linux-arm64.tar.gz"
      sha256 "95fa5b56eb2743183ff091fff7f39ed07f2f2f81845da3f5a49a4080f2576ac1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16849/reactor-cli_v1.20260627.16849_linux-amd64.tar.gz"
      sha256 "f31d39b2023a03e125a5ca8f08bb4ecc6c73eb67b4e097573476bcd2028a90e5"
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
