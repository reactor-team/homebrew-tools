# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260823.22897"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260823.22897/reactor-cli_v1.20260823.22897_darwin-arm64.tar.gz"
      sha256 "fb9fa38e13b6f58eb0274bebd2b5895ecba239bf1000058e1ad6c7885f497326"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260823.22897/reactor-cli_v1.20260823.22897_darwin-amd64.tar.gz"
      sha256 "eeb6493684eee962d6117700008b29cc88e6c18f1830802a144d4c33f473041c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260823.22897/reactor-cli_v1.20260823.22897_linux-arm64.tar.gz"
      sha256 "e521d3acc459a0a8795ebde644f4edb7b7f2a0d477dd91fa8529d6ded2522d07"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260823.22897/reactor-cli_v1.20260823.22897_linux-amd64.tar.gz"
      sha256 "2aa876685ace65a238bf31b2e03d09b5246e821a2e9333dfdb400619e0c355d1"
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
