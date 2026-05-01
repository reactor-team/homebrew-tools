# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260501.5"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260501.5/reactor-cli_v1.20260501.5_darwin-arm64.tar.gz"
      sha256 "cda55a9ade95d290ff72c7392eea0e9a114b87d3b2943825b47ea4b0739ebe23"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260501.5/reactor-cli_v1.20260501.5_darwin-amd64.tar.gz"
      sha256 "8c5ac5ebb51c15081b4cf7b669c0bb123597425b8cad0ba0652ba903ca41b1fd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260501.5/reactor-cli_v1.20260501.5_linux-arm64.tar.gz"
      sha256 "db2b0de594fde8c49f9dbcbd63ea9e33ada7b64d8c0d13a2db6cbb1504d8e296"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260501.5/reactor-cli_v1.20260501.5_linux-amd64.tar.gz"
      sha256 "8dbb22f9226e829f37736d5674a2e0302f0cbdb802cae2d2d60d3b1298ef8ccb"
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
