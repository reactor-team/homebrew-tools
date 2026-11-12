# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.90"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.90/reactor-cli_v1.20261112.90_darwin-arm64.tar.gz"
      sha256 "4e4dc599dc19e32bddff4af96bfe15419a540d3bc0286eab3d110b703dc3f781"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.90/reactor-cli_v1.20261112.90_darwin-amd64.tar.gz"
      sha256 "61913c91fb51cb112cd30beb762f7d2e77d1dbd84c619f5921c6a95604cb3b9f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.90/reactor-cli_v1.20261112.90_linux-arm64.tar.gz"
      sha256 "c0cc47b85438fc27ee16ae95cdf95fc47f633b54e138ed854675ef6144c02592"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.90/reactor-cli_v1.20261112.90_linux-amd64.tar.gz"
      sha256 "bf56fcf4dffec3292816d5c61a556f73753ef1153158cebbbde4830788bf2b7c"
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
