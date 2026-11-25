# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261125.11"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.11/reactor-cli_v1.20261125.11_darwin-arm64.tar.gz"
      sha256 "0c95c157a06127471a4dfd12523f8f77e35d1ab472073a36fdd6afeb2ed866f0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.11/reactor-cli_v1.20261125.11_darwin-amd64.tar.gz"
      sha256 "632add42eda516766eb9ac06e5d0e403ccb5b5bb4485edeb563fa35b79a7e2f8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.11/reactor-cli_v1.20261125.11_linux-arm64.tar.gz"
      sha256 "da506fb2a64aa64d8197c4cca0e1a1f4d38d74997871f44a88db8a333dd2d604"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.11/reactor-cli_v1.20261125.11_linux-amd64.tar.gz"
      sha256 "b0c57eaebad683e17ca548b618c511bf41a9f33f26d743de91498b6a62cf23f3"
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
