# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261124.6"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.6/reactor-cli_v1.20261124.6_darwin-arm64.tar.gz"
      sha256 "3e107c718abaa0648f76898aaedd9f2cc6bb4e366dd442c7be34003d51725587"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.6/reactor-cli_v1.20261124.6_darwin-amd64.tar.gz"
      sha256 "33a6cd74d5aee2b5cb86e84f786d4adfd6896f335d4fb13c58be0ae7da3a6f79"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.6/reactor-cli_v1.20261124.6_linux-arm64.tar.gz"
      sha256 "15a114660c20a3094ff83b4c41a27879c6a46c533f5d40ef3be43fabcf021538"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.6/reactor-cli_v1.20261124.6_linux-amd64.tar.gz"
      sha256 "8a7a96423d8c708ca87f3c7b28d9c37094ef24cb4bf6ec59975e689adae21ac2"
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
