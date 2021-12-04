<?php
// panggil koneksi database
include '../praktikum_pwd3/koneksi.php';
?>
<!-- Buat form pencarian -->
<h3>Form Pencarian DATA KHS Dengan PHP </h3>
<form action="" method="get">
    <label>Cari :</label>
    <input type="text" name="cari">
    <input type="submit" value="Cari">
</form>
<?php
// ambil data melalui request GET untuk menampilkan $cari berdasarkan ketikkan dari user
if (isset($_GET['cari'])) {
    $cari = $_GET['cari'];
    echo "<b>Hasil pencarian : " . $cari . "</b>";
}
?>
<!-- Buat tabel dengan ketebalan border 1 -->
<table border="1">
    <tr>
        <th>No</th>
        <th>NIM</th>
        <th>Nama Mahasiswa</th>
        <th>Kode MK</th>
        <th>Nama Matkul</th>
        <th>Nilai</th>
    </tr>
    <?php
    if (isset($_GET['cari'])) {
        // Ambil data cari melalui request GET
        $cari = $_GET['cari'];
        // Ambil data berdasarkan nim melalui ketikkan dari $cari sebelumnya
        $sql = "select * from matakuliah join khs on matakuliah.kode = khs.kodeMK join mahasiswa on mahasiswa.NIM = khs.NIM where khs.NIM like'%" . $cari . "%'";
        // Tampilkan data mealui fungsi PHP mysqli_query untuk menampilkan data tsbt
        $tampil = mysqli_query($con, $sql);
    } else {
        // jika program tidak menangkap atau belum ada ketikkan user maka tampilkan semua data
        $sql = "select * from matakuliah join khs on matakuliah.kode = khs.kodeMK join mahasiswa on mahasiswa.NIM = khs.NIM";
        // tampilkan semua data
        $tampil = mysqli_query($con, $sql);
    }
    $no = 1;
    // buat perulangan untuk menampilkan data
    while ($r = mysqli_fetch_array($tampil)) {
    ?>
        <tr>
            <!-- panggil data yang ingin ditampilkan -->
            <td><?php echo $no++; ?></td>
            <td><?php echo $r['NIM']; ?></td>
            <td><?php echo $r['nama']; ?></td>
            <td><?php echo $r['kodeMK']; ?></td>
            <td><?php echo $r['nama_matkul']; ?></td>
            <td><?php echo $r['nilai']; ?></td>
        </tr>
    <?php } ?>
</table>