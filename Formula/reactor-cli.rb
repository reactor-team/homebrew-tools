# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260901.24405"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24405/reactor-cli_v1.20260901.24405_darwin-arm64.tar.gz"
      sha256 "7bdeda2ffad8c928575414935bd49a6ecd221a5af810e46d8b32a85139de2bd8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24405/reactor-cli_v1.20260901.24405_darwin-amd64.tar.gz"
      sha256 "2c803f67a692638a186af930b52c39fd5585548e4f0b82fed5e521844eb79aa6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24405/reactor-cli_v1.20260901.24405_linux-arm64.tar.gz"
      sha256 "83b283aa30e8d963c1b3f13f76950de85fe43e7f6a548c5d74f5df107ef7607f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24405/reactor-cli_v1.20260901.24405_linux-amd64.tar.gz"
      sha256 "67212d12a448d500b9aaf8cbe0655e632b624b850a58ab13b7bb9df237920265"
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
