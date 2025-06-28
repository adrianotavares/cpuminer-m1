# CPUMiner M1 - Minerador de Criptomoedas

Este projeto contém uma configuração completa para mineração de Bitcoin (SHA-256) usando CPUMiner-Multi otimizado para processadores Apple Silicon M1.

## Visão Geral

O CPUMiner-Multi é um minerador de CPU multi-algoritmo que suporta diversos algoritmos de mineração. Esta configuração específica está otimizada para:

- **Algoritmo**: SHA-256d (Bitcoin)
- **Arquitetura**: ARM64 (Apple Silicon)
- **Pools suportadas**: Braiins Pool e Public Pool

## Características

- Binário otimizado para Apple Silicon (ARM64)
- Configurações para duas pools diferentes
- Scripts de inicialização automatizados
- Sistema de logs com timestamp
- Interface API para monitoramento
- Configuração de threads otimizada

## Estrutura do Projeto

```
cpuminer-m1/
├── cpuminer                           # Binário executável ARM64
├── cpuminer-conf.json                 # Configuração para Braiins Pool
├── start-miner.sh                     # Script para Braiins Pool
└── readme.md                          # Este arquivo
```

## Configuração

### Public Pool (cpuminer-conf-public-pool.json)
- **Pool**: public-pool.io:21496
- **Address**: bitcoin-address
- **Worker**: workername
- **Password**: x
- **Threads**: 8
- **API**: 127.0.0.1:4048

## Instalação e Uso

### Pré-requisitos
- macOS com Apple Silicon (M1/M2/M3)
- Terminal com bash/zsh

### Execução Manual
```bash
./cpuminer 
```

### Execução log file
```bash
./start-miner.sh
```

## Monitoramento

### API Status
O minerador expõe uma API REST em `http://127.0.0.1:4048` para monitoramento em tempo real.

### Logs
Os logs são automaticamente salvos com timestamp:
- Formato: `miner_YYYY-MM-DD_HH-MM-SS.log`
- Localização: Diretório raiz do projeto

## Personalização

### Help
```bash
./cpuminer --help
```

### Configurar Threads
Edite o campo `threads` nos arquivos de configuração JSON:
```json
{
  "threads": 8  // Ajuste conforme seu processador
}
```

### Configurar Pool
Para usar uma pool diferente, edite os campos:
```json
{
  "url": "stratum+tcp://sua-pool.com:porta",
  "user": "seu-usuario-ou-endereco",
  "pass": "sua-senha-ou-x"
}
```

### Prioridade de CPU
Ajuste a prioridade do processo:
```json
{
  "cpu-priority": 5  // 0-5 (0=mais baixa, 5=mais alta)
}
```

## Performance

### Configurações Otimizadas para Apple Silicon:
- **Threads**: 8 (recomendado para M1/M2)
- **CPU Affinity**: -1 (uso automático de todos os cores)
- **Scan Time**: 1 segundo
- **Timeout**: 120 segundos

## Considerações Importantes

### Rentabilidade
- A mineração de Bitcoin via CPU não é rentável
- Este projeto é principalmente para fins educacionais/experimentais
- Para mineração séria, considere hardware especializado (ASICs)

### Segurança
- Mantenha suas chaves privadas seguras
- Use pools confiáveis
- Monitore regularmente os logs

## Troubleshooting

### Problemas Comuns

**Erro de Permissão:**
```bash
chmod +x cpuminer
chmod +x start-miner.sh
chmod +x start-miner-public-pool.sh
```

**Pool não conecta:**
- Verifique sua conexão com a internet
- Confirme se a URL e porta da pool estão corretas
- Verifique se o usuário/endereço está correto

**Performance baixa:**
- Ajuste o número de threads
- Verifique se outros processos estão usando CPU
- Considere ajustar a prioridade do CPU

## 📚 Recursos Adicionais

- [CPUMiner-Multi GitHub](https://github.com/tpruvot/cpuminer-multi)
- [Braiins Pool](https://braiins.com/pool)
- [Public Pool](https://public-pool.io)

## 📝 Licença

Este projeto utiliza o CPUMiner-Multi, que é software livre. Consulte as licenças dos componentes individuais para mais detalhes.

## 🤝 Contribuições

Sinta-se à vontade para contribuir com melhorias, correções de bugs ou novas funcionalidades através de pull requests.

---

**⚡ Desenvolvido para Apple Silicon | Mineração Educacional | Use com Responsabilidade**
