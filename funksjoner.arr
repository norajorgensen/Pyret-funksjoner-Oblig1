# Konverterer et beløp fra norske kroner (NOK) til euro (EUR)
fun nok_til_euro(nok_belop):
  doc: "Konverterer et NOK-beløp til euro basert på dagens valutakurs"
  valutakurs_eur = 11.930
  eur_belop = nok_belop / valutakurs_eur
  eur_belop
where:
  nok_til_euro(1000) is 83.82  # Test 1: 1000 NOK = 83.82 EUR
  nok_til_euro(500) is 41.91   # Test 2: 500 NOK = 41.91 EUR
  nok_til_euro(0) is 0         # Test 3: 0 NOK = 0 EUR
end


# Konverterer et beløp fra norske kroner (NOK) til amerikanske dollar (USD)
fun nok_til_usd(nok_belop):
  doc: "Konverterer et NOK-beløp til amerikanske dollar basert på dagens valutakurs"
  valutakurs_usd = 10.807
  usd_belop = nok_belop / valutakurs_usd
  usd_belop
where:
  nok_til_usd(1000) is 92.53  # Test 1: 1000 NOK = 92.53 USD
  nok_til_usd(500) is 46.27   # Test 2: 500 NOK = 46.27 USD
  nok_til_usd(0) is 0         # Test 3: 0 NOK = 0 USD
end


# Konverterer et NOK-beløp til enten euro (EUR) eller amerikanske dollar (USD)
fun konverter_nok(nok_belop, valuta):
  doc: "Konverterer NOK til euro eller amerikanske dollar basert på brukerens valg"
  valutakurs_eur = 11.930
  valutakurs_usd = 10.807
  
  if valuta == "EUR":
    nok_belop / valutakurs_eur
  else if valuta == "USD":
    nok_belop / valutakurs_usd
  else:
    "Ugyldig valuta"
  end
where:
  konverter_nok(1000, "EUR") is 83.82  # Test 1: 1000 NOK til EUR
  konverter_nok(1000, "USD") is 92.53  # Test 2: 1000 NOK til USD
  konverter_nok(1000, "GBP") is "Ugyldig valuta"  # Test 3: Ugyldig valuta
end
