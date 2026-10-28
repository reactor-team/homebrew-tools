# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261028.530"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.530/reactor-cli_v1.20261028.530_darwin-arm64.tar.gz"
      sha256 "bb849ef9350761737af4d21d0ebec522d60788f944faaabf35997cdeb3756f3b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.530/reactor-cli_v1.20261028.530_darwin-amd64.tar.gz"
      sha256 "a3c332e6e993529307566de946cc4a2b3f2064c6905c6a23c031245fa19f4fc9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.530/reactor-cli_v1.20261028.530_linux-arm64.tar.gz"
      sha256 "95a9441befc18dce269671480c22c7638f7b48193e50fb289f63474d6a3ea39d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.530/reactor-cli_v1.20261028.530_linux-amd64.tar.gz"
      sha256 "543c4e2a3bc4d39275066e0c9f623827e7a8771bc9c761d2c0405446c246378c"
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
