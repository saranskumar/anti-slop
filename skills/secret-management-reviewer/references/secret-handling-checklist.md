# Secret Handling Checklist

- enumerate all secrets and who truly needs them
- separate client-safe public config from privileged secrets
- keep service-role, admin, signing, and provider keys in trusted runtimes only
- define rotation and revocation expectations for long-lived credentials
- avoid printing secrets in logs, crash reports, or test fixtures
