# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.287"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.287/reactor-cli_v1.20261020.287_darwin-arm64.tar.gz"
      sha256 "30181635972b35dc60df67b8c81f0bb0e7c0bc6f533adda65672cd29d9f61ba8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.287/reactor-cli_v1.20261020.287_darwin-amd64.tar.gz"
      sha256 "4f9333aa8ec09aedfe946b488efe9cf5d18a29e486d29b3f2285267196a5fb8b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.287/reactor-cli_v1.20261020.287_linux-arm64.tar.gz"
      sha256 "53543dbb8b7cde333e6720bf186920a5a867082eaa818e7d1ef41290be9f8c01"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.287/reactor-cli_v1.20261020.287_linux-amd64.tar.gz"
      sha256 "41503f6b6bbf5dc13f8ffbcff9da21bd550ddd46d9d9593fa94906a14ad67839"
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
