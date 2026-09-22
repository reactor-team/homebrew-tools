# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260922.28155"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28155/reactor-cli_v1.20260922.28155_darwin-arm64.tar.gz"
      sha256 "c27296f2f9fd4fb65bd3c14c0775f1a89b89f6925f335180475b74db57b60d9d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28155/reactor-cli_v1.20260922.28155_darwin-amd64.tar.gz"
      sha256 "5758518265d656a7686fa85d770080dcdcb8df952518f07ebe330462d9db736b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28155/reactor-cli_v1.20260922.28155_linux-arm64.tar.gz"
      sha256 "117cd1056b3219f21b80852d74236122dbe39898dd0df2b635475f872eb06925"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28155/reactor-cli_v1.20260922.28155_linux-amd64.tar.gz"
      sha256 "ec141b8d3c6f2bc947f5ca6588c28ac35287b1cc176ed0c93f6fc1120f819f90"
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
