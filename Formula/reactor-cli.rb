# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261029.171"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.171/reactor-cli_v1.20261029.171_darwin-arm64.tar.gz"
      sha256 "570877ac2cf7477f95575655c7074570fe20961933fdc71ed12fbfa9a015cd65"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.171/reactor-cli_v1.20261029.171_darwin-amd64.tar.gz"
      sha256 "8a290b09be89c68e6db910afc1fbf1dcf3e13918ef4e302c299b22509adf309c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.171/reactor-cli_v1.20261029.171_linux-arm64.tar.gz"
      sha256 "23ff61488cb9f0220604e59157f7c111d158d4aa3d10eba0314b27e4c7cc0412"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.171/reactor-cli_v1.20261029.171_linux-amd64.tar.gz"
      sha256 "d29839be141fabf2df4754c5ae2a48c8c82c9672df75f56d0289b3a1cdd0f9c7"
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
