# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
#
# This file is a template — do NOT edit it directly.
# CI renders it with `//:ci:release -- render-formula --product awsrea` and
# pushes the result to reactor-team/homebrew-tools as Formula/awsrea.rb.

class Awsrea < Formula
  desc "AWS IAM Identity Center sign-in and profile switcher"
  homepage "https://github.com/reactor-team/homebrew-tools"
  version "v1.20261106.532"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/awsrea/v1.20261106.532/awsrea_v1.20261106.532_darwin-arm64.tar.gz"
      sha256 "dde298ce8d4256e1ca0084d143a521293a38302702f3c12547bf658c0a9b1857"
    end
    on_intel do
      url "https://releases.reactor.inc/awsrea/v1.20261106.532/awsrea_v1.20261106.532_darwin-amd64.tar.gz"
      sha256 "7468a3c61ccc0af7339462028fcf5d5bab0f3c69da15fde65b4f5840f7b17f04"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/awsrea/v1.20261106.532/awsrea_v1.20261106.532_linux-arm64.tar.gz"
      sha256 "935813c68a78603e59b7974a6b974b4ee2e16afdd2d15b5bcef9f31bf5f24bd6"
    end
    on_intel do
      url "https://releases.reactor.inc/awsrea/v1.20261106.532/awsrea_v1.20261106.532_linux-amd64.tar.gz"
      sha256 "690d2982f29eb455f5c58d55d9505344b5fbb6452788e3071f8a51cbb90b8bf4"
    end
  end

  def install
    bin.install "awsrea"
    # Keeps existing `aws-sso-reactor` aliases and credential_process lines working.
    bin.install_symlink "awsrea" => "aws-sso-reactor"
  end

  def caveats
    <<~EOS
      Configure awsrea before first use:
        awsrea init
      or copy the config file your team provides to ~/.reactor/awsrea.yaml.

      To let awsrea switch profiles in your shell, add this line to ~/.zshrc:
        eval "$(awsrea shell-init)"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsrea --version")
  end
end
