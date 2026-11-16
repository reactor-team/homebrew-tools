# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261116.18"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261116.18/reactor-cli_v1.20261116.18_darwin-arm64.tar.gz"
      sha256 "2230c2460d2ace8ab4ae3f7863ac213d7b26b4299a95a454f37ec00a08b45fea"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261116.18/reactor-cli_v1.20261116.18_darwin-amd64.tar.gz"
      sha256 "d5779f014819c46fd7fc5f05fdf2ae411df780f04e1661b2f5563f0edea40b42"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261116.18/reactor-cli_v1.20261116.18_linux-arm64.tar.gz"
      sha256 "e01d98fa660fb428a38d16c87e7a4265ae074742f2b1f3bf76bdba6897e47d5b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261116.18/reactor-cli_v1.20261116.18_linux-amd64.tar.gz"
      sha256 "e18c0980b2b6c4d46c54b2d880729bfb92db75380f143040239a824093b6c759"
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
