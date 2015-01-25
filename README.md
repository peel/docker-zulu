#Idea
The idea for the image is to create a minimal JVM/JDK base image w/ OpenJDK using Azul Systems' Zulu VM.

#Tags

The Zulu repository peel/zulu-openjdk-busybox provides multiple tagged images. The latest Zulu OpenJDK 8, 7, and 6 versions are:

- 8u25, 8, latest
- 7u72, 7
- 6u56, 6

#Usage
This Zulu repository supports multiple versions of OpenJDK-based Java SE JDKs. Zulu versions 8, 7, and 6 are compliant with Jav

``
docker run -it --rm peel/zulu-openjdk-busybox:8 java -version
```
