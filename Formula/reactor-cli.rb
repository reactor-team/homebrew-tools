# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.6"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.6/reactor-cli_v1.20261118.6_darwin-arm64.tar.gz"
      sha256 "9b7d9f6722f379368e81e5cb2302d17d39aa36c020b35aa4f9392c4ff8b18b10"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.6/reactor-cli_v1.20261118.6_darwin-amd64.tar.gz"
      sha256 "f38f4b4cc51cbc1fc83c56ec3735beaa5be6fe4eff29d6334a0a76ab648be02d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.6/reactor-cli_v1.20261118.6_linux-arm64.tar.gz"
      sha256 "605df5ad93bc40a90908618677d71a284321fd70c2224d7043ab62c9bf645db6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.6/reactor-cli_v1.20261118.6_linux-amd64.tar.gz"
      sha256 "f53ba75ad5222ebd4dd614af2ae4130fb7ba51390b3c239e581a33a6cb996222"
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
