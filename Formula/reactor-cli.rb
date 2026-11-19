# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.41"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.41/reactor-cli_v1.20261119.41_darwin-arm64.tar.gz"
      sha256 "7c302293580ab087785c41c60c3d542bee41c33c20bf78b180bd6e4c1e040add"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.41/reactor-cli_v1.20261119.41_darwin-amd64.tar.gz"
      sha256 "1abcfe3e66fd6d5a491496e0905c3e4524d74844d154e9d742daa6d2cf7bd5e8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.41/reactor-cli_v1.20261119.41_linux-arm64.tar.gz"
      sha256 "b5ddd23bfa676694ce297ef9dcb92a429d6bdb3a69748e08e6e10e870e6c3b5c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.41/reactor-cli_v1.20261119.41_linux-amd64.tar.gz"
      sha256 "bd6dfeecb2bf4527d753cd3d30beddadc058d3885024017e67399a347d9c0bbd"
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
