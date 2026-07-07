# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260707.17609"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17609/reactor-cli_v1.20260707.17609_darwin-arm64.tar.gz"
      sha256 "6df265557e2cdd0935f7a130b5f33c3c94a35d32b3d1317310aca4915d136616"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17609/reactor-cli_v1.20260707.17609_darwin-amd64.tar.gz"
      sha256 "0b75ff6007a628f9422c50c233c98487a61b90ede20f26509a281ab8517a6702"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17609/reactor-cli_v1.20260707.17609_linux-arm64.tar.gz"
      sha256 "b52875b0ea34195db207bc9db80b2bdf823615409e0045bbda46fb5e4e0b58f4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17609/reactor-cli_v1.20260707.17609_linux-amd64.tar.gz"
      sha256 "69bdfb0155386566497e03a086a1e2f3c193932baac39e86db253ae9fd9851db"
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
