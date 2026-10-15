# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261015.367"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.367/reactor-cli_v1.20261015.367_darwin-arm64.tar.gz"
      sha256 "d0ff1d0853be5261229ae08cdbf08116d0f04b5f13a11ea732690082345bb57c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.367/reactor-cli_v1.20261015.367_darwin-amd64.tar.gz"
      sha256 "c4d6efbfa78dfc6f193790cd1afe80430f57fe77bb0164bd730daee6ae4dac9a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.367/reactor-cli_v1.20261015.367_linux-arm64.tar.gz"
      sha256 "d3db82eab8c4b0fa6f78526c84fdac332b6242554183d3dc6ba8b5005a294055"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261015.367/reactor-cli_v1.20261015.367_linux-amd64.tar.gz"
      sha256 "a78e0d90d0bae872a4735fcc35be511290a775dd16e169936dc9c693653b2d22"
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
