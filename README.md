# **counter_7 (Tugas 7)**

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya
---
Secara sederhana, **stateless widget** merupakan widget yang tidak dapat dirubah atau widget yang tidak pernah berubah. Misal kita memiliki widget yang berisi text "Jumlah apel yang dimakan: 4", maka mulai dari awal program dibuat hingga program dieksekusi, text akan tetap berisi "Jumlah apel yang dimakan: 4".

Sementara itu, **stateful Widget** merupakan widget yang dinamis atau dapat berubah. Bertolakbelakang dengan stateless, stateful widget dapat mengupdate tampilan, merubah warna, menambah jumlah baris, dan lain sebagainya. Jadi, dapat disimpulkan bahwa apapun widget yang dapat berubah maka itulah stateful widget.

<br>

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
---
- `Row` digunakan untuk memposisikan widget-widget lain di dalamnya secara horizontal.
- `Padding` digunakan untuk membuat spasi atau ruang kosong.
- `Visibility` digunakan untuk mengatur visibilitas konten.
- `FloatingActionButton` merupakan widget berupa floating button. Pada tugas ini, terdapat 2 floating button, satu floating button untuk *increment* `counter` dan satunya lagi untuk *decrement* `counter`.
- `Text` digunakan untuk menampilkan tulisan. Pada tugas kali ini, widget text digunakan untuk menampilkan tulisan `GENAP`, `GANJIL`, dan `counter`.

<br>

## Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut
---
`setState()` berfungsi untuk memberi tahu bahwa terdapat state yang mengalami perubahan nilai. Method build akan di-run ulang, sehingga akan menampilkan aplikasi sesuai dengan perubahan state. Pada tugas ini, variabel yang terdampak adalah variabel `_counter`.

<br>

## Jelaskan perbedaan antara const dengan final
---
- final dan const merupakan keyword yang dapat digunakan untuk membuat suatu variabel yang bersifat *immutable*.
- Perbedaan utama antara final dan const adalah const mengharuskan variabel dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara eksplisit, sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara eskplisit pada saat kompilasi

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
- Membuat proyek flutter baru dengan menjalankan `flutter create counter_7`
- Mengubah isi `floatingAppButton` menjadi:
```
floatingActionButton: Padding(
  padding: const EdgeInsets.only(left: 30),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Visibility (
        visible: _counter <= 0 ? false: true,
        child: FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ) 
      ),

      FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      )             
    ],
  )
  )
```

- Menambahkan widget `Row` pada `floatingAppButton` untuk membuat baris baru yang akan berisi 2 floating button.
- Membuat fungsi `_incrementCounter()` dan `_decrementCounter()` untuk menambahkan dan mengurangi `counter`.
- Menambahkan conditional untuk menampilkan teks `GANJIL` berwarna biru dan `GENAP` berwarna merah sesuat dengan state dari `counter`.
- Hubungkan fungsi `_incrementCounter()` pada properti onPressed di button increment dan hubungkan fungsi `_decrementCounter()` pada properti onPressed di button decrement. 
- Menambahkan conditional untuk handle decrement ketika counter kurang dari atau sama dengan 0 dan ketika counter lebih dari 0.