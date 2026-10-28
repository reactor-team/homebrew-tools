# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261028.71"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.71/reactor-cli_v1.20261028.71_darwin-arm64.tar.gz"
      sha256 "7588ccb0e52632a47218c54c73ab7155d4fbd51a8abe8730b7e9df9e8fdd0743"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.71/reactor-cli_v1.20261028.71_darwin-amd64.tar.gz"
      sha256 "de906e64ae34bd67516f330c89c339b525e219e2c79357419de792bd9fba856b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.71/reactor-cli_v1.20261028.71_linux-arm64.tar.gz"
      sha256 "d1bdb7789ab5138acf4d79e5c76456b8acb2c7acd988e1f0e6337ec489d4bb29"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.71/reactor-cli_v1.20261028.71_linux-amd64.tar.gz"
      sha256 "aa8ed29bf9a6f4b602933d4af1137410d6845d0656e361043c51f1bf480ed07e"
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
