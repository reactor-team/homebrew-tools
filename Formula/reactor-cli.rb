# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260611.15765"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15765/reactor-cli_v1.20260611.15765_darwin-arm64.tar.gz"
      sha256 "4f56a2562277a5c8f254db82ea8700f3a841aec621c33b3117a1b9e322cef0ed"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15765/reactor-cli_v1.20260611.15765_darwin-amd64.tar.gz"
      sha256 "f72234146abab807e6d1d055a04813cfe2f6d67492d0ff3e1f7bba41319741c8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15765/reactor-cli_v1.20260611.15765_linux-arm64.tar.gz"
      sha256 "487b05336f8765a1d5e8724f6e66d3a14e20744dbca80df46073a26f92c92799"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15765/reactor-cli_v1.20260611.15765_linux-amd64.tar.gz"
      sha256 "1c254d3573adcaa6bf4d2243d04d45e78a85e8cb90bf7246c6067e6ae56635d9"
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
