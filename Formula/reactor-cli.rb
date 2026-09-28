# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260928.28873"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28873/reactor-cli_v1.20260928.28873_darwin-arm64.tar.gz"
      sha256 "bb4b44090a2d1286e21efd0c8d81efcf473aa43b6530dcc8a7aecedcd881a8de"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28873/reactor-cli_v1.20260928.28873_darwin-amd64.tar.gz"
      sha256 "51ba5b617f02f1b0c37ac1dfdc776455490a0e6e0647ed3615b8b6addf68ca07"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28873/reactor-cli_v1.20260928.28873_linux-arm64.tar.gz"
      sha256 "90564de51f251e9e6708f9daf85aa8dd705c7825b4ca91ce69b8b2d19a7d27fc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28873/reactor-cli_v1.20260928.28873_linux-amd64.tar.gz"
      sha256 "1dc2a1470b2d1384a46445c8230e99ce9db87d7c6bfe58bf5151fe80d022f6f3"
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
