# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.35"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.35/reactor-cli_v1.20261118.35_darwin-arm64.tar.gz"
      sha256 "92602c05b169ef717147698fc52ceef73e3d2aef4bb3e1345894b9bbd280c3d3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.35/reactor-cli_v1.20261118.35_darwin-amd64.tar.gz"
      sha256 "30bb8e1d8fd86446ee4aced6170a289d24071be25a40132c6420b02c50eecc31"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.35/reactor-cli_v1.20261118.35_linux-arm64.tar.gz"
      sha256 "6712b077c0c85ba57a095ffe2824279f223b3544360272ea947d67726cc47613"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.35/reactor-cli_v1.20261118.35_linux-amd64.tar.gz"
      sha256 "5422befb92d0cfe25d87201af6af2a5ff0bc99429dafc9e3f7aed0af6ede60c2"
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
