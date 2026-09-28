# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260928.28859"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28859/reactor-cli_v1.20260928.28859_darwin-arm64.tar.gz"
      sha256 "25d526708833e443808cb37e63bcea2a38f780e2056de2450cde4f3e399c89aa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28859/reactor-cli_v1.20260928.28859_darwin-amd64.tar.gz"
      sha256 "1e274e153f1d17fa43469ca5e9b02a24eb0e234fbdf3cff646080c41d118047d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28859/reactor-cli_v1.20260928.28859_linux-arm64.tar.gz"
      sha256 "36a8e3efc2a44890b7bff652dbeacf03127cb7c437c47b610a1f97c99133b0d5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28859/reactor-cli_v1.20260928.28859_linux-amd64.tar.gz"
      sha256 "af54ca1ec71ca9ccb0866a31910a1f62439ddb41703eec84ba539aad1e3e130d"
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
