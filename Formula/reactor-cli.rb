# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.407"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.407/reactor-cli_v1.20261112.407_darwin-arm64.tar.gz"
      sha256 "11c7b4a0483c50b573ec7e022d1efa944e2aab3b375c3d13bfb388221fdc7068"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.407/reactor-cli_v1.20261112.407_darwin-amd64.tar.gz"
      sha256 "4f27449929679db81e7fdabbde231caa8cbf797a3f60b5e4a42e6bcfc77703ec"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.407/reactor-cli_v1.20261112.407_linux-arm64.tar.gz"
      sha256 "0c88a366c756d15905441f12a0b015e082eb64b99ec2a3c284488bd1f51d4ffc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.407/reactor-cli_v1.20261112.407_linux-amd64.tar.gz"
      sha256 "8abfd1ac1d9130a09101612ba3e2a76056c77db3974f5170c8a044d2fdcb5bdd"
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
