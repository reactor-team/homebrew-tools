# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.42"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.42/reactor-cli_v1.20261119.42_darwin-arm64.tar.gz"
      sha256 "a1d8acce8ff5118efcb39c10805eb567ee0bc2301e1388c021283c80755113d5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.42/reactor-cli_v1.20261119.42_darwin-amd64.tar.gz"
      sha256 "1e781fab38c6c9b1094fe2511077de1e6838a9c06f565fea4b60bd746dae8a1f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.42/reactor-cli_v1.20261119.42_linux-arm64.tar.gz"
      sha256 "74239de2a4680295866b9efa8d2be0f9abf05a13904e1789cacbb7fa4f5d72b7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.42/reactor-cli_v1.20261119.42_linux-amd64.tar.gz"
      sha256 "b2a724e4a3be00fbb317c93895b07c81c760922b883e232818d947337c99e4e6"
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
