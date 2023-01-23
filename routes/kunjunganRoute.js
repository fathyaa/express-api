const express = require("express");
const router = express.Router();
const { kunjungan } = require("../controllers");

// ambil semua data kunjungan
router.get("/kunjungan", kunjungan.getData);
// ambil detail kunjungan by ID
router.get("/kunjungan/:id", kunjungan.getDetailByID);
// add data kunjungan
router.post("/kunjungan/add", kunjungan.addDataKunjungan);
// edit data kunjungan
router.put("/kunjungan/edit", kunjungan.editDataKunjungan);
// soft delete data kunjungan
router.post("/kunjungan/delete", kunjungan.deleteDataKunjungan);

module.exports = router;
