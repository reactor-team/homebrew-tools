# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261103.180"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.180/reactor-cli_v1.20261103.180_darwin-arm64.tar.gz"
      sha256 "bee4218b174dd5905014b4c4d150e57381b1871ba68edf8ca9625abe5ee24007"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.180/reactor-cli_v1.20261103.180_darwin-amd64.tar.gz"
      sha256 "e70d3ada8cf1bdbff3ff49173ab856fd1b46a4281234054391cb23d0bf0ef031"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.180/reactor-cli_v1.20261103.180_linux-arm64.tar.gz"
      sha256 "c411663637e506bdfd597c4621fff595206f8e29a4d94004c84ca1e100bbac42"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.180/reactor-cli_v1.20261103.180_linux-amd64.tar.gz"
      sha256 "3ebf8ae08b21323214a4161137df1c910c02660a0cf6a0d2680088290628bef5"
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
