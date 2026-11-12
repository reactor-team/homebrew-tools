# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.443"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.443/reactor-cli_v1.20261112.443_darwin-arm64.tar.gz"
      sha256 "f2ffab390b68129523bc16e32a0c0bab09ce9c4d92f6d7a2594ff28ee9a30cf4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.443/reactor-cli_v1.20261112.443_darwin-amd64.tar.gz"
      sha256 "075b2a145b0c7a0e615222bacd6793c6e6c89eaad8be0e6f1a6983731af7e69c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.443/reactor-cli_v1.20261112.443_linux-arm64.tar.gz"
      sha256 "b55d1699a3a38e3439a3de3883587c4fc82508a8616dfaf7ccdd5ffe7c35f5cf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.443/reactor-cli_v1.20261112.443_linux-amd64.tar.gz"
      sha256 "4b2f34e99ab2a887fcc7b518caa095f0e78f055d354da2c434b8f79f970ef9d9"
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
