require "serverspec"
require "docker"

describe "Dockerfile" do
  image = Docker::Image.build_from_dir('.')

  set :backend, :docker
  set :docker_image, image.id

  it "installs the right version of ZuluVM" do
    expect(os_version).to match(/1.8.0u31/)
  end

  it "installs required packages" do
    expect(package("curl")).to be_installed
  end

  def os_version
    command("java -version 2>&1 | head -1").stdout
  end
end
