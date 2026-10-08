# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.223"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.223/reactor-cli_v1.20261008.223_darwin-arm64.tar.gz"
      sha256 "3286e63d82f4bf9fc23f49181667f20d48823013a2ab1b2ee04dda9f99c03924"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.223/reactor-cli_v1.20261008.223_darwin-amd64.tar.gz"
      sha256 "8ce632fbc4f5a13fa2ba376971a1289ea41700c7763baaa73500df272cf48bce"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.223/reactor-cli_v1.20261008.223_linux-arm64.tar.gz"
      sha256 "a96528b5e6a977f1569f48cee5f74e6016cc71324a8e58c7e8bffefbc13bfb96"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.223/reactor-cli_v1.20261008.223_linux-amd64.tar.gz"
      sha256 "bd2c8a636b4f11a93e27bbe63589d34f00d6eed366b5d72203d2aec0b7e0d278"
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
