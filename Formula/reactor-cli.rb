# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.91"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.91/reactor-cli_v1.20261105.91_darwin-arm64.tar.gz"
      sha256 "4cb13925f93a7b465296178aba1c6f529c7da11d7d0449df1e0caa1fffc40735"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.91/reactor-cli_v1.20261105.91_darwin-amd64.tar.gz"
      sha256 "228223b70cc5092cd0f0e5ce085918665d962b7e932840a1665d2f91612ec9e2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.91/reactor-cli_v1.20261105.91_linux-arm64.tar.gz"
      sha256 "673c6cb2cf325ec74e05dc36f041c89bc9bb40877b8f4e7a8afae9564bc0bcb8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.91/reactor-cli_v1.20261105.91_linux-amd64.tar.gz"
      sha256 "0fd16ac30cd3d3dc77eed75ad56ffaad761e0fe736ce935f8ad74f634b8d9d6f"
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
