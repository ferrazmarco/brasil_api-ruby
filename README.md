<h1 align="center"><img src="https://raw.githubusercontent.com/BrasilAPI/BrasilAPI/master/public/brasilapi-logo-small.png" alt="Logo da BrasilAPI"></h1>

<div align="center">
  <p>
    <strong>Vamos transformar o Brasil em uma API?</strong>
  </p>
</div>


Simples cliente para interagir com a BrasilApi. Mais informações através desse [link](https://brasilapi.com.br/docs).

## Instalação

Instale a gem e adicione como dependência de sua aplicação:

    $ bundle add brasil_api

Se não estiver usando bundler para gerenciar suas depências, instale a gem executando:

    $ gem install brasil_api

## Uso

### Bancos

```ruby
BrasilApi::Bank.all
```

```ruby
BrasilApi::Bank.find(1)
```

### CEP

```ruby
BrasilApi::CEP.find('89010025')
```

```ruby
BrasilApi::CEPV2.find('89010025')
```

### CNPJ

```ruby
BrasilApi::CNPJ.find('19131243000197')
```

### Corretoras

```ruby
BrasilApi::Realtor.all
```

```ruby
BrasilApi::Realtor.find('02332886000104')
```

### CPTEC

```ruby
BrasilApi::CPTEC.cities
```

```ruby
BrasilApi::CPTEC.cities('São Paulo')
```

```ruby
BrasilApi::CPTEC.weather_capitals
```

```ruby
BrasilApi::CPTEC.weather_airports("SBAR")
```

```ruby
BrasilApi::CPTEC.forecast(4178)
```

```ruby
BrasilApi::CPTEC.forecast(4178, 3)
```

```ruby
BrasilApi::CPTEC.ocean_forecast(241)
```

```ruby
BrasilApi::CPTEC.ocean_forecast(241, 3)
```

### DDD

```ruby
BrasilApi::DDD.find("11")
```

### Feriados Nacionais

```ruby
BrasilApi::Holiday.year(2023)
```

### FIPE

```ruby
BrasilApi::FIPE.brands
```

```ruby
BrasilApi::FIPE.brands_by(type: "carros")
```

```ruby
BrasilApi::FIPE.brands_by(type: "carros", fipe_table: 271)
```

```ruby
BrasilApi::FIPE.prices_by(fipe_code: "017092-5")
```

```ruby
BrasilApi::FIPE.prices_by(fipe_code: "017092-5", fipe_table: 300)
```

```ruby
BrasilApi::FIPE.tables
```

