#heading(level: 1)[Статуси и матрица права] <dodatak-b>

#text("Статуси и овлашћења у табелама изведени су из пројектних модела, провера приступа и пословних правила. Приказују правила реализације, а не резултат независног теста контроле приступа.")

#heading(level: 2)[Статуси производне серије] <sec-B-1>

#text("Дозвољени прелази статуса серије наведени су у табели ")#ref(<tab-B-1>, supplement: none)#text(".")

#block(breakable: false)[#figure([#set text(size: 9pt)
#set par(justify: false)
#table(columns: (1.1fr, 1.5fr, 2fr), inset: 5pt, stroke: 0.4pt + gray,
 table.header([#text("Статус")],[#text("Дозвољени прелази")],[#text("Значење")]),
[#text("PLANNED")],
[#text("IN_PROGRESS, CANCELLED")],
[#text("серија је припремљена")],
[#text("IN_PROGRESS")],
[#text("COMPLETED, CANCELLED")],
[#text("обрада је у току")],
[#text("COMPLETED")],
[#text("нема")],
[#text("производни резултат је закључен")],
[#text("CANCELLED")],
[#text("нема")],
[#text("серија је отказана")]
)], kind: table, supplement: [Табела], caption: [Статуси производне серије]) <tab-B-1>]


#heading(level: 2)[Статуси поруџбине] <sec-B-2>

#text("Дозвољени прелази статуса поруџбине наведени су у табели ")#ref(<tab-B-2>, supplement: none)#text(".")

#block(breakable: false)[#figure([#set text(size: 9pt)
#set par(justify: false)
#table(columns: (1.1fr, 1.5fr, 2fr), inset: 5pt, stroke: 0.4pt + gray,
 table.header([#text("Статус")],[#text("Дозвољени прелази")],[#text("Значење")]),
[#text("PENDING")],
[#text("CONFIRMED, CANCELLED")],
[#text("креирана, чека потврду")],
[#text("CONFIRMED")],
[#text("SHIPPED, CANCELLED")],
[#text("потврђена")],
[#text("SHIPPED")],
[#text("DELIVERED")],
[#text("послата")],
[#text("DELIVERED")],
[#text("нема")],
[#text("испоручена")],
[#text("CANCELLED")],
[#text("нема")],
[#text("отказана")]
)], kind: table, supplement: [Табела], caption: [Статуси поруџбине]) <tab-B-2>]


#heading(level: 2)[Матрица права] <sec-B-3>

#text("Овлашћења по корисничким улогама обједињена су у табели ")#ref(<tab-B-3>, supplement: none)#text(".")

#block(breakable: false)[#figure([#set text(size: 9pt)
#set par(justify: false)
#table(columns: (1fr,1fr,1fr,1fr,1fr), inset: 5pt, stroke: 0.4pt + gray,
 table.header([#text("Акција")],[#text("Купац")],[#text("Радник")],[#text("Власник")],[#text("Посетилац")]),
[#text("Преглед јавног порекла")],
[#text("да")],
[#text("да")],
[#text("да")],
[#text("да")],
[#text("Преглед каталога")],
[#text("да")],
[#text("да")],
[#text("да")],
[#text("не")],
[#text("Измена сировине")],
[#text("не")],
[#text("да")],
[#text("да")],
[#text("не")],
[#text("Управљање радницима")],
[#text("не")],
[#text("не")],
[#text("да")],
[#text("не")],
[#text("Завршетак серије")],
[#text("не")],
[#text("да")],
[#text("да")],
[#text("не")],
[#text("Активирање продаје")],
[#text("не")],
[#text("да")],
[#text("да")],
[#text("не")],
[#text("Креирање поруџбине")],
[#text("да")],
[#text("не")],
[#text("не")],
[#text("не")]
)], kind: table, supplement: [Табела], caption: [Матрица права]) <tab-B-3>]
