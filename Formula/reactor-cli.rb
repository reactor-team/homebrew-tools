# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261006.270"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.270/reactor-cli_v1.20261006.270_darwin-arm64.tar.gz"
      sha256 "6945de50b2a43cd9c8e42200e2a4e4d7fb4e6f44553d87f33281e12733016d9b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.270/reactor-cli_v1.20261006.270_darwin-amd64.tar.gz"
      sha256 "7a8221e0ecc0f27d6fcb992695a1d1ca852c67313dc07ec9ac1aa52f27f9b6ff"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.270/reactor-cli_v1.20261006.270_linux-arm64.tar.gz"
      sha256 "99898bf209b8fa24f0a928f27f33f323fbef1d7d285ce3b08d5b3f8e6b317de8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.270/reactor-cli_v1.20261006.270_linux-amd64.tar.gz"
      sha256 "0fae06e6092e4d38ccd61b971d3fc06e84604b8cbd9e390156c9ff6ebdaaba0b"
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
