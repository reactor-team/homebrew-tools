# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.219"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.219/reactor-cli_v1.20261013.219_darwin-arm64.tar.gz"
      sha256 "3e82a8ee92d73b5af290810b652b74c89b0912507fbf1e69839d8606e948b1d4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.219/reactor-cli_v1.20261013.219_darwin-amd64.tar.gz"
      sha256 "bbf56cf362c3fdca639e78dd98b30c8bcc160542629d97a019ea4b941b997bb6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.219/reactor-cli_v1.20261013.219_linux-arm64.tar.gz"
      sha256 "9de3612f950d60728e19e4e21d5f10818e377c524f8247edaae0607550bd28c9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.219/reactor-cli_v1.20261013.219_linux-amd64.tar.gz"
      sha256 "40226689370c2e8890d27a13a6a986709a945aaad2f9630d6e87190456797a54"
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
