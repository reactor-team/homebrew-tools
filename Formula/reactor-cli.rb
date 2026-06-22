# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260622.16459"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260622.16459/reactor-cli_v1.20260622.16459_darwin-arm64.tar.gz"
      sha256 "1d85ab14bc8723a7e2f0451cfaedd80fca47deaab9bd9322d21bff74d6979b8b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260622.16459/reactor-cli_v1.20260622.16459_darwin-amd64.tar.gz"
      sha256 "7fb45d4a964a970f208ee62a925a39344d6ee895488da60c36866cb14c31d036"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260622.16459/reactor-cli_v1.20260622.16459_linux-arm64.tar.gz"
      sha256 "44162bb6b1b2fcbcfc59be2dab2d21c5dda89a23146fc2b277ac5d87fe4f711d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260622.16459/reactor-cli_v1.20260622.16459_linux-amd64.tar.gz"
      sha256 "4b34fbfd59025ebba41d2cabf0d32b36488107063c450d07ccafad17958300cc"
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
