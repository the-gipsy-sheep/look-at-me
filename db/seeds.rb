# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

calzado = Category.create(description: "calzado")
remeras = Category.create(description: "remeras")
pantalones = Category.create(description: "pantalones")
trajes = Category.create(description: "trajes")
vestidos = Category.create(description: "vestidos")
abrigos = Category.create(description: "abrigos")
camisas = Category.create(description: "camisas")
accesorios = Category.create(description: "accesorios")
deportiva = Category.create(description: "deportiva")
carteras = Category.create(description: "carteras")

user1 = User.create(
  email: "gonchi@gmail.com",
  username: "gonco29",
  password: "123456",
  first_name: "Gonchi",
  last_name: "Cobos",
  phone_number: "+5411 1234 5678",
  address: "calle falsa 1234"
)

user2 = User.create(
  email: "pao@gmail.com",
  username: "PaoPesce",
  password: "123456",
  first_name: "Paola",
  last_name: "Pesce",
  phone_number: "+5411 1234 4321",
  address: "calle falsa 9874"
)

prod1 = Product.create(
  title: "zapatos re facheros",
  description: "zapatos de lona tipo converse, pero de la salada",
  color: "rojo",
  size: "42",
  price: 599,
  brand: "Chonberse",
  category_id: calzado.id,
  user_id: user1.id,
  images_url: "#",
  gender: "mujer"
)

prod2 = Product.create(
  title: "pantalon denim",
  description: "slim fit, nunca taxi",
  color: "azul, obvio",
  size: "L",
  price: 299,
  brand: "sin etiqueta",
  category_id: pantalones.id,
  user_id: user1.id,
  images_url: "#",
  gender: "mujer"
)

prod3 = Product.create(
  title: "remera cuello en V",
  description: "aca va una descripcion de remera",
  color: "rosadita",
  size: "L",
  price: 249,
  brand: "Gonchex",
  category_id: remeras.id,
  user_id: user2.id,
  images_url: "#",
  gender: "hombre"
)

prod4 = Product.create(
  title: "Sacooooo",
  description: "pantalon se alquila por separado",
  color: "negro",
  size: "L",
  price: 2500,
  brand: "Armani",
  category_id: trajes.id,
  user_id: user2.id,
  images_url: "#",
  gender: "hombre"
)

book1 = Booking.create(
  status: "aceptado",
  start_date: Date.today,
  finish_date: Date.tomorrow,
  product_id: prod1.id,
  user_id: user2.id
)
