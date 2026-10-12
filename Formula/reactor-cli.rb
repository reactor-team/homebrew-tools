# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261012.54"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261012.54/reactor-cli_v1.20261012.54_darwin-arm64.tar.gz"
      sha256 "938914b0343c24188d1746f9bfc684153eb9becec35db9c00659517006eadb8c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261012.54/reactor-cli_v1.20261012.54_darwin-amd64.tar.gz"
      sha256 "37e60a4ed5baba49f0e0ed9cecc5c728d227ed337388df0cda0ead5d6484ca32"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261012.54/reactor-cli_v1.20261012.54_linux-arm64.tar.gz"
      sha256 "5cd095d50e3e2fa6b98da048322d8fc6df72e0896b9fcf8bbbe094b226d4d757"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261012.54/reactor-cli_v1.20261012.54_linux-amd64.tar.gz"
      sha256 "bcbbf2e269828031660bc5e07f40270375bea9b253cd0f14ad2061b15fc1c44d"
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
