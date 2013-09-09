#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(nickname:'DragonSlayer', email:'alex.gruenkern@email.com', password:'temptemp', password_confirmation:'temptemp')
u2 = User.create(nickname:'BautifulElf', email:'freia.mueller@email.com', password:'temptemp', password_confirmation:'temptemp')
u3 = User.create(nickname:'SteamGnome', email:'jonathan.weber@email.com', password:'temptemp', password_confirmation:'temptemp')
u4 = User.create(nickname:'FluffyUnicorn', email:'katja.berg@email.com', password:'temptemp', password_confirmation:'temptemp')
u5 = User.create(nickname:'CruelOrk', email:'simon.schneeberg@email.com', password:'temptemp', password_confirmation:'temptemp')
u6 = User.create(nickname:'NormalHuman', email:'katharina.fuchs@email.com', password:'temptemp', password_confirmation:'temptemp')
u7 = User.create(nickname:'HighlandQueen', email:'merida.princess@email.com', password:'temptemp', password_confirmation:'temptemp')
u8 = User.create(nickname:'SithLord', email:'eneken.skywalker@email.com', password:'temptemp', password_confirmation:'temptemp')
u9 = User.create(nickname:'BarkingWolf', email:'karsten.wald@email.com', password:'temptemp', password_confirmation:'temptemp')
u10 = User.create(nickname:'TinkerBell', email:'martin.luebeck@email.com', password:'temptemp', password_confirmation:'temptemp')

gs1 = GameStyle.create(title:'Action Lastig')
gs2 = GameStyle.create(title:'Rollenspiel Lastig')
gs3 = GameStyle.create(title:'Hack\'n Slay Lastig')

u1.create_profile(first_name:'Alex', last_name:'Grünkern', city: 'Hamburg', plz:'22047', age:'30', address:'Gorch Fock Wall 3', bio:'Candy wafer tart jelly cotton candy caramels halvah sugar plum. Tart jujubes dragée dragée. Danish lollipop bonbon sweet roll caramels bonbon sweet croissant sweet roll. ')
u2.create_profile(first_name:'Freia', last_name:'Müller', city: 'München', plz:'13337', age:'40', address:'Gurkenweg 69', bio:'Candy wafer tart jelly cotton candy caramels halvah sugar plum. Tart jujubes dragée dragée. Danish lollipop bonbon sweet roll caramels bonbon sweet croissant sweet roll. ')
u3.create_profile(first_name:'Jonathan', last_name:'Weber', city: 'Bremen', plz:'22123', age:'25', address:'Zwiebelstraße 11', bio:'Candy wafer tart jelly cotton candy caramels halvah sugar plum. Tart jujubes dragée dragée. Danish lollipop bonbon sweet roll caramels bonbon sweet croissant sweet roll. ')
u4.create_profile(first_name:'Katja', last_name:'Berg', city: 'Berlin', plz:'22121', age:'19', address:'Tomatenallee 15', bio:'Candy wafer tart jelly cotton candy caramels halvah sugar plum. Tart jujubes dragée dragée. Danish lollipop bonbon sweet roll caramels bonbon sweet croissant sweet roll. ')
u5.create_profile(first_name:'Simon', last_name:'Schneeberg', city: 'Hamburg', plz:'22123', age:'18', address:'Gurkenweg 69', bio:'Candy wafer tart jelly cotton candy caramels halvah sugar plum. Tart jujubes dragée dragée. Danish lollipop bonbon sweet roll caramels bonbon sweet croissant sweet roll. ')
u6.create_profile(first_name:'Katharina', last_name:'Fuchs', city: 'Bremen', plz:'22222', age:'36', address:'Bananenstraße 13', bio:'Candy wafer tart jelly cotton candy caramels halvah sugar plum. Tart jujubes dragée dragée. Danish lollipop bonbon sweet roll caramels bonbon sweet croissant sweet roll. ')
u7.create_profile(first_name:'Merida', last_name:'McGregor', city: 'München', plz:'22124', age:'15', address:'Bananenstraße 6', bio:'Candy wafer tart jelly cotton candy caramels halvah sugar plum. Tart jujubes dragée dragée. Danish lollipop bonbon sweet roll caramels bonbon sweet croissant sweet roll. ')
u8.create_profile(first_name:'Eneken', last_name:'Skywalker', city: 'Space', plz:'22124', age:'36', address:'Bananenstraße 6', bio:'Candy wafer tart jelly cotton candy caramels halvah sugar plum. Tart jujubes dragée dragée. Danish lollipop bonbon sweet roll caramels bonbon sweet croissant sweet roll. ')
u9.create_profile(first_name:'Karsten', last_name:'Wald', city: 'München', plz:'22124', age:'29', address:'Bananenstraße 6', bio:'Candy wafer tart jelly cotton candy caramels halvah sugar plum. Tart jujubes dragée dragée. Danish lollipop bonbon sweet roll caramels bonbon sweet croissant sweet roll. ')
u10.create_profile(first_name:'Martin', last_name:'Lübeck', city: 'Stuttgart', plz:'22124', age:'24', address:'Bananenstraße 6', bio:'Candy wafer tart jelly cotton candy caramels halvah sugar plum. Tart jujubes dragée dragée. Danish lollipop bonbon sweet roll caramels bonbon sweet croissant sweet roll. ')

