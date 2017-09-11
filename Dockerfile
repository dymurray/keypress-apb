FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"bmFtZToga2V5cHJlc3MtYXBiCmltYWdlOiBkeW11cnJheS9rZXlwcmVzcy1hcGIKZGVzY3JpcHRp\
b246IFRoaXMgaXMgYSBzYW1wbGUgYXBwbGljYXRpb24gZ2VuZXJhdGVkIGJ5IGFwYiBpbml0CmJp\
bmRhYmxlOiBUcnVlCmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YToKICBkaXNwbGF5TmFtZTogS2V5\
cHJlc3MgKEFQQikKcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogVGhp\
cyBkZWZhdWx0IHBsYW4gZGVwbG95cyBrZXlwcmVzcy1hcGIKICAgIGZyZWU6IFRydWUKICAgIG1l\
dGFkYXRhOiB7fQogICAgcGFyYW1ldGVyczogW10K"

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
