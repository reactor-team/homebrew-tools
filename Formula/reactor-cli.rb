# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261103.176"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.176/reactor-cli_v1.20261103.176_darwin-arm64.tar.gz"
      sha256 "b26e5293b2543280953102fc826af602afd235055473abd64baabc1efb3a5245"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.176/reactor-cli_v1.20261103.176_darwin-amd64.tar.gz"
      sha256 "6da97b8b3196502314c7806f8221589c79b216fd0f5c3a97e6b2b2d516e85f0c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.176/reactor-cli_v1.20261103.176_linux-arm64.tar.gz"
      sha256 "ec7a02e2a22cd562cd261fc4f9955ce6b6772314dc698602956ae5a41e4fe879"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.176/reactor-cli_v1.20261103.176_linux-amd64.tar.gz"
      sha256 "e42ec4f72475121e07c112c23f04cb169ed3a680965eb6e4b5081e6bde955a20"
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
