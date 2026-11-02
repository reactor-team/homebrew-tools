# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.400"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.400/reactor-cli_v1.20261102.400_darwin-arm64.tar.gz"
      sha256 "17196d4e7ff924480072f0645da2abbcc4c49a4fd900212cf2035892a880c95d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.400/reactor-cli_v1.20261102.400_darwin-amd64.tar.gz"
      sha256 "b47ffa759e6293b154866a1f962d5e49049f3827d325144b6e2da5c05fd8d54c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.400/reactor-cli_v1.20261102.400_linux-arm64.tar.gz"
      sha256 "6b2fef647013243a09e20e2902b6b1a035d03ab2a44cc5873d08ef159c213ef0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.400/reactor-cli_v1.20261102.400_linux-amd64.tar.gz"
      sha256 "6d4d08a9868809deffe14bb0e387259df5cf0769768b75338a7a77b9113a4c06"
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
