# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260915.26757"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26757/reactor-cli_v1.20260915.26757_darwin-arm64.tar.gz"
      sha256 "225f120733fea994d6d908c8791227390ce535f259fb452555cd5455176d883f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26757/reactor-cli_v1.20260915.26757_darwin-amd64.tar.gz"
      sha256 "956b057d1f110b34bbe23c666ed8151ee3839abb8f54187c2f9f49a81159099c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26757/reactor-cli_v1.20260915.26757_linux-arm64.tar.gz"
      sha256 "3a6c2a5335d99f025fa5bcc90d78ef84ad711df29693337e455918bcb93d4a3a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26757/reactor-cli_v1.20260915.26757_linux-amd64.tar.gz"
      sha256 "5d64ba61fe76aa89f2656ca8af9114fcbd1c660320c73f1a3f0f9a9a4a2e5f08"
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
