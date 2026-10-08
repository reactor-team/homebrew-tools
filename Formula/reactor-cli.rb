# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.117"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.117/reactor-cli_v1.20261008.117_darwin-arm64.tar.gz"
      sha256 "27b361128408c0c736f83fca33342638fd7498ec00f03cc20efc8e46db4d21a3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.117/reactor-cli_v1.20261008.117_darwin-amd64.tar.gz"
      sha256 "f5e23de03bf74d616df7f7161e359a81933ba02115fa50049fd00d31e499acf3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.117/reactor-cli_v1.20261008.117_linux-arm64.tar.gz"
      sha256 "bcf3f51a9ec09ab833b392d787dbd211ed589d0be83ab95d7bda0b5c47d940b9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.117/reactor-cli_v1.20261008.117_linux-amd64.tar.gz"
      sha256 "8406ed725c520fd6955d02b856f9c68a361a9fd2e149d9d0051c34cca355c703"
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
