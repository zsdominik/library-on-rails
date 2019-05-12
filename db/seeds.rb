
authors = Author.create([
    {name: 'Borsa Brown'},
    {name: 'Grecsó Krisztián'},
    {name: 'Jojo Moyes'},
    {name: 'Michelle Obama'},
    {name: 'Anna Todd'},
    {name: 'Rupi Kaur'},
    {name: 'V. Kulcsár Ildikó'},
    {name: 'Bartos Erika'},
    {name: 'Spiró György'}
])

User.create([
                {username: 'user1', password_digest: BCrypt::Password.create('user1'), email: 'user1@gmail.com'},
                {username: 'user2', password_digest: BCrypt::Password.create('user2'), email: 'user2@gmail.com'},
                {username: 'user3', password_digest: BCrypt::Password.create('user3'), email: 'user3@gmail.com'}
            ])

books = Book.create([
    {title: 'Gyalázat és szenvedély - Második rész', isbn: '9786155763922', description: 'Dorothy Millert, a fiatal amish lányt vétkei miatt Pennsylvaniába száműzik, egy sokkal szigorúbb közösségbe. A lázadó lány nehezen viseli a szabályokat, és nem sejtheti, hogy e helyen maga az ördög és a pokol lakozik.
Mindeközben Gregory Hamilton, az üzletember is szembetalálja magát démonjaival, mégis azon igyekszik, hogy visszahozza a megszokott környezetébe a lányt, akinek összekuszálta az életét.
Samuel Zook, az amish fiú kihágásai miatt végleges kirekesztésre számíthat. Próbál hű maradni az ősei értékrendjéhez, de rá kell jönnie, túl önfejű és heves.
Vajon meddig képesek az emberek álarc mögé bújtatni valós énjüket? Meddig tartható féken az ösztön és a vágy? Legyőzheti a józan ész a szívet és a sóvárgást? Mindhármuknak rá kell döbbenniük, hogy reménytelen háborúba kezdtek önmagukkal, mert "legyőzhetetlen a szenvedély, akár a sír..."
Borsa Brown különleges, szókimondó, ugyanakkor érzelmes és szenvedélyes, erotikában bővelkedő írásai hamar az olvasók kedvenceivé váltak. Új sorozatában, a Gyalázat-trilógiában ezúttal is egy elzárt közösségbe, az amishok világába enged betekintést. Az első kötet, a Gyalázat és hit után a Gyalázat és szenvedély című részben kiderül, hogyan folytatódik Dorothy, Gregory és Samuel története.', author: authors[0]},
    {title: 'Vera', isbn: '9789631438291', description: 'Szeged, 1980. Vera az általános iskola negyedik osztályába jár, jó tanuló, jó sportoló. A papa a honvédségen dolgozik, a mama meg minden nap várja őt tanítás után. De Vera biztonságosnak hitt élete pár hét leforgása alatt megváltozik. Az egyik eseményből következik a másik, mintha dominók dőlnének egymás után, mégsem lehet tudni, vajon mi indítja el az események láncolatát. Mi fordítja szembe végzetesen az addigi legjobb barátnőjével? Miért olyan jó és ugyanakkor ijesztő egyre több időt tölteni Józeffel, az új lengyel fiúval? És miért vannak a felnőtteknek titkaik, ha Verától azt várják el, hogy ő mindig csak az igazat mondja?

Grecsó Krisztián új regénye arról szól, hogy a családi titkokat felfedni nemcsak tudás, de bátorság kérdése is. Vera felismeri: vannak helyzetek, amikor idő előtt kell felnőttként viselkednünk. És hogy fel lehet nőni a feladathoz.', author: authors[1]},
    {title: 'Mióta megszerettelek', isbn: '9789632666617', description: 'A trilógia világszerte milliók által várt újabb kötetében tovább folytatódik a hatalmas sikert aratott Mielőtt megismertelek című regényben bemutatott Lou Clark története.
Lou sok mindent tud. Pontosan tudja például, hogy milyen nagy a távolság új New York-i otthona és londoni barátja, Sam lakása között. Azt is tudja, hogy a főnöke jó ember, ahogy azt is, hogy a felesége eltitkol valamit a férfi elől.
Azt viszont nem tudhatja, hogy miközben beleveti magát New York társasági életébe, hamarosan megismerkedik valakivel, aki jókora felfordulást okoz a lelkében. Merthogy Josh elképesztő módon emlékezteti valakire, akire rendkívül fájdalmas visszaemlékeznie.
Azt sem tudja Lou, hogy mihez kezdjen a kialakult helyzetben - csupán azt tudja, hogy bármilyen döntés hoz, az mindent visszavonhatatlanul megváltoztat az életében. És hogy mindenképp követnie kell a szíve szavát, akárhová is vezesse', author: authors[2]},
    {title: 'Így lettem', isbn: '9789633045725', description: 'Az Egyesült Államok egykori first ladyjének személyes, átütő erejű és inspiráló önéletrajza

Michelle Obama, jelentős ügyekkel fémjelzett és eredményes eddigi élete során korunk egyik ikonikus és lenyűgöző alakjává vált. Az Amerikai Egyesült Államok első afroamerikai first ladyjének nagy szerepe volt abban, hogy a Fehér Házban soha nem látott nyitottság és elfogadó közeg alakuljon ki.

Ráadásul a nők erőteljes támogatójává vált szerte a világon. A családok egészségesebb és aktívabb életének szószólójaként hatalmas változásokat köszönhetünk neki. A férje mellett állt, miközben Barack Obama az ország történetének néhány leggyötrelmesebb pillanatában helytállt elnökként. Közben megtanított nekünk egy-két tánclépést, nagyot alakított a Carpool Karaokéban, és két lányát a könyörtelen rivaldafény ellenére józan szemlélettel nevelte.

Mélyről jövő vallomásokban és magukkal ragadó történetekben bővelkedő önéletrajzi könyvében Michelle Obama bepillantást enged élete kulcsfontosságú pillanataiba - a Chicago déli részén töltött gyerekkorától vezetői pozícióba kerüléséig. Beszámol többek között arról is, hogyan sikerült egyensúlyt teremtenie karrierje és az anyaszerep között, és hogy milyen volt az élete a Fehér Házban. Kíméletlen őszinteséggel és szellemes éleslátással ír az élet minden területén megélt győzelmeiről és kudarcairól, egész történetét elénk tárja - saját szavaival és saját szemszögéből. A Becoming lapjain szeretetteljes, bölcs, de kendőzetlen szókimondásának köszönhetően egy mélyen érző, kiváló teljesítményeivel a várakozásokat folyton felülmúló nő története bontakozik ki előttünk, aki épp ezért másokat is arra ösztönöz majd, hogy azzá váljanak, akivé szeretnének.', author: authors[3]},
    {title: 'Mielőtt', isbn: '9789634068181', description: 'A Miután-sorozat ötödik része

Anna Todd fanfiction regényét már egymilliárdan olvasták online, és világszerte elbűvölte a rajongókat.

A Mielőttben megismerhetjük Hardin Scott Tessa előtti életét, megtudhatjuk, mi történt a Miutánt követően, és még több bepillantást nyerhetünk a viharos #Hessa románcba.

A Cosmopolitan ,,generációja legkiemelkedőbb irodalmi jelenségé"-nek nevezte Anna Toddot. A That s Normal internetes portál pedig egyenesen ezt írja: ,,Hardin és Tessa a modern idők Mr Darcyja és Lizzy Bennetje."
Adjuk át magunkat az igaz szerelem magával ragadó, fergeteges erejének.

MIELŐTT Hardin találkozott Tessával, olyan volt, mint egy tomboló vihar.
MIKÖZBEN az első pillanatokat töltötték együtt, Hardin rájött, hogy meg kell tartania magának a lányt, mert az élete múlik rajta.
MIUTÁN egymáséi lettek, a világ már sosem lesz olyan, mint volt.

Hardin és Tessa drámai szerelme egy örvény, mely mindenkit magával rántott, aki körülöttük volt. Most ezek a szereplők is hangot kapnak, és újra felbukkannak az eredeti MIUTÁN-regények eseményei előtt, közben és azokat követően. A regényben megismerjük Hardin beszámolóját az első találkozásokról Tessával, és ez meg fogja változtatni az eddigi véleményünket a komor fiúról és az angyalról, aki szereti őt.', author: authors[4]},
    {title: 'Tej és méz', isbn: '9789634574927', description: 'ez itt egy utazás
verseken át az életben maradás felé
ez itt huszonegy év
vér verejték és könny
ez itt a szívem
a kezedben
ez itt
a fájdalom
a szeretet
a törés
a gyógyulás
- rupi kaur

A tej és méz versek és prózai írások gyűjteménye a túlélésről, az erőszak, az abúzus, a szerelem, a veszteség, a nőiség megéléséről. A könyv négy fejezetre oszlik, mindegyik más célt szolgál, másféle fájdalommal foglalkozik, másféle sebeket gyógyít. A tej és méz az élet legridegebb pillanatain vezeti át az olvasót, mégis mindenben talál valami melegséget, mert a melegség ott van mindenben, csak keresni kell.', author: authors[5]},
    {title: 'Anyák, nagyik és más szent őrültek - Szeretnélek(pont)jaj!', isbn: '9789633244678', description: 'Ildi megint beletrafál: ahogy már nem először, legújabb könyvében is meg tudja ragadni a hétköznapiban a különlegest. Hiszen miközben folydogál - mit folydogál, száguld, rohan! - az életünk, zajlik körülöttünk a világ is. Sírunk, nevetünk, küszködünk, örülünk, egyszer csak felpillantunk a munkából, a háztartásból, a gyereknevelésből, a monoton mindennapokból -, és kiderül, a gyerekek felnőttek, az unokák iskolába mennek, férjünk halántéka deresedik - és még mindig mi, nők oldjuk meg a legkacifántosabb helyzeteket is a rajongva szeretett családunkban. A kulcsszó a tizenkettedik V. Kulcsár-könyvben is a szeretet - talán emiatt van, hogy mosolygunk ugyan, de szinte mindegyik történet végére elfutja a szemünket a könny.
Erdélyi Z. Ágnes', author: authors[6]},
    {title: 'Pest fényei - Brúnó Budapesten 4.', isbn: '9789634862185', description: 'Tudod-e, hogy a Duna partja régen a mai Pozsonyi úton húzódott? Mit jelent a Sétáló Naprendszer, és kiknek a szobrát láthatjuk a Hősök terén? Ismered-e a Füvészkert vagy a Keleti pályaudvar történetét? Jártál-e már az Állatkertben és a Vasúttörténeti Parkban?
Bartos Erika, a Bogyó és Babóca sorozat írója és rajzolója, akinek munkásságát számos hazai és nemzetközi díjjal ismerték el, most a fővárost mutatja be a legkisebbeknek. Az építészmérnök végzettségű meseíró egy kedves történet és részletgazdag rajzok segítségével kalauzolja végig az óvodáskorú olvasót Budapest nevezetes helyszínein', author: authors[7]},
    {title: 'Egyéni javaslat', isbn: '9789631438369', description: ',Nemrég egy alföldi kisvárosba hívtak író-olvasó találkozóra. Összejöttek vagy negyvenen, felolvastam néhány rövid írást, és beszélgettünk jó két órát. Két idős hölgy ült épp velem szemben, mind a ketten szigorúan néztek. Egyikük azt mondta: - Humorosat írjon! Azt szeretjük, a humorosat! Maga tud humorosat írni, azt írjon nekünk! Kérésüket...', author: authors[8]},
])

books[0].image.attach(io: File.open("#{Rails.root}/app/assets/images/0.jpg"), filename: '0.jpg', content_type: 'image/jpg')
books[1].image.attach(io: File.open("#{Rails.root}/app/assets/images/1.jpg"), filename: '1.jpg', content_type: 'image/jpg')
books[2].image.attach(io: File.open("#{Rails.root}/app/assets/images/2.jpg"), filename: '2.jpg', content_type: 'image/jpg')
books[3].image.attach(io: File.open("#{Rails.root}/app/assets/images/3.jpg"), filename: '3.jpg', content_type: 'image/jpg')
books[4].image.attach(io: File.open("#{Rails.root}/app/assets/images/4.jpg"), filename: '4.jpg', content_type: 'image/jpg')
books[5].image.attach(io: File.open("#{Rails.root}/app/assets/images/5.jpg"), filename: '5.jpg', content_type: 'image/jpg')
books[6].image.attach(io: File.open("#{Rails.root}/app/assets/images/6.jpg"), filename: '6.jpg', content_type: 'image/jpg')
books[7].image.attach(io: File.open("#{Rails.root}/app/assets/images/7.jpg"), filename: '7.jpg', content_type: 'image/jpg')
books[8].image.attach(io: File.open("#{Rails.root}/app/assets/images/8.jpg"), filename: '8.jpg', content_type: 'image/jpg')

publishers = Publisher.create([
    {name: 'Magazin Kiado'},
    {name: 'Nyomdaipari Kiado'},
    {name: 'Lorem Ipsum Kiado'}
                 ])

magazines = Magazine.create([
    {name: 'Meglepetés konyha & Rejtvény', publisher: publishers[0], description: 'A különszám azokhoz az olvasókhoz szól, akik kimondottan a gasztronómia és a rejtvényfejtés iránt érdeklődnek. Csupa élvezet! Mert mi más is lehetne az alkalmanként kínált 50-60 idényjellegű recept és a 25-35 fejtenivaló.'},
    {name: 'National Geograpic', publisher: publishers[2], description: 'A földrajztudomány, az állat- és növényvilág, a természeti környezet és a társadalomtörténet legelterjedtebb és legigényesebb ismeretterjesztő lapja. 37 nyelven, összesen 60 millióan olvassák világszerte. Aki előfizet rá, a National Geographic Társaság tagjává válik. '},
    {name: 'Nők lapja', publisher: publishers[2], description: 'Közel 70 éve kíséri végig nők egymást követő nemzedékeinek életét, és így nagymamáról anyára, anyáról lányra száll olvasásának hagyománya. Töretlen sikerének titka a színvonalas tartalom, a megértő, empatikus megközelítés és olvasóinak hűséges kötődése a laphoz. '},
    {name: 'Stroy', publisher: publishers[0], description: 'A legnépszerűbb sztármagazin izgalmas, sok színes fotóval tarkított írásaiból mindent megtudhatunk a hazai és a nemzetközi sztárvilág legfontosabb eseményeiről. '},
    {name: 'Well&Fit', publisher: publishers[1], description: 'Új név, még több inspiráció! Egészség, mozgás, lélek és kapcsolatok, ezotéria, táplálkozás, szépség és horoszkóp.'},
    {name: 'Színes RTV', publisher: publishers[0], description: 'Engedje el magát, kényelmesen dőljön hátra, és nyissa ki az ország legolvasottabb műsorújságát! Mindent megtalál benne: pontos és részletes műsorinformációt, több mint 300 programajánlót és színes, érdekes cikkeket. '},
    {name: 'Meglepetés', publisher: publishers[1], description: 'Könnyed, szórakoztató magazin, amely jól ismeri a nők álmait, vágyait, de a hétköznapjait is. A lap főszereplői maguk az olvasók, hiszen minden – élettörténetek, egészség, divat, ételreceptek, sztárhírek, keresztrejtvények stb. – róluk és nekik szól.'},
    {name: 'Cosmopolitan', publisher: publishers[1], description: 'A világ első számú, fiatal nőknek szóló magazinja, amely nemcsak a Miénk a világ! életérzést nyújtja, de folyamatosan tájékoztat a legdögösebb cuccokról, a legújabb szépségtippekről, a legmenőbb sztárokról, a leghatékonyabb pasifogó módszerekről.'}
                            ])

magazines[0].image.attach(io: File.open("#{Rails.root}/app/assets/images/m0.jpg"), filename: 'm0.jpg', content_type: 'image/jpg')
magazines[1].image.attach(io: File.open("#{Rails.root}/app/assets/images/m1.jpg"), filename: 'm1.jpg', content_type: 'image/jpg')
magazines[2].image.attach(io: File.open("#{Rails.root}/app/assets/images/m2.jpg"), filename: 'm2.jpg', content_type: 'image/jpg')
magazines[3].image.attach(io: File.open("#{Rails.root}/app/assets/images/m3.jpg"), filename: 'm3.jpg', content_type: 'image/jpg')
magazines[4].image.attach(io: File.open("#{Rails.root}/app/assets/images/m4.jpg"), filename: 'm4.jpg', content_type: 'image/jpg')
magazines[5].image.attach(io: File.open("#{Rails.root}/app/assets/images/m5.jpg"), filename: 'm5.jpg', content_type: 'image/jpg')
magazines[6].image.attach(io: File.open("#{Rails.root}/app/assets/images/m6.jpg"), filename: 'm6.jpg', content_type: 'image/jpg')
magazines[7].image.attach(io: File.open("#{Rails.root}/app/assets/images/m7.jpg"), filename: 'm7.jpg', content_type: 'image/jpg')



