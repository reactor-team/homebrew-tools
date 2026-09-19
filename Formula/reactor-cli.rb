# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260919.27843"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27843/reactor-cli_v1.20260919.27843_darwin-arm64.tar.gz"
      sha256 "4a3c5751c4138e47b82b8f3f738ccf8f82d7cd395fad0111a75d31e50f367463"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27843/reactor-cli_v1.20260919.27843_darwin-amd64.tar.gz"
      sha256 "98ce1ee5ab524088a4e48012e23f03aa1f5db4f902ef07f6ebbbf4820682e059"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27843/reactor-cli_v1.20260919.27843_linux-arm64.tar.gz"
      sha256 "f1571f673f55931ca61aecd07ef48e7d33f3f06dde68f2430154397e89f796d6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27843/reactor-cli_v1.20260919.27843_linux-amd64.tar.gz"
      sha256 "8e1cb0653ece94ca9b603f19cd728e58d9fe14451db6e2bc07d92253eb5ae1c1"
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
