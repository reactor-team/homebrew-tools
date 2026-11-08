# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261108.159"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.159/reactor-cli_v1.20261108.159_darwin-arm64.tar.gz"
      sha256 "a9239a64256dfafd303c46aebea47f2376e9ae8a16fdb1feba764486864b3c8e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.159/reactor-cli_v1.20261108.159_darwin-amd64.tar.gz"
      sha256 "19835c418e104baa0427668313e6cc17273ab276307f68faed7d00ae6a14a6a1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.159/reactor-cli_v1.20261108.159_linux-arm64.tar.gz"
      sha256 "02931d717015d9e773d5c6f2fa6b12d6a29b293fbd0aa9db0973c7716f5255fe"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.159/reactor-cli_v1.20261108.159_linux-amd64.tar.gz"
      sha256 "4b04ebb4a34143feab451a785e69e2b68c79ca2372bd560441134f7ef4bdb394"
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
