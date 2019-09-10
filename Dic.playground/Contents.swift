import UIKit

var str = "Hello, playground"

 // Dictionary kelime : anlam = key:value

var kullanıcıBilgileri : [String:Any] = ["Adı":"Tuğba", "Soyadı":"Toygar"]
kullanıcıBilgileri.count
kullanıcıBilgileri.updateValue("TOYGAR", forKey: "Soyadı")

let yeniSehirler = ["Adana":"0","Ankara":"1","Bursa":"2"]
let sayıyaGore = Dictionary(grouping: yeniSehirler.keys){$0.count}
let sonDurum = Dictionary(grouping: yeniSehirler.keys){$0.first!}
sonDurum
sayıyaGore



/* Mülakat Sorusu;
 
 Elinizde bir cüme ya da bir metin olduğunu varsayalım. Bazı kelimelerin tekrar ettiğini düşünün. Bu cüme içinde kelimelerin geçme sayısını bulunuz.
 */


var metin = " Elinizde bir cümle ya da bir metin olduğunu varsayalım Bazı kelimelerin tekrar ettiğini düşünün Bu cüme içinde kelimelerin geçme sayısını bulunuz"


var kelimeler  = metin.split(separator: " ")  // Dizi haline geldi.

kelimeler[0]  // dizi kontrol


//let isimler= ["tugba","tayfun","burak","sena","tugba","burak","tugba","tayfun","tugba","sena"]


var sayac : [String : Int] = [:]
for kelime in kelimeler{
    sayac [String(kelime)] = (sayac[String(kelime)] ?? 0)  + 1}
print(sayac)
for(key,value) in sayac{
    print("-\(key)- kelimesi \(value) adet bulunur.")
    
}


