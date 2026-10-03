# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261003.10"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261003.10/reactor-cli_v1.20261003.10_darwin-arm64.tar.gz"
      sha256 "b00c67e1fa02bcad59312ccc6acb264f5fa18e8e31a16a96fd52b46e0bacff6b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261003.10/reactor-cli_v1.20261003.10_darwin-amd64.tar.gz"
      sha256 "b315c8e2c26aae05bc4af9f0dacd562c959aee2ed80c31e872f7bef8a28e4f6c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261003.10/reactor-cli_v1.20261003.10_linux-arm64.tar.gz"
      sha256 "14784ce1eba25093e34abb47492542a19792c5eaed9c9521fbff4f8573f141f4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261003.10/reactor-cli_v1.20261003.10_linux-amd64.tar.gz"
      sha256 "aa5b2fe2834b04f9e6decacbc689a7ec04be32e6220b7d122b60e92cf90c0717"
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
