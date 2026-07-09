# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260709.17997"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.17997/reactor-cli_v1.20260709.17997_darwin-arm64.tar.gz"
      sha256 "23281afa423f2f5d53acfecdce104e5a5e09b80ad7e783a5aa40d2390c96011b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.17997/reactor-cli_v1.20260709.17997_darwin-amd64.tar.gz"
      sha256 "6276a3e576d25efe8c217899bfd8ef73e041d87a527e299e70f932c1a3fe0149"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.17997/reactor-cli_v1.20260709.17997_linux-arm64.tar.gz"
      sha256 "1e908a36b9502d62a078474df7a03bd9df7fb2b474729bfac69b7c6d89443d8d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.17997/reactor-cli_v1.20260709.17997_linux-amd64.tar.gz"
      sha256 "942bff834d7ee9a04235f328f1c23b1f1450d50b539e0c800802663d2be72455"
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
