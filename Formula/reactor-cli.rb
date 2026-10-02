# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.110"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.110/reactor-cli_v1.20261002.110_darwin-arm64.tar.gz"
      sha256 "a9b985bef9f562d032de72e9dd67d11d0d10b6bcb198c6ec843f9e35aace7c49"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.110/reactor-cli_v1.20261002.110_darwin-amd64.tar.gz"
      sha256 "dc6897030679f6b9184ea24e885370b37b8e9f5145c48052740076775d15d638"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.110/reactor-cli_v1.20261002.110_linux-arm64.tar.gz"
      sha256 "c37779d3c9d4af8b91e00583ada61bd052f42c36832c25308ed3ca14e4dba51b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.110/reactor-cli_v1.20261002.110_linux-amd64.tar.gz"
      sha256 "1c4c94aadbeef198efb357931b8de3cb1242f15df387a640113590263b668bcc"
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
