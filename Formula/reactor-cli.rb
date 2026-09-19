# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260919.27810"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27810/reactor-cli_v1.20260919.27810_darwin-arm64.tar.gz"
      sha256 "45d295dc2eea9c22be085a3c48a3fcec96662af1bb80cf6e5e22e9e872c3a9d6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27810/reactor-cli_v1.20260919.27810_darwin-amd64.tar.gz"
      sha256 "2398a35a43d312265a3b18d3f29dfc40a3486016fbc268abcf5c6a0d93099304"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27810/reactor-cli_v1.20260919.27810_linux-arm64.tar.gz"
      sha256 "9aa4988cc4de008d3c62def9831ad9f0c09dc3c1b2e847b922bf7935c3c0bdbc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27810/reactor-cli_v1.20260919.27810_linux-amd64.tar.gz"
      sha256 "0a1f3facb1b3ee5c1fd30c297e087d94596defd23a8cc1cdeb2ae3602fc985bf"
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
