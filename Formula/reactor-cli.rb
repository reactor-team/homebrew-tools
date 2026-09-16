# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260916.27273"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27273/reactor-cli_v1.20260916.27273_darwin-arm64.tar.gz"
      sha256 "7d57e23d95f5325a82faf561c0790c8db84921f0a484e78f7db3b4a8fe528e0a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27273/reactor-cli_v1.20260916.27273_darwin-amd64.tar.gz"
      sha256 "7e4c891350784356b3294941bba7e4c02b5b46e3bc1415b7cdcbea644fb1bf31"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27273/reactor-cli_v1.20260916.27273_linux-arm64.tar.gz"
      sha256 "0c8b3c45008dab27d584b71a45b87a8a4aa1e92f211156c9af0bbd82d587c9ac"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27273/reactor-cli_v1.20260916.27273_linux-amd64.tar.gz"
      sha256 "1bc48684c661ed09af5693f6ad81e1d32874a856c97ac22fbbd183e8872cc9ea"
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
