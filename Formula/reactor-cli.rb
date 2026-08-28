# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260828.23657"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260828.23657/reactor-cli_v1.20260828.23657_darwin-arm64.tar.gz"
      sha256 "051e1052ef7355604b50d9c20d8d1746163df121c9c8a56c3667709b00d024f7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260828.23657/reactor-cli_v1.20260828.23657_darwin-amd64.tar.gz"
      sha256 "efbb37bbdc176fa1f0a4655c744d81d065407f7d9665a4bb444d61ce50a49441"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260828.23657/reactor-cli_v1.20260828.23657_linux-arm64.tar.gz"
      sha256 "0b7d37c1a0fca72a813166ee4ac126522064f01885ff547067799bb868784854"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260828.23657/reactor-cli_v1.20260828.23657_linux-amd64.tar.gz"
      sha256 "831d298ad6b202ef8251c46c4cf89bfeee3a6f9ac0d7c2e1a7e1780f56e6a580"
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
