# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260617.16232"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260617.16232/reactor-cli_v1.20260617.16232_darwin-arm64.tar.gz"
      sha256 "e138e46ded4b5afe3eef1818258e370891196a57837b76355278503205a32c9c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260617.16232/reactor-cli_v1.20260617.16232_darwin-amd64.tar.gz"
      sha256 "8c370cfef97b88e50b2d96719cc7b9ea2660ebdc343c9833249b09fc32a94f74"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260617.16232/reactor-cli_v1.20260617.16232_linux-arm64.tar.gz"
      sha256 "e8a5739aed5824f0a1bbaa517d924391eb946ac7f2ae2c84241ce0be8926958e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260617.16232/reactor-cli_v1.20260617.16232_linux-amd64.tar.gz"
      sha256 "b619b44b25c1a801f6cf0f0f4b50981af77dfcd2f45b76309ae2dfee36f37f3a"
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