group1 = u1.profile.own_groups.create(title:'Dragon Warriors', campagne:'Menzobberanzan', description:'Menzoberranzan die Stadt der Spinnen, ist der Archetyp der Drow-Städte. Sie wird von den Klerikerinnen Lloths mit eiserner Hand regiert und ist in zahlreiche Drow Häuser gespalten, welche um die Macht konkurrieren. Verrat und Attentate sind hier an der Tagesordnung, Grausamkeit und eine misstrauische Natur gelten als Zeichen guter Zucht und Ordnung. Die Höhle ist von reichhaltigen Faerzress-Adern umgeben, welche für die Drow und ihre Magie von Bedeutung sind, aber auch gewissen Schutz vor Portalzaubern bieten.')
group2 = u1.profile.own_groups.create({title:'Lost in Eternal Space', campagne:'Rettung von Asteroid 543', description:'Hierbei handelt es sich um eine der Abermillionen Seelen die am Boden der imperialen Gesellschaft leben müssen. Sei es als Ausgestoßener in den untersten, vergifteten Ebenen – der Underhive – einer Makropole oder als Pariah einer Feudalwelt, kämpfen diese Individuen täglich um ihr Überleben.'})
group3 = u1.profile.own_groups.create({title:'Aristrokatische Elite', campagne:'Zerstörung der alten Aristrokatie', description:'Die Maskerade bezeichnet sich als „Erzählrollenspiel“ und „Spiel um persönlichen Horror“. Hierbei soll das Hauptaugenmerk auf einer interessanten Geschichte und der Erzeugung einer düsteren Atmosphäre liegen. Die Charaktere sind zumeist im Sinne des Spiels selbst Vampire. Die Spieler setzen sich mit deren düsteren Instinkten auseinander und beobachten den moralischen Verfall und den Prozess, wie aus einem normalen Mensch ein Monster wird. Neben Vampiren sind auch deren menschliche Diener und Verbündete spielbar, aber in jedem Fall sind alle Charaktere in die vampirische Gesellschaft integriert.'})
group4 = u2.profile.own_groups.create({title:'Funky Stormtroopers', campagne:'Finding the Rebellion', description:'The creatures of the Star Wars Galaxy populate the wondrous worlds of the evil Galactic Empire! Inside, readers will get their first glimpse of lethal svapor "swamp deamons", playful onahks and the terrifying deep space creatures known as "mindes horrors".In all, over 60 new creatures are presented! Each entry features a detailed illustration, as well as complete information on the animals habitat, behavior and special abilities.A must for all fans of the fantastic creatures of the Star Wars universe!'})
group5 = u2.profile.own_groups.create(title:'Faeruns Thieves', campagne:'Get the Gold', description:'There are a number of organized alliances in Faerûn, with each pursuing their own particular agenda. A few are dedicated to decent and honest causes, such as the Harpers, who protect the good-natured races and seek a balance between civilization and nature. The Harpers are opposed by evil organizations, including the Red Wizards of Thay and the nihilistic Cult of the Dragon. In the northern lands, the Zhentarim is an evil network seeking to dominate the region. Their efforts are being resisted by the Lords Alliance, a council of knights that pursues the interests of the northern cities. ')
group6 = u7.profile.own_groups.create({title:'Returning Jedi', campagne:'Die Macht', description:'Aliens! These often strange and unique beings fill the Star Wars sage with variety and excitement. Fighting alongside aliens with the Rebel Alliance? Engaged with them in something the Empire considers a less-than-legal activity? Need to know more about these aliens?'})
group7 = u8.profile.own_groups.create({title:'Magic happens', campagne:'Magie ist trumpf', description:'Das Kampfsystem baut auf Attacken und Paraden auf. Gelingt es, einen Gegner anzugreifen, hat dieser die Chance, mit einem Paradewurf den Treffer zu vereiteln. Ergänzt wird dies durch sog. Kampfmanöver, welche es zum Beispiel durch eine selbst auferlegte Erschwernis auf die Attacke ermöglichen, den Schaden zu verstärken oder die Abwehr des Gegners zu schwächen. Noch komplexere Manöver machen Kämpfe interessanter und spannender. Das Magiesystem basiert auf einzeln festgelegten Sprüchen, die wie Talente gehandhabt werden. Über die Astralenergie werden die Fähigkeiten von Zauberern begrenzt.'})
group8 = u10.profile.own_groups.create({title:'Evil Wolfes', campagne:'The Asylum', description:'The proposed story with him is hes been in the Hisil for way too long--he used it to escape and was lost. He has been at the werewolf thing for quite a while, so he would likely try to avoid the bloody rampage scenario. My thought was that he came out of the Hisil in an odd place after being lost inside for weeks, and hes a gibbering mess long enough for someone to call the cops and for the guys with the white padded truck to tranquilize him and take him to a mental ward. I suspect hed come to his senses once inside and realize his predicament, but by then hed be locked up with the rest of the paste eaters.'})
group9 = u6.profile.own_groups.create({title:'Empire of the Sun', campagne:'Slaying Vampires', description:'The World of Darkness has fallen into grinding stagnation. The Sabbat and Camarilla are locked in a brutal game of whack-a-mole, continuously fighting over the same domains. The discord and divisiveness stretches down into the Sects themselves, with the Camarilla stuck debating its very nature and destiny, and the Sabbat brutally purging itself in increasingly trivial disputes. Even those thin-blooded neonates lurking in the alleys can barely function. Coteries spend as much time battling each other as they do the mutual dangers of unlife.'})
group10 = u7.profile.own_groups.create(title:'Orks in Holes', campagne:'Forgotten Realms', description:'Menzoberranzan die Stadt der Spinnen, ist der Archetyp der Drow-Städte. Sie wird von den Klerikerinnen Lloths mit eiserner Hand regiert und ist in zahlreiche Drow Häuser gespalten, welche um die Macht konkurrieren. Verrat und Attentate sind hier an der Tagesordnung, Grausamkeit und eine misstrauische Natur gelten als Zeichen guter Zucht und Ordnung. Die Höhle ist von reichhaltigen Faerzress-Adern umgeben, welche für die Drow und ihre Magie von Bedeutung sind, aber auch gewissen Schutz vor Portalzaubern bieten.')

