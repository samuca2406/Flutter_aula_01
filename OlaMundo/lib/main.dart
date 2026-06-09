import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      debugShowCheckedModeBanner: false,
      // Ativando o Material Design 3 para componentes modernos e elegantes
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple, // Cor base do aplicativo
          brightness: Brightness.light,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Captura as cores definidas no tema acima para manter o padrão visual coerente
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
      // 1. AppBar modificada com nova cor de fundo e título em negrito
      appBar: AppBar(
        backgroundColor:
            colors.primaryContainer, // Cor de fundo dinâmica vinda do tema
        title: const Text(
          'meu primeiro app mobile',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Texto em negrito solicitado
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      // 2. Uso do Center para alinhar o conteúdo no meio exato da tela
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(
              24.0), // Margem de segurança para o texto não tocar as bordas
          child: Column(
            mainAxisSize: MainAxisSize
                .min, // Restringe a coluna ao tamanho mínimo do seu conteúdo
            children: [
              Text(
                'Sobre o Meu App 📱',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: colors.primary,
                ),
              ),
              const SizedBox(
                  height:
                      16), // Espaçamento vertical controlado entre os textos
              // 3. Texto com a descrição improvisada sobre a aplicação
              Text(
                'Este é o meu primeiro passo no desenvolvimento mobile com Flutter! '
                'O aplicativo foi estruturado utilizando boas práticas de componentização, '
                'comunicação visual baseada em Material 3 e total controle de responsividade '
                'e centralização de elementos na tela.',
                textAlign:
                    TextAlign.center, // Centraliza as linhas do parágrafo
                style: TextStyle(
                  fontSize: 16,
                  color: colors.onSurfaceVariant,
                  height:
                      1.5, // Melhora o espaçamento entre linhas (legibilidade)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
