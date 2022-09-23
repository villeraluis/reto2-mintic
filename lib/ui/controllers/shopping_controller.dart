import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../../domain/product.dart';

class ShoppingController extends GetxController {
  // lista de productos
  var entries = <Product>[].obs;
  // el valor total de la compra
  var total = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // los dos elementos que vamos a tener en la tienda
    entries.add(Product(0, "Freidora 1700 W", 159));
    entries.add(Product(1, "Picadora de verduras", 35));
    entries.add(Product(2, "Purificador de aire ", 50));

  }

  void calcularTotal() {
    int newTotal = 0;
    // TODO
    // calcular el valor total de los elementos en el carro de compras
    newTotal = entries.fold(0, (newTotal, element) =>  element.price*element.quantity + newTotal);
    total.value = newTotal;
  }

  agregarProducto(id) {
    logInfo('agregarProducto $id');
    // TODO
    // Encontrar el elemento usando el id, revisar el método firstWhere de la lista
    Product element = entries.firstWhere((element) => element.id == id);
    // después obtener el index de ese elemento, revisar el método indexOf de la lista
    int index = entries.indexOf(element);
    // después hacer el incremento en la cantidad
    element.quantity++;
    // finalmente actualizar entries usando el indice y el elemento actualizado
    entries[index] = element;
    calcularTotal();
  }

  quitarProducto(id) {
    logInfo('quitarProducto $id');
    // TODO
    // similar a agregarProducto
    // validar cuando la cantidad es igual a cero

    Product element = entries.firstWhere((element) => element.id == id);
    int index = entries.indexOf(element);
    (element.quantity == 0)? element.quantity = 0 : element.quantity--;
    entries[index] = element;
    calcularTotal(); 
    
  }
}
