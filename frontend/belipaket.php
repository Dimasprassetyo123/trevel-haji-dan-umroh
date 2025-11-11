<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
session_start();
include 'partials/header.php';
include '../config/connection.php';

// Pastikan user login
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit;
}

$user_id = $_SESSION['user_id'];

// Pastikan ada id paket
if (!isset($_GET['id'])) {
    header("Location: index1.php");
    exit;
}

$id_paket = intval($_GET['id']);

// Ambil data paket
$paket_query = mysqli_query($conn, "SELECT * FROM paket WHERE id = $id_paket");
$paket = mysqli_fetch_assoc($paket_query);

if (!$paket) {
    die("Paket tidak ditemukan.");
}

// Proses submit form
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nama = mysqli_real_escape_string($conn, $_POST['nama']);
    $nik = mysqli_real_escape_string($conn, $_POST['nik']);
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $alamat = mysqli_real_escape_string($conn, $_POST['alamat']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $phone = mysqli_real_escape_string($conn, $_POST['phone']);
    $method = mysqli_real_escape_string($conn, $_POST['method']);

    // Total harga dari paket
    $total_price = $paket['harga'];

    // 1️⃣ Cek apakah jamaah sudah ada
    $check = mysqli_query($conn, "SELECT id FROM jamaah WHERE nik='$nik' AND user_id='$user_id'");
    if(mysqli_num_rows($check) == 0){
        // Insert jamaah baru
        mysqli_query($conn, "INSERT INTO jamaah (user_id, nama, nik, tanggal_lahir, jenis_kelamin, alamat, email, phone)
                             VALUES ('$user_id', '$nama', '$nik', '$tanggal_lahir', '$jenis_kelamin', '$alamat', '$email', '$phone')");
        $jamaah_id = mysqli_insert_id($conn);
    } else {
        $jamaah_id = mysqli_fetch_assoc($check)['id'];
    }

    // 2️⃣ Insert registrasi
    mysqli_query($conn, "INSERT INTO registrations (jamaah_id, paket_id, total_price, paid_amount, status)
                         VALUES ('$jamaah_id', '$id_paket', '$total_price', 0, 'pending')");
    $registration_id = mysqli_insert_id($conn);

    // 3️⃣ Insert payment
    mysqli_query($conn, "INSERT INTO payments (registration_id, amount, method, status)
                         VALUES ('$registration_id', '$total_price', '$method', 'pending')");

    // 4️⃣ Redirect ke halaman sukses
    header("Location: index2.php");
    exit;
}
?>

<body class="beli-page">
<?php include 'partials/navbar.php'; ?>

<main class="main">
  <div class="container mt-5 mb-5">
    <div class="row justify-content-center">
      <div class="col-lg-8">
        <div class="card p-4 shadow-lg border-0">
          <h3 class="mb-4 text-center text-gold">Formulir Pembelian Paket & Pembayaran</h3>

          <div class="alert alert-warning text-center mb-4">
            <strong>Paket yang dipilih:</strong> <?= htmlspecialchars($paket['nama']) ?>
            (<?= htmlspecialchars($paket['durasi_days']) ?> hari, Rp <?= number_format($paket['harga'],0,',','.') ?>)
          </div>

          <form method="POST">
            <h5 class="fw-bold mb-3 text-secondary">Data Jamaah</h5>

            <div class="mb-3">
              <label class="form-label">Nama Lengkap</label>
              <input type="text" name="nama" class="form-control" required>
            </div>

            <div class="mb-3">
              <label class="form-label">NIK</label>
              <input type="text" name="nik" class="form-control" required>
            </div>

            <div class="mb-3">
              <label class="form-label">Tanggal Lahir</label>
              <input type="date" name="tanggal_lahir" class="form-control" required>
            </div>

            <div class="mb-3">
              <label class="form-label">Jenis Kelamin</label>
              <select name="jenis_kelamin" class="form-select" required>
                <option value="">-- Pilih --</option>
                <option value="L">Laki-laki</option>
                <option value="P">Perempuan</option>
              </select>
            </div>

            <div class="mb-3">
              <label class="form-label">Alamat</label>
              <textarea name="alamat" class="form-control" rows="3" required></textarea>
            </div>

            <div class="mb-3">
              <label class="form-label">Email</label>
              <input type="email" name="email" class="form-control" required>
            </div>

            <div class="mb-3">
              <label class="form-label">Nomor HP</label>
              <input type="text" name="phone" class="form-control" required>
            </div>

            <hr class="my-4">
            <h5 class="fw-bold mb-3 text-secondary text-center">Pilih Metode Pembayaran</h5>

            <div class="payment-methods text-center">
              <label class="payment-card">
                <input type="radio" name="method" value="qris" required>
                <div class="card-body">
                  <img src="../storages/pembayaran/a.jpg" alt="QRIS" class="img-fluid mb-2" width="100">
                  <p class="mb-0 text-muted small">Klik untuk lihat kode QR</p>
                </div>
              </label>
            </div>

            <div class="alert alert-info text-center mt-4">
              <strong>Catatan:</strong> Setelah mengisi form dan mengirim, data pembayaran akan diverifikasi oleh admin.
            </div>

            <div class="text-center mt-4">
              <button type="submit" class="btn btn-warning px-4 py-2">Simpan & Kirim Pembayaran</button>
              <a href="detaileindex1.php?id=<?= $id_paket ?>" class="btn btn-outline-secondary px-4 py-2">Kembali</a>
            </div>
          </form>

        </div>
      </div>
    </div>
  </div>
</main>

<?php include 'partials/footer.php'; ?>

<style>
body.beli-page {
  font-family: 'Poppins', sans-serif;
  background-color: #f9f9f9;
  padding-top: 100px;
}

.text-gold {
  background: linear-gradient(90deg, #c19a33, #e4c36f);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.payment-methods {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  gap: 15px;
}

.payment-card {
  border: 2px solid #e0e0e0;
  border-radius: 12px;
  width: 180px;
  cursor: pointer;
  transition: all 0.3s;
  background: #fff;
}

.payment-card:hover {
  border-color: #ffc107;
  transform: translateY(-3px);
}

.payment-card input[type="radio"] {
  display: none;
}

.payment-card input[type="radio"]:checked + .card-body {
  border-color: #ffc107;
  box-shadow: 0 0 10px rgba(255,193,7,0.3);
}

.card-body {
  padding: 15px;
}
</style>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
