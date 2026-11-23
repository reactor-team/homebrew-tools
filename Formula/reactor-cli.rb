# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261123.14"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.14/reactor-cli_v1.20261123.14_darwin-arm64.tar.gz"
      sha256 "0bffe018daa2c0ea6d0647318ddb3dec3eacc7d414989740c8c1f5ffcffbeb57"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.14/reactor-cli_v1.20261123.14_darwin-amd64.tar.gz"
      sha256 "ef3c8a192a24a2510694deba6cef7b9d55b3ff18959d2b41b189e75a29876008"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.14/reactor-cli_v1.20261123.14_linux-arm64.tar.gz"
      sha256 "3b9a916e73049c17d0f64979eeded37470897577eb89b42d69eea78e763fad92"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261123.14/reactor-cli_v1.20261123.14_linux-amd64.tar.gz"
      sha256 "b8cddba6e523885daffe6cc4605816d34d2bb6dfa914191fa511211e8be61409"
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
