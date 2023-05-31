Esse repositório é uma versão _Containerized_ do projeto Building a Kimball dimensional model with dbt.

# Repositório original

O repositório original pode ser econtrado [aqui](https://github.com/Data-Engineer-Camp/dbt-dimensional-modelling).

A referência para a contrução do Dockerfile e docker-compose.yml desse repositório veio do post do [Giorgos Myrianthous](https://towardsdatascience.com/jaffle-shop-dbt-docker-93a9b14532a4).

# Installing packages 

```
dbt deps 
```

# Running dbt 

```
dbt build 
```

Or 

```
dbt run 
```

# Testing dbt 

```
dbt test
```

# Generate snapshot

```
dbt snapshot
```

# Dbt docs 

```
dbt docs generate
dbt docs serve
```

