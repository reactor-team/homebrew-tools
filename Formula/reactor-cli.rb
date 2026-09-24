# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260924.28392"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28392/reactor-cli_v1.20260924.28392_darwin-arm64.tar.gz"
      sha256 "6401b8b48bb6d6d9d7c89e86863ab74c9f3d8c98dd2e3852daaf9710bcf7d588"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28392/reactor-cli_v1.20260924.28392_darwin-amd64.tar.gz"
      sha256 "9f6bd9c83fda3597f333e1d24897682e876c66a15c960b2abfa8249341f48811"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28392/reactor-cli_v1.20260924.28392_linux-arm64.tar.gz"
      sha256 "614c68e79b7ca932e27f692309fd688be30771f5f235977e38535f2825370cbd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28392/reactor-cli_v1.20260924.28392_linux-amd64.tar.gz"
      sha256 "521981a0652c64044fa0fde632f03fd0739d16da731c0e2695fccf1bb928d421"
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
