# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261006.100"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.100/reactor-cli_v1.20261006.100_darwin-arm64.tar.gz"
      sha256 "5e47e41ad3cd153ffef42c6ad8f921305e3538313929281a5a16d0fbeb063334"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.100/reactor-cli_v1.20261006.100_darwin-amd64.tar.gz"
      sha256 "ff786bf0c699082dbe35489f2626cf183b280247b85dfbbd24b43a3749a1acec"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.100/reactor-cli_v1.20261006.100_linux-arm64.tar.gz"
      sha256 "9384792d5086b892afe6eeb661faf5223896a0e7928ff6ee2748533513f6aa0c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261006.100/reactor-cli_v1.20261006.100_linux-amd64.tar.gz"
      sha256 "bfbeb5c25570876d2b6048ceccb5880747d44b7673f6aa3379371abcf554df4e"
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
