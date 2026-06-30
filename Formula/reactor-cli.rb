# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260630.16999"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260630.16999/reactor-cli_v1.20260630.16999_darwin-arm64.tar.gz"
      sha256 "26566f3c3db56b9ebc2a5b7493e229cfe9f42f0a1b283d97d9800f0526944e4f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260630.16999/reactor-cli_v1.20260630.16999_darwin-amd64.tar.gz"
      sha256 "8662934cade342a91beb5fbcc9849a3e945cd74da1719bf294739d629eae3b29"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260630.16999/reactor-cli_v1.20260630.16999_linux-arm64.tar.gz"
      sha256 "afe6f80727a16d3903da40bc46a34f0e478fcca9166f777135aa789b8b5ae3ef"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260630.16999/reactor-cli_v1.20260630.16999_linux-amd64.tar.gz"
      sha256 "6168fcb102491ec6eab4273977321ffbe3ddffe48e2ab87b62646a3e0bbbf5dd"
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
