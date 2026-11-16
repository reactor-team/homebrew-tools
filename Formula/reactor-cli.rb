# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261116.21"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261116.21/reactor-cli_v1.20261116.21_darwin-arm64.tar.gz"
      sha256 "8709aba0f88d45b5a05bccc05c041ab09bc3f68afc21c22776ed4870083e2c4f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261116.21/reactor-cli_v1.20261116.21_darwin-amd64.tar.gz"
      sha256 "b84c98342f122cf87d2326871f20d0c626beba09425c94d40090d4f048f5e73a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261116.21/reactor-cli_v1.20261116.21_linux-arm64.tar.gz"
      sha256 "0948286f70e7133fa87da3becd05e7943594dbec32fa943035276b81aed5e88b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261116.21/reactor-cli_v1.20261116.21_linux-amd64.tar.gz"
      sha256 "07cf3d38dcd049a2b19e01b854b208253baa9e718f08108ab69c0af743a0997c"
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
