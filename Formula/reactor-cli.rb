# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.40"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.40/reactor-cli_v1.20261118.40_darwin-arm64.tar.gz"
      sha256 "844406dbc77117733212b85626df28c3f371e50c794068de65e97cef048bb5bd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.40/reactor-cli_v1.20261118.40_darwin-amd64.tar.gz"
      sha256 "3eab5daf9367cae1801e5d95576e8cc4fd12d71ff35ec63b7b638f6439269d1b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.40/reactor-cli_v1.20261118.40_linux-arm64.tar.gz"
      sha256 "f3d3d26446fe8b50d0c7e61da7792dd3c6b63b4714cc1ca5ae6bf9caf1b6a4bf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.40/reactor-cli_v1.20261118.40_linux-amd64.tar.gz"
      sha256 "a1af3f6e6912ed56d85092cc7e327c093c8a0afec481c614e159c4bbcc11c0c8"
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
