```Dockerfile
# Kép alapjának kiválasztása
FROM node:14

# Alkalmazás könyvtár létrehozása
WORKDIR /usr/src/app

# Függőségek telepítése
COPY package*.json ./
RUN npm install

# Alkalmazás forráskódjának másolása
COPY . .

# Port nyitása
EXPOSE 8080

# Alkalmazás indítása
CMD [ "node", "app.js" ]