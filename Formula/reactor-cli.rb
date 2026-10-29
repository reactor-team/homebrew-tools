# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261029.187"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.187/reactor-cli_v1.20261029.187_darwin-arm64.tar.gz"
      sha256 "6d9c0e4749fc68ef5bdcbb57ada1107421f046b425b40bd3f6983b7d5f43adb5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.187/reactor-cli_v1.20261029.187_darwin-amd64.tar.gz"
      sha256 "10c9160b06671cf49de9e7d7687908a6879c959700c46129488b381dc5daa99c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.187/reactor-cli_v1.20261029.187_linux-arm64.tar.gz"
      sha256 "cb32e222886c770c278c413f65a9e7f130c2233325054cd5cae4440e0425487b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.187/reactor-cli_v1.20261029.187_linux-amd64.tar.gz"
      sha256 "fd0574cbd30af92a2afe8a303c61e3729ac6e6d153a920aebf7ff79f51b85672"
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
