# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260927.28666"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260927.28666/reactor-cli_v1.20260927.28666_darwin-arm64.tar.gz"
      sha256 "889406f8afbfaf943cc04110954243264426ae64c4621bc25e87c6c269a1b1a0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260927.28666/reactor-cli_v1.20260927.28666_darwin-amd64.tar.gz"
      sha256 "67a54e7837e3a890e3afe51ec32bae58891e359b50c04a53c7f43f42cdb14ba7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260927.28666/reactor-cli_v1.20260927.28666_linux-arm64.tar.gz"
      sha256 "716b41c888d159e010d10852043e158d8ad602ceb30492e98579a2353eafb9dd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260927.28666/reactor-cli_v1.20260927.28666_linux-amd64.tar.gz"
      sha256 "39a0ba5c7cb36da5565efade8abbc621c1c8e381c393c75b61248b8fb9026ea7"
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
