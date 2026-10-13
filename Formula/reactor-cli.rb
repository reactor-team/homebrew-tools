# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.457"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.457/reactor-cli_v1.20261013.457_darwin-arm64.tar.gz"
      sha256 "307ffa7770154038e47e278bb92cd15663610bf62c67be0c11e8e68f0e1c6d1b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.457/reactor-cli_v1.20261013.457_darwin-amd64.tar.gz"
      sha256 "bc8117a19f059540e9dbe8e69f5147f299be1b45a6f33c2bdcd7e46ae7f671e0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.457/reactor-cli_v1.20261013.457_linux-arm64.tar.gz"
      sha256 "073ab4d390ff0e99f051fdf3dac73fd1cab7b0bcb304c0fa6f7c6352b9676451"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.457/reactor-cli_v1.20261013.457_linux-amd64.tar.gz"
      sha256 "17ce1c45855c724b5890e1974002e782f30342f46a5788b4c0ae6860a858c44f"
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
