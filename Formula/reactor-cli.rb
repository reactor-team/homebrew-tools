# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260810.21412"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21412/reactor-cli_v1.20260810.21412_darwin-arm64.tar.gz"
      sha256 "bf8e3f2ec6925888875469a02aca12c5f94ebab49fcae84aadcc3e9c39a300ee"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21412/reactor-cli_v1.20260810.21412_darwin-amd64.tar.gz"
      sha256 "9e341075a1bcdc1385b8c5164fd068eda5dde7417bfcd9154e3c3a8c030c4482"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21412/reactor-cli_v1.20260810.21412_linux-arm64.tar.gz"
      sha256 "d131458349ae86233b95b6a74e805fe9ed60a9d1038229c838cfd310ff3c5bac"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21412/reactor-cli_v1.20260810.21412_linux-amd64.tar.gz"
      sha256 "c8048d0290bd6edbe2f3b701ad9be25b2d9335bf5bd8ffbaedc8455d22f22e9a"
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
