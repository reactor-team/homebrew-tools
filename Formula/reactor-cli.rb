# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16825"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16825/reactor-cli_v1.20260627.16825_darwin-arm64.tar.gz"
      sha256 "f367a730450bb9eaeafb51e60414f3fcd4493b1af28009d5068ad1644d1eedd6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16825/reactor-cli_v1.20260627.16825_darwin-amd64.tar.gz"
      sha256 "591426ba5d575fbe4a1b3efb2c966cbc9847ea359cd0a445a1fcf143bc95c29c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16825/reactor-cli_v1.20260627.16825_linux-arm64.tar.gz"
      sha256 "a1cef418b42af9ba057effaee9fb2754f1b50efe16987174af0c91c5c7a6155b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16825/reactor-cli_v1.20260627.16825_linux-amd64.tar.gz"
      sha256 "480eef752fbd71aa064842b6164a3219ed38de04cba47dd80bd56c1f0f7d8f3c"
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
