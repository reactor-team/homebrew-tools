# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.380"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.380/reactor-cli_v1.20261013.380_darwin-arm64.tar.gz"
      sha256 "d922e7114b39735740de9d5810fa069ef329e4f13e9f83fbbbe955162ffd91a2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.380/reactor-cli_v1.20261013.380_darwin-amd64.tar.gz"
      sha256 "73a06b15362a52c631595d63258344d686471ced67a622f9f620d024b11a3d55"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.380/reactor-cli_v1.20261013.380_linux-arm64.tar.gz"
      sha256 "98ad43b0ce8bb3b06f473833d33b251571d95e12c9f5fb35bbf9d969f2ac5dcb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.380/reactor-cli_v1.20261013.380_linux-amd64.tar.gz"
      sha256 "4dc4cdb4507f3b37180196fb4d2deddd11be4c306e0598aa895ead31350024ee"
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
