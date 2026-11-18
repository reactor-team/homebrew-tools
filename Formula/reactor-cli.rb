# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.33"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.33/reactor-cli_v1.20261118.33_darwin-arm64.tar.gz"
      sha256 "cf3195811c1d960c904a8012f5818ec48224e633f1e868337252cf1789709bf0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.33/reactor-cli_v1.20261118.33_darwin-amd64.tar.gz"
      sha256 "51e6b0e54516fd7d6bbfcad85a0ccc5e2cad7c1a2ecac27a0c797c4efc2b9d63"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.33/reactor-cli_v1.20261118.33_linux-arm64.tar.gz"
      sha256 "e2ae9af19a6c3ccdb648538c24641e5c4b9f9bad8a7885ee2ba1d58b3978566a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.33/reactor-cli_v1.20261118.33_linux-amd64.tar.gz"
      sha256 "e789dbfb3c6eff2ed9275c719a6ec82c28574ef0feda42656a7b9cd705481342"
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
