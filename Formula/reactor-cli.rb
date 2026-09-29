# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.129"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.129/reactor-cli_v1.20260929.129_darwin-arm64.tar.gz"
      sha256 "206a77f7449443a15cf0bd5fa068aac6edd3217eaf1190b8468f8b8683c70bee"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.129/reactor-cli_v1.20260929.129_darwin-amd64.tar.gz"
      sha256 "0568d4e67456f4c2e080caf5350ee2756c00269c4dcd0d5857de1f2aff4e6b2c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.129/reactor-cli_v1.20260929.129_linux-arm64.tar.gz"
      sha256 "2059be6fe56757e8c9f2019e63d8476be7e316622f2957ac60d5f5b1cf64af9e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.129/reactor-cli_v1.20260929.129_linux-amd64.tar.gz"
      sha256 "970ebd0e190413c5c46e87dc5841754a7892568c1447987d3e62b9ca140ca29e"
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
