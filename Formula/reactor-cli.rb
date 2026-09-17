# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260917.27374"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27374/reactor-cli_v1.20260917.27374_darwin-arm64.tar.gz"
      sha256 "224664d7f19ab300fc6fdfaabc4d784a1d445c0daefbafab3edc33f239fbd895"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27374/reactor-cli_v1.20260917.27374_darwin-amd64.tar.gz"
      sha256 "4cf059343af5c293b390b896e33a0805ee00544d83b0c550f18657b8a783af64"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27374/reactor-cli_v1.20260917.27374_linux-arm64.tar.gz"
      sha256 "17c1708192dcb7478e3617b72ec8759ed5f2bc1a8ebdf13af7a074f121879321"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27374/reactor-cli_v1.20260917.27374_linux-amd64.tar.gz"
      sha256 "445599e39e0ae58a385a1b312438e20d3e2cceff5a25a7038e07bd5e5232f965"
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
