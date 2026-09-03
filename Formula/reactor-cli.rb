# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260903.24657"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260903.24657/reactor-cli_v1.20260903.24657_darwin-arm64.tar.gz"
      sha256 "12e73bbc0364ec65249ef121273f939b20c1d2d0471109e751091377b7a44d14"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260903.24657/reactor-cli_v1.20260903.24657_darwin-amd64.tar.gz"
      sha256 "4276caff928988bc47c38a5c57f6ad5e9041558c03071cc49b5bdae0c7ca0193"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260903.24657/reactor-cli_v1.20260903.24657_linux-arm64.tar.gz"
      sha256 "10de775b7a3bb8bbe27f1c17c8e35a2df77c7b5ce9b9ac93116739ca53c3d5a0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260903.24657/reactor-cli_v1.20260903.24657_linux-amd64.tar.gz"
      sha256 "21b5ab6c07104390a78cfc4a15f88593fc3e77391010bdb7e263758083024797"
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
