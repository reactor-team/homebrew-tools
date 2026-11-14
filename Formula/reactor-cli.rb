# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261113.61"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.61/reactor-cli_v1.20261113.61_darwin-arm64.tar.gz"
      sha256 "6bb1e83105b7b5594441e7736cde03392a4aef1ca7b560ad62544a26aab63cfb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.61/reactor-cli_v1.20261113.61_darwin-amd64.tar.gz"
      sha256 "c31c6bbd16993fc6c6c1de874cf6b74758f543772ce53d57337aaf07860ba361"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.61/reactor-cli_v1.20261113.61_linux-arm64.tar.gz"
      sha256 "02b1f332023da69a3714f43bef7ef90b3e66b50c20921fd2bf5a13dbdec4a3f9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.61/reactor-cli_v1.20261113.61_linux-amd64.tar.gz"
      sha256 "a8bbbceb13b91f4602c5e043870828b3de9d292448144524e366104e357a7f5f"
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
