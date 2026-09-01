# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260901.24404"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24404/reactor-cli_v1.20260901.24404_darwin-arm64.tar.gz"
      sha256 "f53a219c31257c92184d7e45d61cf21012048ce1ab5512b81b90b4268e1bc417"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24404/reactor-cli_v1.20260901.24404_darwin-amd64.tar.gz"
      sha256 "b0fbd5e5e8ac7fe42cf81a8f04c50f5d633402da2f4ce59d54a0a56209f2c7a6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24404/reactor-cli_v1.20260901.24404_linux-arm64.tar.gz"
      sha256 "21da13066940842a715665679f3986c32dcd4f820343bf851ada6dda7a0d0a17"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24404/reactor-cli_v1.20260901.24404_linux-amd64.tar.gz"
      sha256 "a53a58c04c2e29faffae75f7931a16a204ef3dee242fdf7e3c88eb8ccc39859e"
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
