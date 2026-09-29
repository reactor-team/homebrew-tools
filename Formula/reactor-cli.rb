# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.146"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.146/reactor-cli_v1.20260929.146_darwin-arm64.tar.gz"
      sha256 "5913457b367a7aa318b99b8313734acee018f2887ef8c7ddbb66564ca64b45f6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.146/reactor-cli_v1.20260929.146_darwin-amd64.tar.gz"
      sha256 "6773a32a2958b6efac04309db50d0870832f4340986787f751c957067986a069"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.146/reactor-cli_v1.20260929.146_linux-arm64.tar.gz"
      sha256 "46df53c2a7ef504f7db9e36114c6d2efe711c4f669a7f14f08cc88123c1a7afe"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.146/reactor-cli_v1.20260929.146_linux-amd64.tar.gz"
      sha256 "5c948e285ce910961fec4cc3d3643e01de50596528f0c2fbc2050aec6c4c1648"
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
