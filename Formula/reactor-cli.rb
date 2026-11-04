# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.156"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.156/reactor-cli_v1.20261104.156_darwin-arm64.tar.gz"
      sha256 "f742446806ca32b21150d71ab6ac74b03060f989529e97a6318dd21bbf08e341"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.156/reactor-cli_v1.20261104.156_darwin-amd64.tar.gz"
      sha256 "8cd4d0ad2ca40f130983c3f2e6d30ce4d97c5fcb2f5f60bce77377ecd56024ca"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.156/reactor-cli_v1.20261104.156_linux-arm64.tar.gz"
      sha256 "6c24932b82300b5da339338e31b27157e37dcd1a97574810f499a237ce00f29b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.156/reactor-cli_v1.20261104.156_linux-amd64.tar.gz"
      sha256 "0ac2cd8e5c779b8f55b2f2231928a0e87fa389a386b9d08f1e1565b37a00e862"
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
