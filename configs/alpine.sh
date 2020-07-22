#
# Configuration for creating a dockerfile, building the docker image, and
# for pushing it to a docker registry.
#

. ./common-config.sh

# The OS family. Determines which collection of install scripts to use.
# Currently, choices are 'alpine' or 'ubuntu'.
os="alpine"

# The argument of the FROM line in the dockerfile. This is the docker
# URL of the base image, optionally followed by more things.
from="alpine:3.12.0"

# This is the argument of 'docker pull', 'docker push', etc. for the image
# we are building.
docker_url="mjambon/r2c-ocaml:alpine"

# User to create and use. If it already exists, we'll try to use it.
user="user"

# Extra packages to be installed by the native package manager.
extra_packages="$extra_apk_packages"

# Opam switch to use. This determines the OCaml version and a set of
# configuration options.
opam_switch="4.10.0+flambda"

# The collection of opam packages we want to install. Go wild.
opam_packages="$opam_packages"