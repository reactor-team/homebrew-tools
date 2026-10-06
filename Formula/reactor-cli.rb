# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261006.272"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.272/reactor-cli_v1.20261006.272_darwin-arm64.tar.gz"
      sha256 "1c5ac94de7174786befc48499b638dd8d647c40a263d61f1a52e061c1f32c098"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.272/reactor-cli_v1.20261006.272_darwin-amd64.tar.gz"
      sha256 "86325b390c0e2f22ce20a487fadaaaa0f2140b48600264d01be101a6e1f00b02"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.272/reactor-cli_v1.20261006.272_linux-arm64.tar.gz"
      sha256 "9a03717c7890e8055eccc3846bc3069c09d9d7c2cd9907fd56f10a6ff0aa8591"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.272/reactor-cli_v1.20261006.272_linux-amd64.tar.gz"
      sha256 "2fb4df2243a959b79f0fa842bfa2934a490c3b719a94683b450257aac1a8dcfd"
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
