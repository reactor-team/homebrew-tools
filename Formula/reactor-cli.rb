# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.2/reactor-cli_v1.20261119.2_darwin-arm64.tar.gz"
      sha256 "6893c1b5ec600cbf8ed0ce813f011a377f5191148dffb41247a682f963b9b9a8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.2/reactor-cli_v1.20261119.2_darwin-amd64.tar.gz"
      sha256 "5b8f534f1a2943de33a1387c149d5e8e1577dd08cb29a9f8a32dbec5c1b6ecac"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.2/reactor-cli_v1.20261119.2_linux-arm64.tar.gz"
      sha256 "daff2ecaa41799db6b255ad0a8ad5e027634044628b40521c915d33a5a5d83fb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.2/reactor-cli_v1.20261119.2_linux-amd64.tar.gz"
      sha256 "1cc443abcc2010bda53bd1e02bd1f380c2f3ba6399b24fa7712983137ca1af8c"
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
