# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261118.31"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.31/reactor-cli_v1.20261118.31_darwin-arm64.tar.gz"
      sha256 "d9cb133a90f1203b2df710f9f861107cc663ed8deb848505b1f49258283c8882"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.31/reactor-cli_v1.20261118.31_darwin-amd64.tar.gz"
      sha256 "f89fffd5305c1541b11eefc764d95eaa930d1e4a4003ed22b83bcc07d28408bb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.31/reactor-cli_v1.20261118.31_linux-arm64.tar.gz"
      sha256 "e1aafea364df5b811aa203bb94774ede99b9fff0a4424042cd3eff19033d9539"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261118.31/reactor-cli_v1.20261118.31_linux-amd64.tar.gz"
      sha256 "de972e9b06011e60371468bc752aaeba8e677812b8bf108bb34f5ebf68b8a1c1"
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
