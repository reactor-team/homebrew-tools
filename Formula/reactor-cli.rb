# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260820.22456"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22456/reactor-cli_v1.20260820.22456_darwin-arm64.tar.gz"
      sha256 "bb58617d0d1b73dd77bce67ab5a33cd793a079fc089f017f22ffbb5c2e2eacb4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22456/reactor-cli_v1.20260820.22456_darwin-amd64.tar.gz"
      sha256 "2d71eba5170aa3bccafa9f75369c12d9aa751430687b8d6ebdb30623c531527f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22456/reactor-cli_v1.20260820.22456_linux-arm64.tar.gz"
      sha256 "f50fe55467b36963871321eae05e2221861236719a3334ba98e46ad58f4c97a6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22456/reactor-cli_v1.20260820.22456_linux-amd64.tar.gz"
      sha256 "2fef3db5d1ebf415a101ccd4d542391975eb7f43369c9e0ce97f272ffad196e1"
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
