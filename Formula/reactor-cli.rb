# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261113.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.3/reactor-cli_v1.20261113.3_darwin-arm64.tar.gz"
      sha256 "299383ae6b1e3a987746c0259f595c0769d169de55c4eb93da7b12a16b89020c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.3/reactor-cli_v1.20261113.3_darwin-amd64.tar.gz"
      sha256 "7fe89174406c5719166d7e416235fe0cca99957a12abed6ddead02dec3d5a683"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.3/reactor-cli_v1.20261113.3_linux-arm64.tar.gz"
      sha256 "56d01f906283d261b6472de4288ddf4031960a90713c680a88ee83450b7b05cc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.3/reactor-cli_v1.20261113.3_linux-amd64.tar.gz"
      sha256 "46cf1639ad3976055429e8b0d32d84dee17096493bd604d2c2112427b0953daa"
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
