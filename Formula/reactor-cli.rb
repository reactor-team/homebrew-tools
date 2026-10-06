# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261006.250"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.250/reactor-cli_v1.20261006.250_darwin-arm64.tar.gz"
      sha256 "a7da3bfc5dfe28a8a9236a49232aab800b3708355bbf02825414d500ed59b7ad"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.250/reactor-cli_v1.20261006.250_darwin-amd64.tar.gz"
      sha256 "b94d0b08329d73155b2b1a1776891a991a9a426b3de30069c533790e203bbc03"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.250/reactor-cli_v1.20261006.250_linux-arm64.tar.gz"
      sha256 "a2810e89900ffd505457ec162e746ecb3cc8f0963041b7249aa3f6808a80e87a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.250/reactor-cli_v1.20261006.250_linux-amd64.tar.gz"
      sha256 "2764210819c0348449a43712ae80d80e4500407824cd1083d95b0bcbe64441b8"
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
