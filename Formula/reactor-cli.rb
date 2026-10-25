# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261025.5"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261025.5/reactor-cli_v1.20261025.5_darwin-arm64.tar.gz"
      sha256 "309fc97fea21a8f7ac6a0153fe980e55ba27529017338f4a8b96360921ce42bf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261025.5/reactor-cli_v1.20261025.5_darwin-amd64.tar.gz"
      sha256 "b95c853b64586bbd90d1b10b6df47278ee997ab0250052aa1be5376dc48f5e04"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261025.5/reactor-cli_v1.20261025.5_linux-arm64.tar.gz"
      sha256 "50b23f97fe59cc5ccfd7686b915cb4b6c5bb1a283c6cac41e6bd3f1c42f9df94"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261025.5/reactor-cli_v1.20261025.5_linux-amd64.tar.gz"
      sha256 "98bf85cd6169579fc0a41e89316ddba7808f8ecdaeb1b0eae6d473a5e85fa0b2"
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
