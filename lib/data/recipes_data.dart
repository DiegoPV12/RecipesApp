import '../models/recipe_model.dart';

List<RecipeModel> sampleRecipes = [
  RecipeModel(
    id: '1',
    title: 'Tortilla Española',
    imageUrl: 'assets/tortilla_española.jpg',
    ingredients: [
      '4 patatas medianas',
      '1 cebolla',
      '6 huevos',
      'Aceite de oliva',
      'Sal'
    ],
    steps: [
      'Pelar las patatas y cortarlas en rodajas finas.',
      'Picar la cebolla y sofreír con las patatas.',
      'Batir los huevos en un bol y mezclar con las patatas y cebolla.',
      'Verter la mezcla en una sartén y cocinar hasta que esté dorada por ambos lados.'
    ],
    duration: 30,
    category: 'Comida Principal',
  ),
  RecipeModel(
    id: '2',
    title: 'Ensalada César',
    imageUrl: 'assets/ensalada_cesar.jpg',
    ingredients: [
      'Lechuga romana',
      'Pechuga de pollo',
      'Crutones',
      'Queso parmesano',
      'Aderezo César'
    ],
    steps: [
      'Cocinar la pechuga de pollo y cortarla en tiras.',
      'Mezclar la lechuga, pollo, crutones y queso en un bol.',
      'Añadir aderezo César al gusto y mezclar bien.'
    ],
    duration: 15,
    category: 'Ensalada',
  ),
  RecipeModel(
    id: '3',
    title: 'Lasagna',
    imageUrl: 'assets/lasagna.jpg',
    ingredients: [
      'Láminas de lasaña',
      'Carne picada',
      'Salsa de tomate',
      'Queso mozzarella',
      'Bechamel'
    ],
    steps: [
      'Cocinar la carne picada y mezclar con la salsa de tomate.',
      'Montar la lasaña alternando capas de láminas, carne y bechamel.',
      'Cubrir con queso mozzarella y hornear.'
    ],
    duration: 60,
    category: 'Comida Principal',
  ),
  RecipeModel(
    id: '4',
    title: 'Sopa de Tomate',
    imageUrl: 'assets/sopa_tomate.png',
    ingredients: [
      'Tomates maduros',
      'Cebolla',
      'Ajo',
      'Caldo de verduras',
      'Albahaca'
    ],
    steps: [
      'Sofreír la cebolla y el ajo picados.',
      'Añadir tomates pelados y cocinar.',
      'Verter el caldo de verduras y hervir.',
      'Triturar hasta obtener una textura suave.'
    ],
    duration: 45,
    category: 'Sopa',
  ),
  RecipeModel(
    id: '5',
    title: 'Tiramisú',
    imageUrl: 'assets/tiramisu.jpeg',
    ingredients: [
      'Bizcochos de soletilla',
      'Café fuerte',
      'Queso mascarpone',
      'Cacao en polvo',
      'Huevos',
      'Azúcar'
    ],
    steps: [
      'Mezclar mascarpone, yemas de huevo y azúcar.',
      'Mojar los bizcochos en café y colocar en un molde.',
      'Cubrir con la mezcla de mascarpone y repetir las capas.',
      'Espolvorear cacao en polvo y refrigerar.'
    ],
    duration: 30,
    category: 'Postre',
  ),
  RecipeModel(
    id: '6',
    title: 'Gazpacho Andaluz',
    imageUrl: 'assets/gazpacho.png',
    ingredients: [
      'Tomates maduros',
      'Pimiento verde',
      'Pepino',
      'Cebolla',
      'Ajo',
      'Vinagre',
      'Aceite de oliva'
    ],
    steps: [
      'Trocear todas las verduras y añadir a una licuadora.',
      'Añadir aceite, vinagre y sal al gusto.',
      'Triturar hasta obtener una textura suave.',
      'Refrigerar antes de servir.'
    ],
    duration: 20,
    category: 'Entrante',
  ),
];
