# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260615.16043"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16043/reactor-cli_v1.20260615.16043_darwin-arm64.tar.gz"
      sha256 "0efdf6cc36a55ae4ba95ec05e828f46e2a4700d15804bfea22c221eeaecaf9a3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16043/reactor-cli_v1.20260615.16043_darwin-amd64.tar.gz"
      sha256 "30d42e7ab42e42eb84bb1e9a48dc921efac72275e15318eaa6bfcf80ffcf84e7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16043/reactor-cli_v1.20260615.16043_linux-arm64.tar.gz"
      sha256 "7dcee0950278c985147aabc762bb74c1763c21d33b7a480f2ec184fbbb89b2d3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16043/reactor-cli_v1.20260615.16043_linux-amd64.tar.gz"
      sha256 "4e008a94923b4a188e5f20d0a8ed82e3e87d711cdce7030d61eab39a03284744"
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
