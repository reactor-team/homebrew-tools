# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260928.28754"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28754/reactor-cli_v1.20260928.28754_darwin-arm64.tar.gz"
      sha256 "00076f39b260a61dc2cfdb763923495a6ea76e7aed2555327dadfc1567fd9453"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28754/reactor-cli_v1.20260928.28754_darwin-amd64.tar.gz"
      sha256 "d0fe3185147bcdbd44ebc7b3d495fb97fb8b0d6f08894d6303f13808481a5ced"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28754/reactor-cli_v1.20260928.28754_linux-arm64.tar.gz"
      sha256 "fa5c43a4607159422be98acbf370b960133181f71970f50643388d68f91adeb4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28754/reactor-cli_v1.20260928.28754_linux-amd64.tar.gz"
      sha256 "b5dbcf884cd2019197740de6be3952207f5a85b844d97017f8ca7e3ac7461812"
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
