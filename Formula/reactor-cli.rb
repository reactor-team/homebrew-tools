# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "20260428-2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://reactor-releases.s3.amazonaws.com/reactor-cli/20260428-2/reactor-cli_20260428-2_darwin-arm64.tar.gz"
      sha256 "34af6c199ad5ab7030f0338df026447ad1598dc0f958da2ed291fdfd02ec0534"
    end
    on_intel do
      url "https://reactor-releases.s3.amazonaws.com/reactor-cli/20260428-2/reactor-cli_20260428-2_darwin-amd64.tar.gz"
      sha256 "5309a4910de397db17d27362635b0800275934f932052f2c428c6f33ecb03645"
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
