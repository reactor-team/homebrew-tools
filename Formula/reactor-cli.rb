# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.186"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.186/reactor-cli_v1.20260929.186_darwin-arm64.tar.gz"
      sha256 "963bf93420c4f69d0af393ada90d0fdd968e59f3da9c1e0fd72bf191473f6ce5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.186/reactor-cli_v1.20260929.186_darwin-amd64.tar.gz"
      sha256 "605f14bdfc5966383c41994ff7a3dcbbe8406117142899d3fc543b335fa0e5c8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.186/reactor-cli_v1.20260929.186_linux-arm64.tar.gz"
      sha256 "0fa28e54d1c828ec45a8fb6359f9f96f5dfe7eb82134f67852450e85173f939e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.186/reactor-cli_v1.20260929.186_linux-amd64.tar.gz"
      sha256 "a298fe9c3e1cb165e9dc408087553d9ed5ae2e91d5a44113e596da5c8e500fa6"
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
