# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16871"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16871/reactor-cli_v1.20260627.16871_darwin-arm64.tar.gz"
      sha256 "d350d66d846b0c92cb698fd8f53789738d89ecd88ec9566baa8d2756f14166f6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16871/reactor-cli_v1.20260627.16871_darwin-amd64.tar.gz"
      sha256 "1aa3b323d205897f71c97cd00c009c7436fe311581bac035a2ef5099f5b64b1f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16871/reactor-cli_v1.20260627.16871_linux-arm64.tar.gz"
      sha256 "b5eef784e95abd4034b9621d5d7147ce3b30dc59dbf80c882c0640308c97df79"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16871/reactor-cli_v1.20260627.16871_linux-amd64.tar.gz"
      sha256 "dcec56a795b38e3bb93e44f286b665a37df5fde18ca8640143c65fd7c79d30bf"
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
