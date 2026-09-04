# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260904.24914"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24914/reactor-cli_v1.20260904.24914_darwin-arm64.tar.gz"
      sha256 "f12018c7723418a92bb794eb59ba02a6e964eeafa16301ec8248fb0a8a5be2f7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24914/reactor-cli_v1.20260904.24914_darwin-amd64.tar.gz"
      sha256 "5b30427339c526319d7c34b6a876259df357e41f5c58f3705fcc4f14bc323d5f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24914/reactor-cli_v1.20260904.24914_linux-arm64.tar.gz"
      sha256 "8b3ac632258b39c531d77c2962d707bc8becd9768908e7bf069133a42e4de34a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24914/reactor-cli_v1.20260904.24914_linux-amd64.tar.gz"
      sha256 "17dc3f463597090f1e7caee59b51cc9a5e856dffea87f18db04e7cabda9e45f8"
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
