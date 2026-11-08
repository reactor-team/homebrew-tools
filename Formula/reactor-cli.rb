# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261108.267"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.267/reactor-cli_v1.20261108.267_darwin-arm64.tar.gz"
      sha256 "8517cd76a373e7a61ee0d829285bcc60daa9006f0a8ee92bffe3e8d7c10127bd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.267/reactor-cli_v1.20261108.267_darwin-amd64.tar.gz"
      sha256 "d562e8017ef2a49457a0f58bc91692bd6ffa3636248047f45a5c65313de533e3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.267/reactor-cli_v1.20261108.267_linux-arm64.tar.gz"
      sha256 "9395e0e9ce90f4d46917d54f7fe408886c717f75e87f99ce5f585a4791fa638c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.267/reactor-cli_v1.20261108.267_linux-amd64.tar.gz"
      sha256 "f3427b418ef0d3ea6f6cfff339c96d60fcb9e99f666e236f56b81d26216b5ff0"
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
