# **counter_7 (Tugas 7)**

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya
Secara sederhana, **stateless widget** merupakan widget yang tidak dapat dirubah atau widget yang tidak pernah berubah. Misal kita memiliki widget yang berisi text "Jumlah apel yang dimakan: 4", maka mulai dari awal program dibuat hingga program dieksekusi, text akan tetap berisi "Jumlah apel yang dimakan: 4".

Sementara itu, **stateful Widget** merupakan widget yang dinamis atau dapat berubah. Bertolakbelakang dengan stateless, stateful widget dapat mengupdate tampilan, merubah warna, menambah jumlah baris, dan lain sebagainya. Jadi, dapat disimpulkan bahwa apapun widget yang dapat berubah maka itulah stateful widget.

<br>

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- `Row` digunakan untuk memposisikan widget-widget lain di dalamnya secara horizontal.
- `Padding` digunakan untuk membuat spasi atau ruang kosong.
- `Visibility` digunakan untuk mengatur visibilitas konten.
- `FloatingActionButton` merupakan widget berupa floating button. Pada tugas ini, terdapat 2 floating button, satu floating button untuk *increment* `counter` dan satunya lagi untuk *decrement* `counter`.
- `Text` digunakan untuk menampilkan tulisan. Pada tugas kali ini, widget text digunakan untuk menampilkan tulisan `GENAP`, `GANJIL`, dan `counter`.

<br>

## Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut
`setState()` berfungsi untuk memberi tahu bahwa terdapat state yang mengalami perubahan nilai. Method build akan di-run ulang, sehingga akan menampilkan aplikasi sesuai dengan perubahan state. Pada tugas ini, variabel yang terdampak adalah variabel `_counter`.

<br>

## Jelaskan perbedaan antara const dengan final
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
- Menambahkan conditional untuk menampilkan teks `GANJIL` berwarna biru dan `GENAP` berwarna merah sesuai dengan state dari `counter`.
- Hubungkan fungsi `_incrementCounter()` pada properti onPressed di button increment dan hubungkan fungsi `_decrementCounter()` pada properti onPressed di button decrement. 
- Menambahkan conditional untuk handle decrement ketika counter kurang dari atau sama dengan 0 dan ketika counter lebih dari 0. 

<br>

# **Tugas 8**

## Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`.
`Navigator.push` merupakan method untuk menambahkan route ke stack route yang di-manage oleh Navigator. Sementara itu, `Navigator.pushReplacement` mengganti route navigator yang sedang dilihat pengguna dengan yang baru dan menambah route tersebut ke stack route navigator.

<br>

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
1. `Text`, memperbagus tulisan yang akan ditampilkan ke pengguna dengan memberikan style
2. `Row` and `Column`, menyusun isi widget secara horizontal dan vertikal
3. `Center`, membuat posisi children ke tengah
4. `Navigator`, mengelola rute pada program menggunakan Stack
5. `Expanded`, memperluas child dari baris dan kolom untuk mengisi ruang yang ada
6. `Drawer`, membuat panel di sisi layar agar user bisa mengganti halaman
7. `Form`, wadah untuk mengelompokkan widget-widget form yang diperlukan
8. `DropdownButton`, widget berupa button yang ketika diklik memunculkan beberapa pilihan. Pada tugas kali ini, digunakan sebagai input pemasukan atau pengeluaran.

<br>

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: `onPressed`)
- onPressed()
- onChanged()
- onSaved()

<br>

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter
Navigator menggunakan struktur data stack. Stack ini digunakan untuk layar sehingga method push menampilkan top of stack dari stack layar tersebut.

<br>

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menambahkan drawer untuk menu counter, form, dan data budget.
2. Menambahkan halaman form dengan input yang bisa diisi string, integer, dropdown, dan button. Input yang telah diisi akan dimasukkan kedalam list untuk disimpan agar bisa ditampilkan pada halaman budget data. Widget-widget pada halaman form disusun berjejer secara vertikal.
3. Menambahkan halaman budget data untuk menunjukkan data yang sudah diinput pengguna. Data-data yang ditampilkan disusun secara vertikal.
4. Membuat sebuah class Budget. Class ini digunakan untuk menyimpan data-data budget yang ditambahkan. Data-data tersebut kemudian disimpan di dalam sebuah static list.

# **Tugas 9**

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Pengambilan data tetap bisa dilakukan tanpa membuat model terlebih dahulu. Namun, apabila tidak membuat model terlebih dahulu bisa saja struktur dari data yang didapat tidak sesuai dengan keinginan kita. Maka dari itu, sebaiknya menentukan model terlebih dahulu agar data JSON yang diambil lebih terstuktur dan mudah digunakan.

<br>

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
1. `Text`, memperbagus tulisan yang akan ditampilkan ke pengguna dengan memberikan style
2. `Row` and `Column`, menyusun isi widget secara horizontal dan vertikal
3. `Center`, membuat posisi children ke tengah
4. `Flexible` agar text menjadi tidak overflow
5. `CheckBox` digunakan sebagai button checkbox untuk mengubah status `watched`
6. `InkWell` dapat memberikan behavior klik pada child widgetnya. Penggunaan widget `inkwell` memungkinkan seluruh bagian dari child nya memiliki behavior klik.
7. `TextButton` digunakan sebagai button back pada halaman detail `MyWatchlist`.

<br>

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter
1. Data difetch dari sebuah API endpoint.
2. Response data kemudian didecode menjadi JSON, lalu dikonversi menjadi sebuah model.
3. Data dalam bentuk model akan di tampilkan pada aplikasi flutter.

<br>

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
1. Menambahkan mywatchlist pada drawer untuk mengakses `my_watchlist`
2. Menambahkan hal-hal yang perlu untuk melakukan fetch data, seperti menambahkan dependency dan permission internet pada android
3. Menambahkan model `MyWatchlist` dengan fields yang sesuai dengan fields object pada Tugas 3 Django.
4. Membuat utils untuk fetch data pada JSON.
5. Memanfaatkan function utils pada `my_watchlist` untuk menampilkan data.
6. Data ditampilkan dalam bentuk cards yang berisi judul film dan checkbox. Kumpulan cards tersebut dapat diklik untuk mengakses page detail.
7. Membuat page detail yang berisi detail dari `MyWatchlist` yang diperoleh dari argumen navigasi dan button back untuk kembali ke `my_watchlist`.