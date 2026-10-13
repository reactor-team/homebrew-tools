# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.330"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.330/reactor-cli_v1.20261013.330_darwin-arm64.tar.gz"
      sha256 "f1353290b1e62e612cc628cb5209ae61a63b08eab5582940517377e04a9e21ed"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.330/reactor-cli_v1.20261013.330_darwin-amd64.tar.gz"
      sha256 "40bc2bcad26635aa32fe76c0f8771026b0a0ef497404cb2354dfbe015efefaea"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.330/reactor-cli_v1.20261013.330_linux-arm64.tar.gz"
      sha256 "1f4e47361f72c76838c5a620280a8d1847ae35baff0576a9c6774e7450b3c34f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.330/reactor-cli_v1.20261013.330_linux-amd64.tar.gz"
      sha256 "383bb8f193dc38217e17eba1f7c98af0d6f54853eb78fcd935f594e5f23a5418"
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
