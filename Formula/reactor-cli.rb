# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261016.74"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.74/reactor-cli_v1.20261016.74_darwin-arm64.tar.gz"
      sha256 "6e5bb8a76e442254248b8e176827298f111d6be36a596b1536e3632224580b7d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.74/reactor-cli_v1.20261016.74_darwin-amd64.tar.gz"
      sha256 "6f7ca66dcdacd03adb1291f60d0d78025e43fd84cbc9113bad4bf376bdc506be"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.74/reactor-cli_v1.20261016.74_linux-arm64.tar.gz"
      sha256 "cd9796649b57bd907f546c3337930e4e9987eeda9c915a07fe6efb53fc466c9a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261016.74/reactor-cli_v1.20261016.74_linux-amd64.tar.gz"
      sha256 "13a1ba01f9c2ecbb6bb1f34d297767773a8fe12081dbd0d366bb44a25a7961e6"
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
