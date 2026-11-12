# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.331"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.331/reactor-cli_v1.20261112.331_darwin-arm64.tar.gz"
      sha256 "4e504effb19782560e560e718d1b75d62e441d395f9cc56ccbe95ac6fb1e88fb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.331/reactor-cli_v1.20261112.331_darwin-amd64.tar.gz"
      sha256 "7bc9b9dbdf654e3af11ede65dce8beeae48222ce580cadbeac47dd5a7e4f738e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.331/reactor-cli_v1.20261112.331_linux-arm64.tar.gz"
      sha256 "d2f62ea2aaffcbf043d86ebf9362888345d3c1d2ddc7117b01431b7fb44882b3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.331/reactor-cli_v1.20261112.331_linux-amd64.tar.gz"
      sha256 "89041f4589264eb867b1914444c5c8a51f0d005b3caa37b872aec5e47c8b1501"
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
