# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260824.22949"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260824.22949/reactor-cli_v1.20260824.22949_darwin-arm64.tar.gz"
      sha256 "4c86d60e6ba2d85f2428ad55b3487e8170c9295de869e9a2793328170bf8ff49"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260824.22949/reactor-cli_v1.20260824.22949_darwin-amd64.tar.gz"
      sha256 "5308c53e48c2f207434cfd2b2e65667dc2c6467ddf6bcf3067669b7e619145d4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260824.22949/reactor-cli_v1.20260824.22949_linux-arm64.tar.gz"
      sha256 "b4a08f9ecf35c9966b4c920e6cf8b12c0ba26ca1f1a3559332b7793c6dc99519"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260824.22949/reactor-cli_v1.20260824.22949_linux-amd64.tar.gz"
      sha256 "e6f618449beba804df9d15e1f851d52bf0e8314aa0614596d12bfd9a15bc23ff"
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
