#!/usr/bin/env bash
# Local build script for Spring Security 3.2.x fork on JDK 8.
# Skips docs generation and CAS integration tests that require external services.

./gradlew build \
  -x :docs:apidocs \
  -x javadoc \
  -x :docs:manual:asciidoctor \
  -x :docs:guides:asciidoctor \
  -x :spring-security-samples-cassample-xml:integrationTest \
  "$@"
