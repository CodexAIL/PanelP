# The world is a prison for the believer.
## https://www.youtube.com/watch?v=DWfNYztUM1U

from django.dispatch import Signal

## This event is fired before Popo PowerPanel core start installation of Docker
preDockerInstallation = Signal(providing_args=["request"])

## This event is fired after Popo PowerPanel core finished intallation of Docker.
postDockerInstallation = Signal(providing_args=["request", "response"])
