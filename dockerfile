FROM node:20-alpine

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
RUN apk add --no-cache udev ttf-freefont chromium

RUN mkdir /usr/share/fonts/nanumfont
RUN wget http://cdn.naver.com/naver/NanumFont/fontfiles/NanumFont_TTF_ALL.zip
RUN unzip NanumFont_TTF_ALL.zip -d /usr/share/fonts/nanumfont
RUN rm NanumFont_TTF_ALL.zip

#RUN mkdir -f /usr/share/fonts/nanumsquareneo
#RUN wget https://campaign.naver.com/nanumsquare_neo/download/NaverNanumSquareNeo.zip
#RUN unzip NaverNanumSquareNeo.zip -d /usr/share/fonts/nanumsquareneo
#RUN rm NaverNanumSquareNeo.zip

RUN fc-cache -f -v

RUN npm install -g puppeteer

