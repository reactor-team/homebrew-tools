# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260919.27852"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27852/reactor-cli_v1.20260919.27852_darwin-arm64.tar.gz"
      sha256 "73b25a4b37bffa8304a4d0c78d595e8ba5b4ee77ad1fe197092f3da7c406d627"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27852/reactor-cli_v1.20260919.27852_darwin-amd64.tar.gz"
      sha256 "3c4f1b00bc20055612e4e95e54de0977ead8e0189f27b065f4553e683aaad9cf"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27852/reactor-cli_v1.20260919.27852_linux-arm64.tar.gz"
      sha256 "598407953315c2e4f7e32bfb06d4b0087da112c56db2491a4d1d720c73fc2797"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27852/reactor-cli_v1.20260919.27852_linux-amd64.tar.gz"
      sha256 "7b5ed550a66ae271ab53becec4827fcb8cf3bc97d58cd9902c8377563222f8be"
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
