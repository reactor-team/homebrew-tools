# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260730.20302"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260730.20302/reactor-cli_v1.20260730.20302_darwin-arm64.tar.gz"
      sha256 "dc0fb6b420baf1ce79d8e10d318538c5e477d11c724215c4c814502bbaf3db41"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260730.20302/reactor-cli_v1.20260730.20302_darwin-amd64.tar.gz"
      sha256 "fd4587fd6d5e8112f5b07b8cc4c6e914e64fae949da8fb4c908f24aa60e94be7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260730.20302/reactor-cli_v1.20260730.20302_linux-arm64.tar.gz"
      sha256 "f95d87c1c1e4bac464349f87f82828dc0d27b1a64b9cd59c86acd817b8bbd731"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260730.20302/reactor-cli_v1.20260730.20302_linux-amd64.tar.gz"
      sha256 "3c9dd4f9b21a462e5ee2e6a861cd9b3561a89db93858bbf89c3b01708acaef9e"
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
