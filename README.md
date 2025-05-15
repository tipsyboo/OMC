``` docker-compose -f docker-compose.yaml up ```

Docker compose will:
1. Launch a teamcity-server container first (depends_on).
2. Build a teamcity-agent image according to Dockerfile and launch it.
3. Isolate teamcity-agent from WAN via internal bridge.

Tested and ran successfully on an EC2 instance.
