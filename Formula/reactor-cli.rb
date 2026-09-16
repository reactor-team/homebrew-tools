# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260916.26904"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26904/reactor-cli_v1.20260916.26904_darwin-arm64.tar.gz"
      sha256 "5208bff36d1e9bb46a64e79a8e79b91ad1a2b7c394da7c9342a924df775c5948"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26904/reactor-cli_v1.20260916.26904_darwin-amd64.tar.gz"
      sha256 "6f380cf5d129d6fbfed4e77bbc35a5bc13ce0b5aef183cb4130e189d3ff284fd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26904/reactor-cli_v1.20260916.26904_linux-arm64.tar.gz"
      sha256 "aad462c64cab7ff76b6a3fc9bfd1ae8155b174d898ddfcd7697f7331067bd0c8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26904/reactor-cli_v1.20260916.26904_linux-amd64.tar.gz"
      sha256 "184c18196edf11f500fe201d916c631239315799c1b3a5f2e972868e1bed6737"
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
