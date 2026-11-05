# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.409"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.409/reactor-cli_v1.20261105.409_darwin-arm64.tar.gz"
      sha256 "efb5967a6c296bb8b77ebace76f832ce5479a09663771a6515b1eef3e68b6418"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.409/reactor-cli_v1.20261105.409_darwin-amd64.tar.gz"
      sha256 "319fbff1811c1c210b6605a8d622425dd37580ea0935dfa8fb1143aebf924464"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.409/reactor-cli_v1.20261105.409_linux-arm64.tar.gz"
      sha256 "52c1ef196ba05bdbbd992d836fff4e7bd559adb60eccd628b9cbc7ae12260323"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.409/reactor-cli_v1.20261105.409_linux-amd64.tar.gz"
      sha256 "213418a28f6d928d12a4915b89b8bf16c53ade69475897bd21a31a779366eb37"
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
