import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:malaysia_solat_times/service/esolat.dart';
import 'package:malaysia_solat_times/service/fb.dart';
import 'package:malaysia_solat_times/service/serializers.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  test("SirimTime serializer test", () {
    const jsonString =
        '{"serverTimestamp":1561481937000,"date":"2019-06-26 00:58:57"}';

    final dateVal = serializers.deserializeWith(
        SirimTime.serializer, json.decode(jsonString));
    expect(dateVal.date, "2019-06-26 00:58:57");
  });

  test("esolat zone serializer test", () async {
    const jsonString =
        '[{"state":"Johor","zone":"JHR01","area":"Pulau Aur dan Pulau Pemanggil"},{"state":"Johor","zone":"JHR02","area":"Johor Bharu, Kota Tinggi, Mersing"},{"state":"Johor","zone":"JHR03","area":"Kluang, Pontian"},{"state":"Johor","zone":"JHR04","area":"Batu Pahat, Muar, Segamat, Gemas Johor"},{"state":"Kedah","zone":"KDH01","area":"Kota Setar, Kubang Pasu, Pokok Sena (Daerah Kecil)"},{"state":"Kedah","zone":"KDH02","area":"Kuala Muda, Yan, Pendang"},{"state":"Kedah","zone":"KDH03","area":"Padang Terap, Sik"},{"state":"Kedah","zone":"KDH04","area":"Baling"},{"state":"Kedah","zone":"KDH05","area":"Bandar Baharu, Kulim"},{"state":"Kedah","zone":"KDH06","area":"Langkawi"},{"state":"Kedah","zone":"KDH07","area":"Gunung Jerai"},{"state":"Kelantan","zone":"KTN01","area":"Bachok, Kota Bharu, Machang, Pasir Mas, Pasir Puteh, Tanah Merah, Tumpat, Kuala Krai, Mukim Chiku"},{"state":"Kelantan","zone":"KTN03","area":"Gua Musang (Daerah Galas Dan Bertam), Jeli"},{"state":"Melaka","zone":"MLK01","area":"SELURUH NEGERI MELAKA"},{"state":"Negeri Sembilan","zone":"NGS01","area":"Tampin, Jempol"},{"state":"Negeri Sembilan","zone":"NGS02","area":"Jelebu, Kuala Pilah, Port Dickson, Rembau, Seremban"},{"state":"Pahang","zone":"PHG01","area":"Pulau Tioman"},{"state":"Pahang","zone":"PHG02","area":"Kuantan, Pekan, Rompin, Muadzam Shah"},{"state":"Pahang","zone":"PHG03","area":"Jerantut, Temerloh, Maran, Bera, Chenor, Jengka"},{"state":"Pahang","zone":"PHG04","area":"Bentong, Lipis, Raub"},{"state":"Pahang","zone":"PHG05","area":"Genting Sempah, Janda Baik, Bukit Tinggi"},{"state":"Pahang","zone":"PHG06","area":"Cameron Highlands, Genting Higlands, Bukit Fraser"},{"state":"Perlis","zone":"PLS01","area":"Kangar, Padang Besar, Arau"},{"state":"Pulau Pinang","zone":"PNG01","area":"Seluruh Negeri Pulau Pinang"},{"state":"Perak","zone":"PRK01","area":"Tapah, Slim River, Tanjung Malim"},{"state":"Perak","zone":"PRK02","area":"Kuala Kangsar, Sg. Siput (Daerah Kecil), Ipoh, Batu Gajah, Kampar"},{"state":"Perak","zone":"PRK03","area":"Lenggong, Pengkalan Hulu, Grik"},{"state":"Perak","zone":"PRK04","area":"Temengor, Belum"},{"state":"Perak","zone":"PRK05","area":"Kg Gajah, Teluk Intan, Bagan Datuk, Seri Iskandar, Beruas, Parit, Lumut, Sitiawan, Pulau Pangkor"},{"state":"Perak","zone":"PRK06","area":"Selama, Taiping, Bagan Serai, Parit Buntar"},{"state":"Perak","zone":"PRK07","area":"Bukit Larut"},{"state":"Sabah","zone":"SBH01","area":"Bahagian Sandakan (Timur), Bukit Garam, Semawang, Temanggong, Tambisan, Bandar Sandakan, Sukau"},{"state":"Sabah","zone":"SBH02","area":"Beluran, Telupid, Pinangah, Terusan, Kuamut, Bahagian Sandakan (Barat)"},{"state":"Sabah","zone":"SBH03","area":"Lahad Datu, Silabukan, Kunak, Sahabat, Semporna, Tungku, Bahagian Tawau  (Timur)"},{"state":"Sabah","zone":"SBH04","area":"Bandar Tawau, Balong, Merotai, Kalabakan, Bahagian Tawau (Barat)"},{"state":"Sabah","zone":"SBH05","area":"Kudat, Kota Marudu, Pitas, Pulau Banggi, Bahagian Kudat"},{"state":"Sabah","zone":"SBH06","area":"Gunung Kinabalu"},{"state":"Sabah","zone":"SBH07","area":"Kota Kinabalu, Ranau, Kota Belud, Tuaran, Penampang, Papar, Putatan, Bahagian Pantai Barat"},{"state":"Sabah","zone":"SBH08","area":"Pensiangan, Keningau, Tambunan, Nabawan, Bahagian Pendalaman (Atas)"},{"state":"Sabah","zone":"SBH09","area":"Beaufort, Kuala Penyu, Sipitang, Tenom, Long Pa Sia, Membakut, Weston, Bahagian Pendalaman (Bawah)"},{"state":"Selangor","zone":"SGR01","area":"Gombak, Petaling, Sepang, Hulu Langat, Hulu Selangor, Rawang, S.Alam"},{"state":"Selangor","zone":"SGR02","area":"Kuala Selangor, Sabak Bernam"},{"state":"Selangor","zone":"SGR03","area":"Klang, Kuala Langat"},{"state":"Sarawak","zone":"SWK01","area":"Limbang, Lawas, Sundar, Trusan"},{"state":"Sarawak","zone":"SWK02","area":"Miri, Niah, Bekenu, Sibuti, Marudi"},{"state":"Sarawak","zone":"SWK03","area":"Pandan, Belaga, Suai, Tatau, Sebauh, Bintulu"},{"state":"Sarawak","zone":"SWK04","area":"Sibu, Mukah, Dalat, Song, Igan, Oya, Balingian, Kanowit, Kapit"},{"state":"Sarawak","zone":"SWK05","area":"Sarikei, Matu, Julau, Rajang, Daro, Bintangor, Belawai"},{"state":"Sarawak","zone":"SWK06","area":"Lubok Antu, Sri Aman, Roban, Debak, Kabong, Lingga, Engkelili, Betong, Spaoh, Pusa, Saratok"},{"state":"Sarawak","zone":"SWK07","area":"Serian, Simunjan, Samarahan, Sebuyau, Meludam"},{"state":"Sarawak","zone":"SWK08","area":"Kuching, Bau, Lundu, Sematan"},{"state":"Sarawak","zone":"SWK09","area":"Zon Khas (Kampung Patarikan)"},{"state":"Terengganu","zone":"TRG01","area":"Kuala Terengganu, Marang, Kuala Nerus"},{"state":"Terengganu","zone":"TRG02","area":"Besut, Setiu"},{"state":"Terengganu","zone":"TRG03","area":"Hulu Terengganu"},{"state":"Terengganu","zone":"TRG04","area":"Dungun, Kemaman"},{"state":"Wilayah Persekutuan","zone":"WLY01","area":"Kuala Lumpur, Putrajaya"},{"state":"Wilayah Persekutuan","zone":"WLY02","area":"Labuan"}]';

    var bodyResponse = await rootBundle.loadString('assets/zone.json');
    BuiltList<EsolatZone> result = deserializeListOf<EsolatZone>(bodyResponse);

    expect(result[0].zone, "JHR01");
  });

  test("FBlocation serializer test", () {
    const jsonString = """
        {
          "data": [
              {
                  "location": {
                      "city": "Putrajaya",
                      "country": "Malaysia",
                      "latitude": 2.9360666666667,
                      "longitude": 101.68905,
                      "street": "Putrajaya",
                      "zip": "62000"
                  },
                  "id": "537600909602621"
              },
              {
                  "location": {
                      "city": "Medan",
                      "country": "Indonesia",
                      "latitude": 3.575111,
                      "longitude": 98.687321
                  },
                  "id": "995080857206651"
              }
          ],
          "paging": {
              "cursors": {
                  "after": "MQZDZD"
              },
              "next": "https://graph.facebook.com/v3.3/search?access_token=2423517067935205%7C4GGBZBGOqokwlvHiDcjRxOadMbc&fields=location&q=mosque&type=place&limit=2&after=MQZDZD"
          }
      } 
        """;

    FbSearchPlaceResponse result = serializers.deserialize(
      json.decode(jsonString),
      specifiedType: FullType(
        FbSearchPlaceResponse,
        [
          FullType(FbLocationResponse),
        ],
      ),
    );

//    final dateVal = serializers.deserializeWith(
//        SirimTime.serializer, json.decode(jsonString));
    expect(result.data.first.location.city, "Putrajaya");
  });
}
