const database = require("../configs/database");
const mysql = require("mysql");
const pool = mysql.createPool(database);

pool.on("error", (err) => {
  console.error(err);
});

module.exports = {
  // ambil semua data kunjungan
  getData(req, res) {
    pool.getConnection(function (err, connection) {
      if (err) throw err;
      console.log("Connected as ID " + connection.threadId);

      connection.query(
        `
                SELECT t_kunjungan.id AS 'id', kategori_kunjungan_id, waktu_masuk, tujuan, pic_kunjungan, pic_unit_kerja,
                unit_kerja, tref_kategori_kunjungan.name AS 'nama_kategori_kunjungan', approval, tref_sites.nama AS 'nama_sites' 
                FROM t_kunjungan 
                JOIN tref_kategori_kunjungan ON t_kunjungan.kategori_kunjungan_id = tref_kategori_kunjungan.id
                JOIN tref_sites ON t_kunjungan.sites_id = tref_sites.id
                WHERE is_deleted = 0
                `,
        function (error, results) {
          if (error) throw error;
          res.send({
            success: true,
            message: "Berhasil ambil data.",
            data: results,
          });
        }
      );
      connection.release();
    });
  },
  // ambil detail kunjungan by id
  getDetailByID(req, res) {
    let id = req.params.id;
    pool.getConnection(function (err, connection) {
      if (err) throw err;
      console.log("Connected as ID " + connection.threadId);

      connection.query(
        `
        SELECT t_kunjungan.id AS 'id', waktu_masuk, waktu_keluar, tujuan, ringkasan, pic_kunjungan, 
        unit_kerja, is_itb, tref_sites.nama AS 'nama_sites', pic_unit_kerja,
        tref_kategori_kunjungan.name AS 'nama_kategori_kunjungan', nip, no_kontak, email,
        tref_aktivitas_kunjungan.name AS 'nama_aktivitas_kunjungan'
        FROM t_kunjungan
        JOIN tref_kategori_kunjungan ON t_kunjungan.kategori_kunjungan_id = tref_kategori_kunjungan.id
        JOIN tref_sites ON t_kunjungan.sites_id = tref_sites.id
        JOIN tref_aktivitas_kunjungan ON t_kunjungan.aktivitas_kunjungan_id = tref_aktivitas_kunjungan.id
        WHERE t_kunjungan.id = ?;
        `,
        [id],
        function (error, results) {
          if (error) throw error;
          if (results == "") {
            res.send("Data tidak ditemukan").json;
          } else {
            res.send({
              success: true,
              message: "Berhasil ambil data.",
              data: results,
            });
          }
        }
      );
      connection.release();
    });
  },
  //add data kunjungan
  addDataKunjungan(req, res) {
    let data = {
      waktu_masuk: req.body.waktu_masuk,
      tujuan: req.body.tujuan,
      ringkasan: req.body.ringkasan,
      pic_kunjungan: req.body.pic_kunjungan,
      unit_kerja: req.body.unit_kerja,
      is_itb: req.body.is_itb,
      userinput: req.body.userinput,
      sites_id: req.body.sites_id,
      pic_unit_kerja: req.body.pic_unit_kerja,
      kategori_kunjungan_id: req.body.kategori_kunjungan_id,
      nip: req.body.nip,
      no_kontak: req.body.no_kontak,
      email: req.body.email,
      aktivitas_kunjungan_id: req.body.aktivitas_kunjungan_id,
    };
    pool.getConnection(function (err, connection) {
      if (err) throw err;
      connection.query(
        `
            INSERT INTO t_kunjungan SET ?;
            `,
        [data],
        function (error, results) {
          if (error) throw error;
          res.send({
            success: true,
            message: "Berhasil tambah data.",
          });
        }
      );
      connection.release();
    });
  },
  //edit data kunjungan
  editDataKunjungan(req, res) {
    let data = {
      id: req.body.id,
      waktu_masuk: req.body.waktu_masuk,
      tujuan: req.body.tujuan,
      ringkasan: req.body.ringkasan,
      pic_kunjungan: req.body.pic_kunjungan,
      unit_kerja: req.body.unit_kerja,
      is_itb: req.body.is_itb,
      userinput: req.body.userinput,
      sites_id: req.body.sites_id,
      pic_unit_kerja: req.body.pic_unit_kerja,
      kategori_kunjungan_id: req.body.kategori_kunjungan_id,
      nip: req.body.nip,
      no_kontak: req.body.no_kontak,
      email: req.body.email,
      aktivitas_kunjungan_id: req.body.aktivitas_kunjungan_id,
    };
    let id = req.body.id;
    pool.getConnection(function (err, connection) {
      if (err) throw err;
      connection.query(
        `
            UPDATE t_kunjungan SET ? WHERE id = ?;
            `,
        [data, id],
        function (error, results) {
          if (error) throw error;
          res.send({
            success: true,
            message: "Berhasil edit data.",
          });
        }
      );
      connection.release();
    });
  },
  // delete data kunjungan
  deleteDataKunjungan(req, res) {
    let id = req.body.id;
    pool.getConnection(function (err, connection) {
      if (err) throw err;
      connection.query(
        `
            UPDATE t_kunjungan SET is_deleted = 1 WHERE id = ?;
            `,
        [id],
        function (error, results) {
          if (error) throw error;
          res.send({
            success: true,
            message: "Berhasil hapus data.",
          });
        }
      );
      connection.release();
    });
  },
};
