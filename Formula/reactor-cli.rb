# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261021.49"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.49/reactor-cli_v1.20261021.49_darwin-arm64.tar.gz"
      sha256 "b458a9448e07a22a0413ae03560f809856acd07efc37466021a7f08c6d535901"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.49/reactor-cli_v1.20261021.49_darwin-amd64.tar.gz"
      sha256 "9d58dd041c7a032f6347e5a61f2cedd97c7ef87b143d8e791b968b53adff2afe"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.49/reactor-cli_v1.20261021.49_linux-arm64.tar.gz"
      sha256 "a696e3b161770b5611abb036468f49eba190c9d22bffcf709bd012bf8149b893"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.49/reactor-cli_v1.20261021.49_linux-amd64.tar.gz"
      sha256 "2571abbaea00e23946171e1923fc48cf204e5519df2cab14a1562adc796bda97"
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
