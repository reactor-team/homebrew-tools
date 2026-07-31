# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260731.20393"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20393/reactor-cli_v1.20260731.20393_darwin-arm64.tar.gz"
      sha256 "11c4e45dd6b11ddfbec858b85dee155273576436d6c3ab91799317f719381f7b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20393/reactor-cli_v1.20260731.20393_darwin-amd64.tar.gz"
      sha256 "d639c9289675b608b903472b1475a52930d0cd64888ca27605adbef705019701"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20393/reactor-cli_v1.20260731.20393_linux-arm64.tar.gz"
      sha256 "c259526e232ac333854be4df45e1926fd4f066764fba52409650d1ef1b4deb80"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20393/reactor-cli_v1.20260731.20393_linux-amd64.tar.gz"
      sha256 "b995d8d012b52924a98f2202a40c4638dde6e112a8acbb96bf5e25d0cce0857c"
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
