# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260917.27489"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27489/reactor-cli_v1.20260917.27489_darwin-arm64.tar.gz"
      sha256 "1702b24f26e975551b432ef27b0c8996e0b4c7ff22aa66eb159d30a7666c7827"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27489/reactor-cli_v1.20260917.27489_darwin-amd64.tar.gz"
      sha256 "c837edfcd4ff0f02711ce254a52b52722b8962769e524215e9698319db9ff54f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27489/reactor-cli_v1.20260917.27489_linux-arm64.tar.gz"
      sha256 "4a3a60e126a4d0fc0395d23043c6a2ea0ac7859b624f5a3962f8a721417af25b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27489/reactor-cli_v1.20260917.27489_linux-amd64.tar.gz"
      sha256 "9ba0ea839628bb998abbb52cb786898d58ff1a933bb6f3e887e1fb2b0bc2dc41"
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
