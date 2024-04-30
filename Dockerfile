FROM theasp/novnc


RUN set -ex; \
    apt-get update; \
    apt-get install -y libglib2.0-0 libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libgtk-3-dev libpango1.0-dev libcairo2-dev libgbm-dev libxkbcommon-dev libasound2-dev

RUN groupadd -g 1000 logseq
RUN useradd --create-home --no-log-init -u 1000 -g 1000 logseq

#USER logseq