group1.create_game title:'Dungeons & Dragons', description:'Dungeons & Dragons (englisch für Verliese und Drachen, kurz D&D oder DnD) von Gary Gygax und Dave Arneson gilt als erstes Pen-&-Paper-Rollenspiel. 1974 wurde D&D in den Vereinigten Staaten erstmals von der dazu gegründeten Firma Tactical Studies Rules erfolgreich vertrieben. Im November 1983 brachte die Fantasy Spiele Verlags-GmbH die erste deutsche Übersetzung auf den Markt. Das Spiel wird nunmehr von der Firma Wizards of the Coast hergestellt und vertrieben. Die deutsche Version, die nicht sämtliche Produkte des Originals umfasst, wurde bis Ende 2008 von Feder und Schwert produziert. Derzeit gibt es keinen deutschen Lizenznehmer.'
group2.create_game title:'Warhammer 40k Dark Heresy', description:'Warhammer-40.000-Rollenspiel ist eine Pen-&-Paper-Rollenspiel-Serie, welche im fiktiven Warhammer-40.000-Universum angesiedelt ist. Bisher sind drei unterschiedliche Szenarien, Schattenjäger (im Original Dark Heresy), Freihändler (im Original Rogue Trader) und Deathwatch erschienen.'
group3.create_game title:'Vampire the Masquerade', description:'Vampire: Die Maskerade (engl. Vampire: The Masquerade) ist ein Pen-&-Paper-Rollenspiel des Verlags White Wolf, welches von Feder und Schwert ins Deutsche übersetzt und vertrieben wurde. Konzipiert wurde das Spiel von Spieleautor Mark Rein Hagen.Vampire: Die Maskerade ist in der Gegenwart angesiedelt und ist Teil der so genannten World of Darkness (dt. „Welt der Dunkelheit“). Es wurden auch Ablegersysteme produziert, die das Spiel in anderen Epochen beinhalten, das bekannteste davon ist Vampire aus der Alten Welt. Der US-amerikanische Publisher Activision veröffentlichte insgesamt zwei Computer-Rollenspiele (Redemption, Bloodlines) basierend auf Vampire: The Masquerade produziert. Die Hintergrundwelt des Spiels diente zudem als Grundlage für die Fernsehserie Embraced – Clan der Vampire, die von Aaron Spelling produziert wurde.'
group4.create_game title:'Star Wars', description:'Star Wars, Krieg der Sterne, wörtlich „Sternenkriege“ ist ein von dem Drehbuchautor, Produzenten und Regisseur George Lucas erdachtes Heldenepos. Die Space Opera begann mit dem Film Krieg der Sterne, der am 25. Mai 1977 in den US-amerikanischen und am 2. Februar 1978 in den westdeutschen Kinos anlief. Der Film entwickelte sich zu einem Phänomen der heutigen Popkultur. Fünf weitere Spielfilme folgten sowie eine Reihe von lizenzierten Büchern, Comic-Heften, Videospielen, Nebenfilmen, Fernsehserien, Spielzeugen, Kostümen, Rollenspielen und anderen Produkten.'
group7.create_game title:'Das schwarze Auge', description:'Das Schwarze Auge (DSA) ist ein deutsches Pen-&-Paper-Rollenspiel, das von Ulrich Kiesow 1984 für Schmidt Spiele in Kooperation mit Droemer Knaur herausgegeben wurde. Es basiert auf der Fantasy-Spielwelt Aventurien, die von Hans Joachim Alpers, Werner Fuchs und Ulrich Kiesow entworfen wurde.'
group8.create_game title:'Werwölfe', description:'Werewolf: The Apocalypse ist ein Pen-&-Paper-Rollenspiel, das in der fiktiven Spielwelt Welt der Dunkelheit (World of Darkness) angesiedelt ist. Die Reihe erschien beim US-amerikanischen Verlag White Wolf. Im deutschsprachigen Raum wurde es unter dem Titel Werwolf: Die Apokalypse von Feder & Schwert verlegt.'


