# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.58"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.58/reactor-cli_v1.20261002.58_darwin-arm64.tar.gz"
      sha256 "9af36147a2348a78558151c47da80fe5eac31599853960c28ee61a17ea65266b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.58/reactor-cli_v1.20261002.58_darwin-amd64.tar.gz"
      sha256 "6a25ea13b41b9c59cc24cd3a85840301a566444cf7068a39dceeeaae2b26dbbd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.58/reactor-cli_v1.20261002.58_linux-arm64.tar.gz"
      sha256 "0ef44e5474bb45198c8ca67eac4cedc265fc383fe69476c8957c004b91b72859"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.58/reactor-cli_v1.20261002.58_linux-amd64.tar.gz"
      sha256 "ced284a8d08ee870b00374282e01c59608ddcd5a9a4a75880c91d8b9226a14bf"
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
