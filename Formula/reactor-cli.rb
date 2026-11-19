# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.15"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.15/reactor-cli_v1.20261119.15_darwin-arm64.tar.gz"
      sha256 "69a127c5ad4b329a4427bc51af173920a08de81eae50d9a8d45da57d5b30529b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.15/reactor-cli_v1.20261119.15_darwin-amd64.tar.gz"
      sha256 "40ead1ac298690d9545352e641d33269e9384d1b6ca15466e78d05ccd0b50ae6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.15/reactor-cli_v1.20261119.15_linux-arm64.tar.gz"
      sha256 "0ea3be9158c588fe6026f7f83daf9ed5c25e1b97a0ddbfaa0210d2143fb47f3b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.15/reactor-cli_v1.20261119.15_linux-amd64.tar.gz"
      sha256 "b7677b8b03fd894123665361470db3c904b9110d1ac731af268ae1d97e5c8d35"
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
