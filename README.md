# Landing page com AKS e K8S

![Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)

# Descrição
Este projeto é um dos laboratórios do bootcamp Azure Cloud Native da DIO, com o objetivo de criar uma landing page simples e armazenar a sua imagem em um container.

# Instruções de instalação
Este projeto não contemplará a parte de instruções de instalação. Como se trata de recursos provisionados em cloud, os mesmos foram desalocados para não gerar custos recorrentes. A aplicação será demonstrada através de prints.

# Informações técnicas

Para a realização deste projeto, as seguintes tecnologias-chave foram empregadas:

## Dockerfile

Responsável por definir o ambiente e as instruções para construir a imagem de contêiner da aplicação `landing-page`. Ele empacota a aplicação `landing-page` e o servidor web Nginx, que serve o conteúdo estático da página, juntamente com todas as suas dependências. Isso garante que a aplicação possa ser executada de forma consistente em qualquer ambiente que suporte Docker.

## Nginx

Utilizado como o servidor web leve e de alto desempenho dentro do contêiner Docker. Neste projeto, o Nginx é responsável por receber as requisições HTTP destinadas à `landing-page` e servir os arquivos estáticos (HTML, CSS, JavaScript, imagens, etc.) que compõem a interface da aplicação para os usuários.

## ACR (Azure Container Registry)

Serviço de registro de contêiner privado no Azure. Após a imagem Docker da `landing-page` ser construída (usando o Dockerfile), ela é armazenada (enviada via "push") no ACR. O Azure Kubernetes Service (AKS) então utiliza este registro para baixar (realizar "pull") a imagem da aplicação de forma segura e confiável sempre que precisar implantar ou escalar os pods da `landing-page`.

## AKS (Azure Kubernetes Service)

Serviço de Kubernetes gerenciado no Azure, utilizado para orquestrar a execução da aplicação `landing-page` em contêineres. O AKS automatiza a implantação, o dimensionamento e o gerenciamento da aplicação. Ele garante que o número desejado de instâncias (pods) da `landing-page` esteja rodando e, através de um Service do Kubernetes do tipo `LoadBalancer`, expõe a aplicação na internet, tornando-a acessível através de um endereço IP externo público. O AKS também se integra nativamente ao ACR para obter as imagens de contêiner necessárias.


## Acesso à Aplicação

Após a implantação bem-sucedida no Azure Kubernetes Service (AKS) e a configuração do serviço do tipo `LoadBalancer`, a aplicação `landing-page` torna-se acessível publicamente através de um endereço IP externo.

A aplicação foi exposta no seguinte endereço IP público, provisionado pelo Azure:

`http://51.8.210.78`

*(Aqui você pode inserir o print do navegador mostrando a aplicação rodando nesse IP)*

Este IP foi atribuído ao serviço Kubernetes `landing-page`, que utiliza um Azure Load Balancer para distribuir o tráfego para os pods da aplicação. O status do serviço e o IP externo podem ser verificados com o comando:

```bash
kubectl get svc landing-page

# Autora

[<img loading="lazy" src="https://avatars.githubusercontent.com/u/97490698?v=4" width=115><br><sub>Jessica Oliveira</sub>](https://github.com/jessicaalines)


# Contato

Via LinkedIn:

* Jessica Oliveira: https://www.linkedin.com/in/jessica-aline-soares-oliveira/
