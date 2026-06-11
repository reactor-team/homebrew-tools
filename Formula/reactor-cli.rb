# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260611.15774"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15774/reactor-cli_v1.20260611.15774_darwin-arm64.tar.gz"
      sha256 "769e279afcff5013ef3633de992c31e6154ea35a78ae5a54df6c1396f7ee361e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15774/reactor-cli_v1.20260611.15774_darwin-amd64.tar.gz"
      sha256 "28bf07b4d4b8d3fccc2571ee7984ff14db779248163e80c48e4a1cb249cffffe"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15774/reactor-cli_v1.20260611.15774_linux-arm64.tar.gz"
      sha256 "ef9145c60ffe81d99fce268dd456844f6d55b9cb8b7d983354faeebf22c14b4f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15774/reactor-cli_v1.20260611.15774_linux-amd64.tar.gz"
      sha256 "aedfe3de85e7c35261f798b7a116206106a796cd0a5c246e5444952122392937"
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
