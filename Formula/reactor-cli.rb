# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261024.156"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.156/reactor-cli_v1.20261024.156_darwin-arm64.tar.gz"
      sha256 "2f857aa5af485bf4de82a46a4e640e6e7238bca3a2797e8e54f1886b11b9fd8e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.156/reactor-cli_v1.20261024.156_darwin-amd64.tar.gz"
      sha256 "5ba5a5cbe5cc8f91461ed5386b47be8b8332c6e67c6bd10513915280af716c27"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.156/reactor-cli_v1.20261024.156_linux-arm64.tar.gz"
      sha256 "7ddb290c2df06ee3a295566a58f913d4f4e5b6ae4209cd132b7520b0456975aa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.156/reactor-cli_v1.20261024.156_linux-amd64.tar.gz"
      sha256 "9df06362ad7250d8412ddb6768839e639333a055efd5e223372cab220cec7747"
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
