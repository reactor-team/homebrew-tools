# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261026.125"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.125/reactor-cli_v1.20261026.125_darwin-arm64.tar.gz"
      sha256 "843d6131a401d05949c81ccdc7bd362e18cae59fb1d7adfba354f2a63e09d67b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.125/reactor-cli_v1.20261026.125_darwin-amd64.tar.gz"
      sha256 "d9c91531f6042647e94efc4ba0884cccd65b18ca75254db6e0cd5ca469ac494d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.125/reactor-cli_v1.20261026.125_linux-arm64.tar.gz"
      sha256 "d7432a382e89311bdce41d6335a1f5a1b259e6b5509e5795fe96278b65ab9de9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.125/reactor-cli_v1.20261026.125_linux-amd64.tar.gz"
      sha256 "e469a740ae02530977fb44ed8b7ee593720d6f95e1104b7846d3269538408961"
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
