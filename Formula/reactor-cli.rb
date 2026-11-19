# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.17"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.17/reactor-cli_v1.20261119.17_darwin-arm64.tar.gz"
      sha256 "efb7a602bd6fb308b8a87a0614be592b016e780d56634e1a87e117939ea68034"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.17/reactor-cli_v1.20261119.17_darwin-amd64.tar.gz"
      sha256 "f465cba6de25395302c1d764ac4c53e02878d5c949f090e171ad7f21c2c1682a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.17/reactor-cli_v1.20261119.17_linux-arm64.tar.gz"
      sha256 "3381fe1fb026f27e463c3dda06526d033d6d48ac59558cfe4e562c052bb85a62"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.17/reactor-cli_v1.20261119.17_linux-amd64.tar.gz"
      sha256 "14a0b3c8d35104b175e6064195d325f72e803bedf846be399f8455310b998a61"
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
