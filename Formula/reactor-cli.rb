# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260921.28034"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28034/reactor-cli_v1.20260921.28034_darwin-arm64.tar.gz"
      sha256 "04d349266a888ae08e5598aa218f71d33d18c60f4625ba11f800ef9b477126f8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28034/reactor-cli_v1.20260921.28034_darwin-amd64.tar.gz"
      sha256 "e4978935c57c2c41a474da2f45245502f184926992d044c09d2bf94a344e3c98"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28034/reactor-cli_v1.20260921.28034_linux-arm64.tar.gz"
      sha256 "e4380a58ba1938d70c601a1892c56132d42bbd4ac3e190141517381cf010fb87"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28034/reactor-cli_v1.20260921.28034_linux-amd64.tar.gz"
      sha256 "34329246c844f2c30509da640c363ab7b67255ff1873752909fb6e7307769ad4"
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
