# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
#
# This file is a template — do NOT edit it directly.
# CI renders it with `//:ci:release -- render-formula --product awsrea` and
# pushes the result to reactor-team/homebrew-tools as Formula/awsrea.rb.

class Awsrea < Formula
  desc "AWS IAM Identity Center sign-in and profile switcher"
  homepage "https://github.com/reactor-team/homebrew-tools"
  version "v1.20261020.73"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/awsrea/v1.20261020.73/awsrea_v1.20261020.73_darwin-arm64.tar.gz"
      sha256 "455d1149207dac303638a182a819c9cc1f45e84880e0b506c444cf190035f26f"
    end
    on_intel do
      url "https://releases.reactor.inc/awsrea/v1.20261020.73/awsrea_v1.20261020.73_darwin-amd64.tar.gz"
      sha256 "a9ace88aab306bde521515c8943b13ba7f9d3f0d4c47b29008760cbc000015d6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/awsrea/v1.20261020.73/awsrea_v1.20261020.73_linux-arm64.tar.gz"
      sha256 "467d8d2814ace495300650312c07d6c0d872697c0cc31c6ec541f79d2b4cfdbe"
    end
    on_intel do
      url "https://releases.reactor.inc/awsrea/v1.20261020.73/awsrea_v1.20261020.73_linux-amd64.tar.gz"
      sha256 "77908a44284054c8c9b9f032d46316cfd8fa0245d04db7139fa2d81705686451"
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
