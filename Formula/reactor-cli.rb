# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.315"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.315/reactor-cli_v1.20261110.315_darwin-arm64.tar.gz"
      sha256 "706a540b34b861dbffa84453f89c994ba3035bede77fb1ad9bccfd85a697b33f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.315/reactor-cli_v1.20261110.315_darwin-amd64.tar.gz"
      sha256 "a60997cd600303b16c7b97067ff8c0dc0e777609691465fedc29969ca32f405c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.315/reactor-cli_v1.20261110.315_linux-arm64.tar.gz"
      sha256 "82edb378e75b482b69b081325c3d8f348dc73d83dde73427b0a7fb86f8690c40"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.315/reactor-cli_v1.20261110.315_linux-amd64.tar.gz"
      sha256 "f82d3fb893267d125c62e8c1bfbc0643d3adc872343d12effd5bceeafe00516f"
    end
  end

  def install
    bin.install "reactor"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
  end
end
