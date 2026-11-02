# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.291"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.291/reactor-cli_v1.20261102.291_darwin-arm64.tar.gz"
      sha256 "69b9ac2e438612851728d9210409257fe8ccec0847ca16b32af6118b4c32da5d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.291/reactor-cli_v1.20261102.291_darwin-amd64.tar.gz"
      sha256 "a0919fd0bef2997f44bdcb6989e12bea1a965f7ed9123140f2a3d75708774819"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.291/reactor-cli_v1.20261102.291_linux-arm64.tar.gz"
      sha256 "a0c44581bce5a72268f0ce39552ffd08caa8a3c6652c11e8897a1f8161c8fec2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.291/reactor-cli_v1.20261102.291_linux-amd64.tar.gz"
      sha256 "db535f7f1b8ef8cbcfd3edcdf0f724c41d882be04a46f3d5842884b164153da4"
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
