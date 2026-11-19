# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261119.18"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.18/reactor-cli_v1.20261119.18_darwin-arm64.tar.gz"
      sha256 "82e5d3d32c0634ca1d80a126951f4dc2a962cb04fa14953225f9c8747eb19c25"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.18/reactor-cli_v1.20261119.18_darwin-amd64.tar.gz"
      sha256 "6a20eba8063e803f993fb1d4f2bb47868757225054eff71864291b2e8c91e00f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.18/reactor-cli_v1.20261119.18_linux-arm64.tar.gz"
      sha256 "6201c238c09398e4ff995f1e41210672248eb66e6aa29e75930634c597592963"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261119.18/reactor-cli_v1.20261119.18_linux-amd64.tar.gz"
      sha256 "0d8d0798d963de810bf42da7dce4ecd6cc6730990e0c29d17b0972a178e6f883"
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
