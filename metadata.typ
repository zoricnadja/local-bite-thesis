#let format_strane = "iso-b5"         // могуће вредности: iso-b5, a4
#let naslov = "Микросервисна платформа за праћење производње и порекла домаћих производа"
#let autor = "Нађа Зорић"

// На енглеском
#let naslov_eng = "Microservice Platform for Tracking Production and Provenance of Local Products"
#let autor_eng = "Nađa Zorić"

#let indeks = "SV35-2022"

// Име и презиме ментора
#let mentor = "Игор Дејановић"
// Звање: редовни професор, ванредни професор, доцент
#let mentor_zvanje = "редовни професор"

// Скинути коментаре са одговарајућих линија
#let studijski_program = "Софтверско инжењерство и информационе технологије"
//#let studijski_program = "Рачунарство и аутоматика"
//#let stepen = "Мастер академске студије"
#let stepen = "Основне академске студије"

#let godina = [#datetime.today().year()]

#let kljucne_reci = "микросервисна архитектура, следљивост, домаћи производи, QR код"
#let apstrakt = [
У раду је представљен LocalBite, микросервисни прототип за повезивање евиденције сировина, производње и поруџбина малих произвођача. Власник и радници прате интерне послове, док купац приступа понуди и одабраним подацима о пореклу путем QR кода. Описани су модел, реализација и ограничења решења. Локална провера обухватила је 13 успешних тестова клијентске апликације и два теста генерисања PDF документа. Испитивање са произвођачима потребно је за оцену стварне уштеде времена. Документ о пореклу приказује унете податке и не представља независну потврду квалитета.
]

// На енглеском
#let kljucne_reci_eng = "microservice architecture, provenance traceability, local products, QR code"
#let apstrakt_eng = [
This thesis presents LocalBite, a microservice prototype linking raw-material records, production and orders for small producers. Owners and workers manage internal operations, while customers access the offer and selected provenance data through a Quick Response (QR) code. The thesis describes the model, implementation and limitations. Local verification passed 13 frontend tests and two Portable Document Format (PDF) generation tests. Project records report successful integration scenarios on 17–18 September 2026. Evaluation with producers remains necessary to assess actual time savings. The provenance document presents entered records and is not an independent quality certificate.
]

// TODO: Текст задатка добијате од ментора. Заменити доле #lorem(100) са текстом задатка.
#let zadatak = [
     Пројектовати и имплементирати микросервисну платформу за праћење
     производње и порекла локалних прехрамбених производа. Систем треба да
     омогући управљање корисницима и газдинствима, евиденцију сировина,
     производних серија, корака производње, производа и поруџбина. Потребно је
     обезбедити контролу приступа засновану на улогама, изолацију података по
     газдинству, јавни приступ информацијама о пореклу производа QR кодом и
     генерисање документа о пореклу. У оквиру решења приказати примену
     образаца пројектовања и асинхроне комуникације између сервиса.
]

// TODO: Датум одбране и чланове комисије добијате од ментора
#let datum_odbrane = ""
#let komisija_predsednik = ""
#let komisija_predsednik_zvanje = ""
#let komisija_clan = ""
#let komisija_clan_zvanje = ""

// На енглеском уписати чланове на латиници
#let komisija_predsednik_eng = ""
#let komisija_clan_eng = ""
#let mentor_eng = "Igor Dejanović"


// Ово даље углавном не треба мењати.

#let zvanje_eng = (
     "": "",
     "редовни професор": "full professor",
     "ванредни професор": "assoc. professor",
     "доцент": "asist. professor",
)
#let komisija_predsednik_zvanje_eng = zvanje_eng.at(komisija_predsednik_zvanje)
#let komisija_clan_zvanje_eng = zvanje_eng.at(komisija_clan_zvanje)
#let mentor_zvanje_eng = zvanje_eng.at(mentor_zvanje)


#let vrsta_rada = if stepen == "Мастер академске студије" {
    "Дипломски - мастер рад"
} else {
    "Дипломски - бечелор рад"
}

#let oblast = "Електротехничко и рачунарско инжењерство"
#let oblast_eng = "Electrical and Computer Engineering"
#let disciplina = "Примењене рачунарске науке и информатика"
#let disciplina_eng = "Applied computer science and informatics"

#import "funkcije.typ": *
// Поглавља/страна/цитата/табела/слика/графика/прилога
#let fizicki_opis = context {
    let numbered = query(heading.where(level: 1)).filter(h => h.numbering != none)
    let appendices = numbered.filter(h => h.has("label") and repr(h.label).starts-with("<dodatak-")).len()
    let chapters = numbered.len() - appendices
    let pages = counter(page).final().first()
    let citations = read("literatura.bib").matches(regex("@[a-z]+\\{")).len()
    let tables = query(figure.where(kind: table)).len()
    let images = query(figure.where(kind: image)).len()
    (chapters, pages, citations, tables, images, 0, appendices).map(str).join("/")
}
