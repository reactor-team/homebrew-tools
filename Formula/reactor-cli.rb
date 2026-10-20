# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.213"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.213/reactor-cli_v1.20261020.213_darwin-arm64.tar.gz"
      sha256 "6f3cdf9a7d764f70c6e9c433f1cffa88863a377568be97fc303fa4ed42525c05"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.213/reactor-cli_v1.20261020.213_darwin-amd64.tar.gz"
      sha256 "487a42f2da837f86c1598960bd592527116c7a90e5a6426369056f3f4ce1669a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.213/reactor-cli_v1.20261020.213_linux-arm64.tar.gz"
      sha256 "78ba76ccf524c7de83a102426939fcbd5c7b3eb225e80e6f9645bd724d28d527"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.213/reactor-cli_v1.20261020.213_linux-amd64.tar.gz"
      sha256 "80398e8338a8c3d61323c01b8802d283d58a465d9b9de95821e0e7b9cb01f210"
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
