# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260908.25403"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260908.25403/reactor-cli_v1.20260908.25403_darwin-arm64.tar.gz"
      sha256 "425db4390338dc0a8f8b44b91538f51efe73221a92ba62e73845dfb3f14c9741"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260908.25403/reactor-cli_v1.20260908.25403_darwin-amd64.tar.gz"
      sha256 "d23224960645110822581a317743566f127c7ea2e07f6cff188c08315dff5148"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260908.25403/reactor-cli_v1.20260908.25403_linux-arm64.tar.gz"
      sha256 "d7ad5daf887679b82c335cd32ca46865dc24a33a6f50634fa162b8a8b8943012"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260908.25403/reactor-cli_v1.20260908.25403_linux-amd64.tar.gz"
      sha256 "2cbbd532877a61b6aee9520815cbef630fe178ae0c9ea0d42d43c188b872abbe"
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
