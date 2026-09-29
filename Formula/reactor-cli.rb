# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.158"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.158/reactor-cli_v1.20260929.158_darwin-arm64.tar.gz"
      sha256 "b9412c51d6d9efb2c01e0e21482ef1fb196e3f0aaa9fa180ca1f4cca3c185929"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.158/reactor-cli_v1.20260929.158_darwin-amd64.tar.gz"
      sha256 "01a98b2fdfa88a219cc61870ff376b22aca892099be72bcc8ef668427d4e8633"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.158/reactor-cli_v1.20260929.158_linux-arm64.tar.gz"
      sha256 "ecd8c40f314465768ac42dde61a48396ecd7db0e498e8d3c8181e49e0e743dcd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.158/reactor-cli_v1.20260929.158_linux-amd64.tar.gz"
      sha256 "79391c70a5899412abfd7946835164eec249cf6a2bff52760fa83f2fec94723e"
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