group5.game = group1.game 
group6.game = group4.game 
group3.game = group9.game
group10.game = group1.game

u1.profile.groups << group1
u1.profile.groups << group2
u1.profile.groups << group7
u1.profile.groups << group6
u1.profile.groups << group4
u2.profile.groups << group1
u2.profile.groups << group4
u2.profile.groups << group5
u2.profile.groups << group3
u3.profile.groups << group10
u3.profile.groups << group2
u3.profile.groups << group3
u3.profile.groups << group6
u4.profile.groups << group9
u4.profile.groups << group8
u4.profile.groups << group4
u4.profile.groups << group6
u5.profile.groups << group1
u5.profile.groups << group2
u5.profile.groups << group4
u6.profile.groups << group10
u6.profile.groups << group3
u7.profile.groups << group10
u7.profile.groups << group2
u7.profile.groups << group3
u8.profile.groups << group4
u8.profile.groups << group5
u8.profile.groups << group6
u9.profile.groups << group9
u9.profile.groups << group4
u10.profile.groups << group9
u10.profile.groups << group2

group1.news_items.create headline: 'Nächster Termin', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste, tempora, repudiandae, adipisci, at quis eaque ex illo molestiae labore quibusdam ratione voluptatem eum sed facilis earum. Reiciendis, quis possimus fuga.'
group1.news_items.create headline: 'Neues Teammitglied', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore, laborum, fuga, excepturi, fugit molestiae deserunt perspiciatis iure optio eaque vitae nam suscipit nesciunt cum nihil sequi. Repellendus ut possimus deserunt?'
group2.news_items.create headline: 'Grillen am Freitag', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore, quas, necessitatibus praesentium nam odit soluta pariatur quae corporis possimus tenetur veritatis maiores maxime iusto quasi quo omnis ducimus magni amet.'
group2.news_items.create headline: 'Also ich hab da noch mal eine Idee.', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore, quas, necessitatibus praesentium nam odit soluta pariatur quae corporis possimus tenetur veritatis maiores maxime iusto quasi quo omnis ducimus magni amet.'
group3.news_items.create headline: 'Huch! Termin!', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste, tempora, repudiandae, adipisci, at quis eaque ex illo molestiae labore quibusdam ratione voluptatem eum sed facilis earum. Reiciendis, quis possimus fuga.'
group4.news_items.create headline: 'Warum nochmal in die Höhle?', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste, tempora, repudiandae, adipisci, at quis eaque ex illo molestiae labore quibusdam ratione voluptatem eum sed facilis earum. Reiciendis, quis possimus fuga.'
group5.news_items.create headline: 'Termine im Doodle', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste, tempora, repudiandae, adipisci, at quis eaque ex illo molestiae labore quibusdam ratione voluptatem eum sed facilis earum. Reiciendis, quis possimus fuga.'
group5.news_items.create headline: 'Von Drachen und Zwergen?', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste, tempora, repudiandae, adipisci, at quis eaque ex illo molestiae labore quibusdam ratione voluptatem eum sed facilis earum. Reiciendis, quis possimus fuga.'
group5.news_items.create headline: 'Also treffen wir uns?', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste, tempora, repudiandae, adipisci, at quis eaque ex illo molestiae labore quibusdam ratione voluptatem eum sed facilis earum. Reiciendis, quis possimus fuga.'
group6.news_items.create headline: 'Noch mal wegen der letzten Sitzung?', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste, tempora, repudiandae, adipisci, at quis eaque ex illo molestiae labore quibusdam ratione voluptatem eum sed facilis earum. Reiciendis, quis possimus fuga.'
group6.news_items.create headline: 'Leute das ist passiert!', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste, tempora, repudiandae, adipisci, at quis eaque ex illo molestiae labore quibusdam ratione voluptatem eum sed facilis earum. Reiciendis, quis possimus fuga.'

group1.game_styles << gs1
group1.game_styles << gs2
group2.game_styles << gs3
group3.game_styles << gs1
group4.game_styles << gs1
group5.game_styles << gs2
group6.game_styles << gs3

group1.save
group2.save
group3.save
group4.save
group5.save
group6.save

AdminUser.create email: 'nina@oddnina.de', password: 'fhqwhgads', password_confirmation: 'fhqwhgads'
