# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260919.27819"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27819/reactor-cli_v1.20260919.27819_darwin-arm64.tar.gz"
      sha256 "4375ea7a7bad6f9b6f8e3e93b5bdefdbeb8515ad5149aa99e5d18a3498ca997a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27819/reactor-cli_v1.20260919.27819_darwin-amd64.tar.gz"
      sha256 "e53ffb36a835ff039da22968c0bf4bfd3b61114e26711c8a385cc2119e189ad0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27819/reactor-cli_v1.20260919.27819_linux-arm64.tar.gz"
      sha256 "f149cc580c5b27f5efcb3d49a84f2bfc9ed357bdc871f7646f76de4e3038a608"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27819/reactor-cli_v1.20260919.27819_linux-amd64.tar.gz"
      sha256 "2681ba62afaa81bc45dd99124b711d349fabe75ebe9d85e42e6e5f100430f428"
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
