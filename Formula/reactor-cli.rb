# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261026.206"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.206/reactor-cli_v1.20261026.206_darwin-arm64.tar.gz"
      sha256 "813e93ef72c7804eeaeb3f15489aba9b2bf4a5506924ed5e4b0eb3d4cffd043a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.206/reactor-cli_v1.20261026.206_darwin-amd64.tar.gz"
      sha256 "5c81f77e26e818bdf04f18c6db3f46730e55693fc98bb9b762cd3eb96f0a048c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.206/reactor-cli_v1.20261026.206_linux-arm64.tar.gz"
      sha256 "269039b4ebb829b7b32e6887296ca445db338d701338947bb51e225f2cf77121"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261026.206/reactor-cli_v1.20261026.206_linux-amd64.tar.gz"
      sha256 "c838a38b4457873a9100ce109ea29a6339907f6ac17eb33d4d25486c248fc01e"
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
