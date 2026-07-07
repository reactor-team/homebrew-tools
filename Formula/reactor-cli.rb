# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260707.17746"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17746/reactor-cli_v1.20260707.17746_darwin-arm64.tar.gz"
      sha256 "fcfd8f3cc88d961bbd9c29a8f7b893326e6cdc3f20fe6aa091792dfd6967c4e1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17746/reactor-cli_v1.20260707.17746_darwin-amd64.tar.gz"
      sha256 "4c20117923700fcc3a38399e45bc325e5537216e337a4e4ae3a5b26c51a66eb0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17746/reactor-cli_v1.20260707.17746_linux-arm64.tar.gz"
      sha256 "666c24bd993f7c92cb3e5638742e11beeb54b78589025d69bbe6ebe5cb10917b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260707.17746/reactor-cli_v1.20260707.17746_linux-amd64.tar.gz"
      sha256 "a921eaa8c732f3c016a92dc80946b8483e89560c440353c5f47b9a166755fbed"
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
