# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261108.156"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.156/reactor-cli_v1.20261108.156_darwin-arm64.tar.gz"
      sha256 "6801ec8ea9e0c4c6f4301588a5afa93b91cb18fa93a54bb02d3a752ab7d10da0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.156/reactor-cli_v1.20261108.156_darwin-amd64.tar.gz"
      sha256 "8c4aac9acfde18809ddb9cd3f8f41cee1cf01071a2b6c7027dcb79d8063a29ff"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.156/reactor-cli_v1.20261108.156_linux-arm64.tar.gz"
      sha256 "085563a5bb476a4f39ab46ce11dc5a8258299eb2738c9bbf5c4da19d77190564"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.156/reactor-cli_v1.20261108.156_linux-amd64.tar.gz"
      sha256 "2c9f0f59e43cf42dd57aa7125663c22d05b4e150e061479f841e102681aacdaa"
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
