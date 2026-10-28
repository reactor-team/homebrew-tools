# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261028.458"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.458/reactor-cli_v1.20261028.458_darwin-arm64.tar.gz"
      sha256 "a39898822bbc3fc090ee5c6db9d1a04a5afd901ec994b50aeef4828165282f87"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.458/reactor-cli_v1.20261028.458_darwin-amd64.tar.gz"
      sha256 "012513d77fcb722667f2489a01789fb3320320ec95e6cd797285dad3e30dbec8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.458/reactor-cli_v1.20261028.458_linux-arm64.tar.gz"
      sha256 "d9493e643e9ba72349454b3b852faead100d722de0e225ee3f9db08db89431d9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.458/reactor-cli_v1.20261028.458_linux-amd64.tar.gz"
      sha256 "8b1d1439a60f91b75286ba7137966f27f67ca9e8eb667eb5bd5a5b7c298ba70d"
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
