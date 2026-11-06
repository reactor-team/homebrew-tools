# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.515"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.515/reactor-cli_v1.20261106.515_darwin-arm64.tar.gz"
      sha256 "4081ce0a88d1e81681ca0aee65d2f6679981b8d57393ae53f5c275e287e1734e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.515/reactor-cli_v1.20261106.515_darwin-amd64.tar.gz"
      sha256 "6483a2a7e0aaebec3da1a1f6115234b1d4a7ca36b267fd0aa2d0924960982b5e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.515/reactor-cli_v1.20261106.515_linux-arm64.tar.gz"
      sha256 "dcdd4d5fae9d6b5dccb6339f4c6cf697b3bd2337140ae73b2c96c613c30166e0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.515/reactor-cli_v1.20261106.515_linux-amd64.tar.gz"
      sha256 "43954606fec493a58e1b61c50014050d610ebf29522c836c04961b18bb8ba52f"
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
