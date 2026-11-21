void main() {
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"]
  ];

  for (int i = 0; i < input.length; i++) {
    var dataUser = input[i];
    
    print("Nomor ID: ${dataUser[0]}");
    print("Nama Lengkap: ${dataUser[1]}");
    print("TTL: ${dataUser[2]} ${dataUser[3]}");
    print("Hobi: ${dataUser[4]}");
    
    print(""); 
  }
}