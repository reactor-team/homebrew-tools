# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.405"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.405/reactor-cli_v1.20261013.405_darwin-arm64.tar.gz"
      sha256 "774ef993753db25d9a1ec21045324a029969e4b62f096363588bed17c1b472e4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.405/reactor-cli_v1.20261013.405_darwin-amd64.tar.gz"
      sha256 "0c119c4fef496fbc2aed4a217fc192e7d5234e4478c57525701399335e5c11eb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.405/reactor-cli_v1.20261013.405_linux-arm64.tar.gz"
      sha256 "f792842850134abe467e43f0310517914c10b5c1eb95d5884b1a18966baf136a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.405/reactor-cli_v1.20261013.405_linux-amd64.tar.gz"
      sha256 "8c8a9a986183b655c7303ba2fd7ff94476d6ccc8264d17fcadaed6e00033f1c5"
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
