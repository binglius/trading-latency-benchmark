# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# -Dio.netty.handler.ssl.openssl.engine=qatengine
java -Xms16g -Xmx16g -XX:ConcGCThreads=32 \
 -XX:+UnlockExperimentalVMOptions -XX:+UseZGC -XX:+TieredCompilation -XX:+UseLargePages \
 -XX:LargePageSizeInBytes=2m -XX:+UnlockDiagnosticVMOptions \
 -XX:+DoEscapeAnalysis -XX:+UseCompressedOops -XX:+UseTLAB \
 -XX:+UseCompressedOops -XX:InitiatingHeapOccupancyPercent=60 \
 -XX:+UseNUMA \
 -server -Dsun.rmi.dgc.server.gcInterval=0x7FFFFFFFFFFFFFFE \
 -Dsun.rmi.dgc.client.gcInterval=0x7FFFFFFFFFFFFFFE -Dfile.encoding=UTF \
 -jar ExchangeFlow-1.0-SNAPSHOT.jar latency-test
