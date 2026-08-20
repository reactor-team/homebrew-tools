# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260820.22416"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22416/reactor-cli_v1.20260820.22416_darwin-arm64.tar.gz"
      sha256 "d36c71272e6e79edadcaf9f267cc3ba0b00596b901b61ad5c007eeeaf208e602"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22416/reactor-cli_v1.20260820.22416_darwin-amd64.tar.gz"
      sha256 "19994d6d5bd0b6ea3784587cd62d9f5ae949fd8610d5aea1c44b8f4009c58d1e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22416/reactor-cli_v1.20260820.22416_linux-arm64.tar.gz"
      sha256 "83bafcadb175824244eac91fa2d2e09cc2bd5bb4517aeea6b3cc72a3aba97c50"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22416/reactor-cli_v1.20260820.22416_linux-amd64.tar.gz"
      sha256 "91c8d177335210322098801d3332f4647168a5db16f742bbee7e9e0951272dab"
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
