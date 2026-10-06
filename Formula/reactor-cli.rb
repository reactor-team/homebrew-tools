# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261006.179"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.179/reactor-cli_v1.20261006.179_darwin-arm64.tar.gz"
      sha256 "92061dbd399abeffe0bdc587e833dc3972e4db8ab4fe824c3460420bdb7c1a35"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.179/reactor-cli_v1.20261006.179_darwin-amd64.tar.gz"
      sha256 "bacae2c3b6e611539adf8ef7e47c9b1928783c53af7af1c875082291d0e26b07"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.179/reactor-cli_v1.20261006.179_linux-arm64.tar.gz"
      sha256 "3b0f72a425d8631892454b35a3e2f0e5db1d991d1f261ecfd4c5da1d4e0169ff"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.179/reactor-cli_v1.20261006.179_linux-amd64.tar.gz"
      sha256 "3316bf0a2f57e68cd4e94f8e783757c1febcd9ba08014a8b7f60a5510850e374"
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
