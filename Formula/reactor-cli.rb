# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.160"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.160/reactor-cli_v1.20260929.160_darwin-arm64.tar.gz"
      sha256 "050ccb08eaa438467cab8f71d405632cc66d9a5f5dc8cdfe99408e9dfa4d5d62"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.160/reactor-cli_v1.20260929.160_darwin-amd64.tar.gz"
      sha256 "8f25d0b91939be3ce40c7408b20f452e2c0dee0ef3b8e6e36df8bcc31553bf8e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.160/reactor-cli_v1.20260929.160_linux-arm64.tar.gz"
      sha256 "c68739c1930676bed4bd5a1a7bf2a7f2091dc15acee9a07792be78588e129797"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.160/reactor-cli_v1.20260929.160_linux-amd64.tar.gz"
      sha256 "47c6a3fa1190f16685a4ac1e664bf83c64d1768b2ce81b5de439e24bed981bf6"
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
