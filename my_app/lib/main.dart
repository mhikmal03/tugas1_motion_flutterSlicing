import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              color: const Color(0xFF1C6758),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 28.0),
        children: [
          Column(
            children: [
              Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      'Tanggal Jatuh Tempo',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFAFABAB)
                        ,
                        fontFamily: 'Poppins'
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const <Widget>[
                  Text(
                    'Sabtu, 08 okt 2022 22:41 WIB',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontFamily: 'Poppins'
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BCA Virtual Account',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Poppins'
                        ),
                        
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Transaksi Kredit dan Debit',
                    style: TextStyle(color: Colors.grey[500], fontFamily: 'Poppins'),
                  ),
                ],
              ),
              Container(
                color: Colors.grey[300],
                width: 48,
                height: 48,
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nomor Virtual Account',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[500],
                        fontSize: 16,
                        fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '0918320930817437482',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
              Container(
                color: Colors.grey[300],
                width: 48,
                height: 48,
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Total Tagihan',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Rp 1.772.500',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 246, 103, 93),
                    fontSize: 28,
                    fontFamily: 'Poppins'),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Detail Belanja',
            style: TextStyle(
                fontWeight: FontWeight.w700, color: Colors.black, fontSize: 20, fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Harga Barang',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                      'Rp 1.772.500',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Ongkos Kirim',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                      'Rp 12.000',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Asuransi',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                      'Rp 1.000',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Pesanan akan dikonfirmasi oleh penjual apabila proses pembayaran telah berhasil.',
            style: TextStyle(color: Colors.grey[500], fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF1C6758)),
            onPressed: () {
              // Do something when button is pressed
              print('Clicked');
            },
            child: const Text('Halaman Utama', style: TextStyle(fontFamily: 'Poppins'),),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(side: BorderSide(color: Color(0xFF1c6758), width: 2, ),  ),
            onPressed: () {
              // Do something when button is pressed
              print('Clicked');
            },
            child: const Text('Cek Status Pembayaran',
            style: TextStyle(color: Color(0xFF1c6758), fontFamily: 'Poppins'), ),
          ),
        ],
      ),
    );
  }
}
