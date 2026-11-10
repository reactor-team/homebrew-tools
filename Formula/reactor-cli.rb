# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.11"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.11/reactor-cli_v1.20261110.11_darwin-arm64.tar.gz"
      sha256 "017c49623023e2b08ea37d4321b56e261be31c72a3f8bacf494560a2771c6489"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.11/reactor-cli_v1.20261110.11_darwin-amd64.tar.gz"
      sha256 "ec668028c178acec8038bc88d575aeef691bf8df9318cb2f4aef1a417f68b818"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.11/reactor-cli_v1.20261110.11_linux-arm64.tar.gz"
      sha256 "320054c8f6379022d544cb6e830d0e9b8546f22a0e03f8885467fa757a87b0e7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.11/reactor-cli_v1.20261110.11_linux-amd64.tar.gz"
      sha256 "037da97730b65fe008f68058552cc7eae11e557e0885a62ce58596a00e3074c8"
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
