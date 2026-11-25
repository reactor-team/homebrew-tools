# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261125.9"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.9/reactor-cli_v1.20261125.9_darwin-arm64.tar.gz"
      sha256 "86ee56c4e55b78cc789e31062d2a129df821ce777c01e49f7d19e017d779ada0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.9/reactor-cli_v1.20261125.9_darwin-amd64.tar.gz"
      sha256 "5f9fa1d2f5ea6f6a47bed6fcb1c3092c06b402c425b58ac7a03e77285401e9e5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.9/reactor-cli_v1.20261125.9_linux-arm64.tar.gz"
      sha256 "a4a4a5ebdcd97a2ada61a0e6b889b5fe7b261c1a14a19941f0fd42c126fa6758"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261125.9/reactor-cli_v1.20261125.9_linux-amd64.tar.gz"
      sha256 "28cedf9dc6d60e60925b4ef0762d53fd883c8a0694130f70c62c717141fedb2c"
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
