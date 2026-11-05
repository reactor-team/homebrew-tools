# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.158"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.158/reactor-cli_v1.20261105.158_darwin-arm64.tar.gz"
      sha256 "c1b41e25163379c8b8b121c9c60c02a58b0e120756082f44e3958d550587d51d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.158/reactor-cli_v1.20261105.158_darwin-amd64.tar.gz"
      sha256 "22ae08f352bf8e3fcff86eccf2410aecfe3da83d97ffe388cf4048b1890e6cc4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.158/reactor-cli_v1.20261105.158_linux-arm64.tar.gz"
      sha256 "9cc8bf5986760e6f346721aa1141449ba1193802df44d7c8606c5439072fa7e2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.158/reactor-cli_v1.20261105.158_linux-amd64.tar.gz"
      sha256 "13971fc04546a6a290fc0d3fce4f9c0f5b564e6fb3d6c733cd27ef1f908cbd55"
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
