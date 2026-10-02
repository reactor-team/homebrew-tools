# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.178"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.178/reactor-cli_v1.20261002.178_darwin-arm64.tar.gz"
      sha256 "7ba0ce23d14e857fad9f2585174fb9e4bd52fc5c04f0e6b33696093bd8dd53f0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.178/reactor-cli_v1.20261002.178_darwin-amd64.tar.gz"
      sha256 "b1f9c48cbf0dc4c375c2dc0486b2fa4c6be6630e194f07f9acf2f29ba2fa34c2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.178/reactor-cli_v1.20261002.178_linux-arm64.tar.gz"
      sha256 "9a381f8358fec467f8e7e4a6840310f160d93011525be89d169c7dc2045c613b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.178/reactor-cli_v1.20261002.178_linux-amd64.tar.gz"
      sha256 "aa4e5edf2e25002a278818b9ac32ed94d3c856714eac0c449dbce1b5e6bdbc0a"
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
