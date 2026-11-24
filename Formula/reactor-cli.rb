# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261124.15"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.15/reactor-cli_v1.20261124.15_darwin-arm64.tar.gz"
      sha256 "c2cd9aa3e8729e059243c0403950934342c0d6abf3c965bacb5dbd7504944b01"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.15/reactor-cli_v1.20261124.15_darwin-amd64.tar.gz"
      sha256 "e993166c2043f9798e6ba40cca83098504b76625cc896682f7e319f2a4c971e7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.15/reactor-cli_v1.20261124.15_linux-arm64.tar.gz"
      sha256 "eedbd593baee52de0ba8f99b0a100cef7329a1df4c7816e10d461ffa4b8fe91a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261124.15/reactor-cli_v1.20261124.15_linux-amd64.tar.gz"
      sha256 "639c6c1fc27078b9089b571146cf78ad3a441a23b793243e00c257edd3c1c4bb"
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
