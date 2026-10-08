# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.133"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.133/reactor-cli_v1.20261008.133_darwin-arm64.tar.gz"
      sha256 "29e0322a65366c312325a14ce08cac57471afb3e6b0520ca9724fc208043a719"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.133/reactor-cli_v1.20261008.133_darwin-amd64.tar.gz"
      sha256 "c9455dbf030bcc4a124abae2eb9f5f4b9aca505451cef8ce660f7b70c3cc8d25"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.133/reactor-cli_v1.20261008.133_linux-arm64.tar.gz"
      sha256 "3369ca4dbf9a6d3e128459b5118231e641155c273f3d348824ca93d4087d217c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.133/reactor-cli_v1.20261008.133_linux-amd64.tar.gz"
      sha256 "51f5328ce30bdf0b5895cdebafe9e07cff8d2005922cbe7788ee01c12632a6aa"
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
