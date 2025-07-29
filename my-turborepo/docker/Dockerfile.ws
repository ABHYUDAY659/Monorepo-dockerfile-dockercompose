FROM oven/bun:1

WORKDIR /usr/src/app

## Can you optimise this?
COPY . .

RUN bun install

RUN bun run db:migrate

EXPOSE 8081

CMD ["bun", "start:ws"]