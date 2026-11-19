# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.19"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.19/reactor-cli_v1.20261119.19_darwin-arm64.tar.gz"
      sha256 "8aa1dca02d843025e84f7d34e6546c3b664f9f2b27bd908ebdf0d71b73737814"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.19/reactor-cli_v1.20261119.19_darwin-amd64.tar.gz"
      sha256 "aa84f44e4da22094e168a3eb6d25863150b5e8723dc83ef0d04f3e499153f3cd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.19/reactor-cli_v1.20261119.19_linux-arm64.tar.gz"
      sha256 "1bd819cd7871963ec0bf52ff1de24e1a7f024eb462a0fa98f6ce2b2c4c068e5e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.19/reactor-cli_v1.20261119.19_linux-amd64.tar.gz"
      sha256 "7bf090f591551f8561fb5328932b737d24ea0329d0b569d56f85f8cdf75dc1b6"
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
