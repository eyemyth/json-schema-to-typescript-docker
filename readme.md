# json-schema-to-typescript

Creates a standalone executable of the node package [json-schema-to-typescript](https://github.com/bcherny/json-schema-to-typescript)

This is intended to be used inside other containers without needing to install node etc.

For example, we use it in Python containers to run [pydantic-to-typescript](https://github.com/phillipdupuis/pydantic-to-typescript).

```
FROM python:3.11 as python_base

COPY --from=eyemyth/json-schema-to-typescript /root/json2ts /usr/local/bin/
```
