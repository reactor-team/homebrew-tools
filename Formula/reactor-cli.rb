# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260917.27495"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27495/reactor-cli_v1.20260917.27495_darwin-arm64.tar.gz"
      sha256 "21be5bf6edd7536866053320b820b8fd3eb1318aa9684a49d7b56c0e986738a2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27495/reactor-cli_v1.20260917.27495_darwin-amd64.tar.gz"
      sha256 "dce4d265f844bc702df862cf0611161935e18dc3863a61f3eb509285b9fc9f1e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27495/reactor-cli_v1.20260917.27495_linux-arm64.tar.gz"
      sha256 "f5071af95dca6f5a03d47824e19d30ec95deae31344bf777b25a38f31aab99b4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260917.27495/reactor-cli_v1.20260917.27495_linux-amd64.tar.gz"
      sha256 "374cb17bf6a0f51641e2fa6e36b19d29fe07734033b58ac8e512bfd18dafde0b"
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
