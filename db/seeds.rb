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
  title: "Zapatos de Vestir",
  description: "Zapatos Giesso de vestir elegantes, de cuero original y suela sintetica",
  color: "negro",
  size: "42",
  price: 599,
  brand: "Giesso",
  category_id: calzado.id,
  user_id: user1.id,
  images_url: "https://equus.vtexassets.com/arquivos/ids/194486-1600-auto?v=637242078205870000&width=1600&height=auto&aspect=true",
  gender: "hombre"
)

prod2 = Product.create(
  title: "Pantalon Denim de Mujer",
  description: "Pantalon Denim de Mujer, slim fit con corte moderno",
  color: "azul",
  size: "L",
  price: 299,
  brand: "Levi's",
  category_id: pantalones.id,
  user_id: user1.id,
  images_url: "https://www.sweet.com.ar/uploads/picture/image/9916/069247be-1.jpg",
  gender: "mujer"
)

prod3 = Product.create(
  title: "Remera Lisa cuello en V",
  description: "Remera lisa color negra con cuello en V, impecable estado, y poco uso",
  color: "negra",
  size: "L",
  price: 249,
  brand: "H&M",
  category_id: remeras.id,
  user_id: user2.id,
  images_url: "https://d3ugyf2ht6aenh.cloudfront.net/stores/107/136/products/pack3-remera-v-mix-22e341246188140a9f16535772725611-480-0.jpg",
  gender: "hombre"
)

prod4 = Product.create(
  title: "Saco de Vestir de Hombre",
  description: "Saco parte superior del Ambo, el Pantalon se alquila por separado. Talle ajustado.",
  color: "negro",
  size: "L",
  price: 2500,
  brand: "Armani",
  category_id: trajes.id,
  user_id: user2.id,
  images_url: "https://equus.vtexassets.com/arquivos/ids/196356-800-auto?v=637353617772770000&width=800&height=auto&aspect=true",
  gender: "hombre"
)

book1 = Booking.create(
  status: "aceptado",
  start_date: Date.today,
  finish_date: Date.tomorrow,
  product_id: prod1.id,
  user_id: user2.id
)

book2 = Booking.create(
  status: "pendiente",
  start_date: Date.today,
  finish_date: Date.tomorrow,
  product_id: prod2.id,
  user_id: user2.id
)
