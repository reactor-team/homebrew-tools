# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.329"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.329/reactor-cli_v1.20261013.329_darwin-arm64.tar.gz"
      sha256 "97084ec5497ab64a7266778bb519a2da3cccfb22608fb58442b9e14de532036a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.329/reactor-cli_v1.20261013.329_darwin-amd64.tar.gz"
      sha256 "0d5f18967b1c57335157a5648d6bfe1b96f6b06226c7ae1e1f4af4a87b377386"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.329/reactor-cli_v1.20261013.329_linux-arm64.tar.gz"
      sha256 "af1ba555a708f32e2cbfb95d31ad5f1864ebab9b78a251b9cd9313d0e42375e5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.329/reactor-cli_v1.20261013.329_linux-amd64.tar.gz"
      sha256 "b9840cc379329e1e931b73315453cf86e5a7e8ad7fddb1f9bfd6b4061c3733f5"
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
