# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260819.22301"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260819.22301/reactor-cli_v1.20260819.22301_darwin-arm64.tar.gz"
      sha256 "91d6f6c513c6a864fbdbfadd9ff424b2997831bd3ff922f4cd468daf2c88e8eb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260819.22301/reactor-cli_v1.20260819.22301_darwin-amd64.tar.gz"
      sha256 "647597b3d62a9965a97790a3a91e2e10f0943c6e86d089783793f726680a7682"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260819.22301/reactor-cli_v1.20260819.22301_linux-arm64.tar.gz"
      sha256 "d2c3c88e2e361c1df23f6b15ef9835550bc80f8513a9ac2cf8a3f7702acb6e42"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260819.22301/reactor-cli_v1.20260819.22301_linux-amd64.tar.gz"
      sha256 "47780a99ef898e1e786f73f46112fa9c71ece99e71ba060658400980022fe013"
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
