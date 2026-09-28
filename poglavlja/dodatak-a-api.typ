#heading(level: 1)[API примери] <dodatak-a>

#text("Примери захтева и одговора састављени су према пројектним рутама и DTO структурама. Вредности су илустративне; приказ није запис извршеног теста. У јавном одговору празне листе скраћују приказ корака и сировина.")

#heading(level: 2)[Регистрација] <sec-A-1>

#block(width: 100%, fill: luma(96%), inset: 7pt, breakable: true)[#set text(font: "Consolas", size: 8pt)
#set par(justify: false)
#text("POST /api/auth/register\n{\n  \"email\": \"kupac@example.com\",\n  \"password\": \"...\",\n  \"role\": \"CUSTOMER\",\n  \"first_name\": \"Ana\",\n  \"last_name\": \"Jovanović\"\n}")]

#heading(level: 2)[Завршетак производне серије] <sec-A-2>

#block(width: 100%, fill: luma(96%), inset: 7pt, breakable: true)[#set text(font: "Consolas", size: 8pt)
#set par(justify: false)
#text("PUT /api/productions/batches/{batch_id}/complete\n{\n  \"output_name\": \"Domaći med\",\n  \"output_type\": \"honey\",\n  \"output_unit\": \"kg\",\n  \"output_quantity\": 25.0,\n  \"expiry_date\": \"2027-09-18\"\n}")]

#heading(level: 2)[Јавни приказ порекла] <sec-A-3>

#block(width: 100%, fill: luma(96%), inset: 7pt, breakable: true)[#set text(font: "Consolas", size: 8pt)
#set par(justify: false)
#text("GET /api/public/trace/{qr_token}\n200 OK\n{\n  \"product\": {\"name\": \"Domaći med\", \"product_type\": \"honey\", \"description\": null, \"expiry_date\": \"2027-09-18\", \"qr_token\": \"550e8400-e29b-41d4-a716-446655440000\"},\n  \"business_name\": \"Primer preduzeća\",\n  \"batch\": {\"name\": \"Prolećna proizvodnja\", \"start_date\": null, \"end_date\": null, \"status\": \"COMPLETED\", \"steps\": [], \"raw_materials\": []}\n}")]
