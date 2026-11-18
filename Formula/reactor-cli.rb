# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.39"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.39/reactor-cli_v1.20261118.39_darwin-arm64.tar.gz"
      sha256 "4c40ce2ca6b1c5c2d7393ddfbbf234f4351937b26bbb90a84cc39a9da56be00d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.39/reactor-cli_v1.20261118.39_darwin-amd64.tar.gz"
      sha256 "3b7ea3d69778da8f159702bb966fa80471ac9fac5dbaaa949f18b8208a1bf0ce"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.39/reactor-cli_v1.20261118.39_linux-arm64.tar.gz"
      sha256 "308238ff073b96fe50c4438f6225aebe1af56c154c4200f5a1b9b206c338cd1b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.39/reactor-cli_v1.20261118.39_linux-amd64.tar.gz"
      sha256 "7cc4f9be280ba307fd7dcafa3aace3b7080e0e0a5b4f711b7450b56a612d0d72"
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
