# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.268"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.268/reactor-cli_v1.20261102.268_darwin-arm64.tar.gz"
      sha256 "41e2c88626ce41b4fb3d7e21a79e611b4710b78156cc8f050e637d52a40c0d61"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.268/reactor-cli_v1.20261102.268_darwin-amd64.tar.gz"
      sha256 "a6c29fb99137e84c3608613f4e51b3d41e7cb1bf6d85c5c68249fe80a115e5c8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.268/reactor-cli_v1.20261102.268_linux-arm64.tar.gz"
      sha256 "c95c0a93ddaefbad3679231dfe66244a97d487e6497c3e7a9d974cb487f7bb99"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.268/reactor-cli_v1.20261102.268_linux-amd64.tar.gz"
      sha256 "177089560b5e6052c81942d71bf086513a43d1541c6cbeaf4d0b054705995308"
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
