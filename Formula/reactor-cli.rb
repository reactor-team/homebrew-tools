# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261117.34"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.34/reactor-cli_v1.20261117.34_darwin-arm64.tar.gz"
      sha256 "8f520a0b1e515e97212c4d2adf29915aaefefd57a1d0f7e12a73582cba5a3985"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.34/reactor-cli_v1.20261117.34_darwin-amd64.tar.gz"
      sha256 "24330dc28b7fa9830e1bcdefe06ca83c128fd2b1080482f9cf76099c8743eafa"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.34/reactor-cli_v1.20261117.34_linux-arm64.tar.gz"
      sha256 "cc68983deb5da1231f08f675f92869c24f768bcb528dbc32b1e515acf79a6d9b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261117.34/reactor-cli_v1.20261117.34_linux-amd64.tar.gz"
      sha256 "9bc244545c7f4e8194bafc085a141e703415ef3a1048a35e70ebf31de6c2b5b8"
    end
  end

  def install
    bin.install "reactor"
    # `reactor upgrade` reads this file and prints the command instead of
    # replacing a binary that Homebrew owns.
    (lib/"reactor-cli/upgrade-command").write "brew upgrade reactor-team/tools/reactor-cli\n"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
    assert_equal "brew upgrade reactor-team/tools/reactor-cli\n",
                 (lib/"reactor-cli/upgrade-command").read
  end
end
