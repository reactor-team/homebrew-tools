# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261005.379"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.379/reactor-cli_v1.20261005.379_darwin-arm64.tar.gz"
      sha256 "4605d01e80c4ceca042f94c0b77a7f1ed709c23a0b5ae18053b7e1f17aa61410"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.379/reactor-cli_v1.20261005.379_darwin-amd64.tar.gz"
      sha256 "363a748d6fd60616f2f107c59bedd3a10a36e832f35ddcbd50886f8dfb097349"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.379/reactor-cli_v1.20261005.379_linux-arm64.tar.gz"
      sha256 "fe03e6acf7d1776dd59290e429917bee4a586e8d570048765589449b5c66d58c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.379/reactor-cli_v1.20261005.379_linux-amd64.tar.gz"
      sha256 "ca2ad079759c5b129c756538b6b55635211f85b0ddf8493aa23768f37fda24f1"
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
