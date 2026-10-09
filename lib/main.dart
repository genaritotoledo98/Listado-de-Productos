
import 'package:flutter/material.dart';

void main() {
  runApp(const MiAplicacion());
}

// 1. DECLARAR LA CLASE PRODUCTO Y SUS TIPOS DE DATOS
class Producto {
  int id;
  String nombre;
  double precio;
  int stock;

  // 2. CONSTRUCTOR DE LA CLASE PRODUCTO
  Producto({
    required this.id,
    required this.nombre,
    required this.precio,
    required this.stock,
  });
}

// 3. APLICACIÓN PRINCIPAL
class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de productos',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const PantallaProductos(),
    );
  }
}

// 4. PANTALLA QUE MUESTRA LOS PRODUCTOS
class PantallaProductos extends StatelessWidget {
  const PantallaProductos({super.key});

  @override
  Widget build(BuildContext context) {

    // 5. CREAR UNA LISTA DE 10 OBJETOS PRODUCTO
    final List<Producto> productos = [
      Producto(id: 1, nombre: 'Laptop', precio: 2500.00, stock: 10),
      Producto(id: 2, nombre: 'Mouse', precio: 45.50, stock: 25),
      Producto(id: 3, nombre: 'Teclado', precio: 89.90, stock: 15),
      Producto(id: 4, nombre: 'Monitor', precio: 750.00, stock: 8),
      Producto(id: 5, nombre: 'Audífonos', precio: 120.00, stock: 20),
      Producto(id: 6, nombre: 'Impresora', precio: 580.00, stock: 6),
      Producto(id: 7, nombre: 'Webcam', precio: 150.00, stock: 12),
      Producto(id: 8, nombre: 'Parlantes', precio: 95.00, stock: 18),
      Producto(id: 9, nombre: 'Memoria USB', precio: 35.00, stock: 30),
      Producto(id: 10, nombre: 'Disco duro', precio: 320.00, stock: 9),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de productos'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      // 6. MAPEO DE LA LISTA AL FRONTEND
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: productos.map((producto) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${producto.id}'),
              ),
              title: Text(
                producto.nombre,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Precio: S/ ${producto.precio.toStringAsFixed(2)}\n'
                'Stock disponible: ${producto.stock}',
              ),
              isThreeLine: true,
              trailing: const Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

