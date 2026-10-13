# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.281"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.281/reactor-cli_v1.20261013.281_darwin-arm64.tar.gz"
      sha256 "30976ce69acf2492929d6c73a50d2ba1e880d8fca5791ee9af9bbd2c614069a0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.281/reactor-cli_v1.20261013.281_darwin-amd64.tar.gz"
      sha256 "70f9574da796f992262c359815fba5db804102a08dfac22ecc55674218da0cbd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.281/reactor-cli_v1.20261013.281_linux-arm64.tar.gz"
      sha256 "98a8472721e852ea81ae3c3c0babeddee4cd6fdb825b7da16311d4bcd33272a3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.281/reactor-cli_v1.20261013.281_linux-amd64.tar.gz"
      sha256 "4717638fd8e7f662c8c91b0e7b8310cef025fc188e797a15746d7aa28cf1c6a5"
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
