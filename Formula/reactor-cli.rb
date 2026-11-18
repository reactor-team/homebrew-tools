# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.30"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.30/reactor-cli_v1.20261118.30_darwin-arm64.tar.gz"
      sha256 "0d6848917ab7776bd6d6be84a5c631f731697b618484f0d17676045eabb0de21"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.30/reactor-cli_v1.20261118.30_darwin-amd64.tar.gz"
      sha256 "f22887b5cca02b29138afb1b6c89b869c1b6b08a78b9152576ce84e40044e152"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.30/reactor-cli_v1.20261118.30_linux-arm64.tar.gz"
      sha256 "3d9ab24d15d72335d2806f5d1283492546c1ca7c4231de121542cd3781e19a12"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.30/reactor-cli_v1.20261118.30_linux-amd64.tar.gz"
      sha256 "81febec84a8525bf6ddd346b97f9bf710e4bba01b2661d8d8ec49ccb188d8256"
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
