import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Util {
  criaBotao(acao, conteudo, tamanho, cor, corFundoBotao) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: corFundoBotao,
        fixedSize: const Size(100, 100),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: acao,
      child: criaTexto(conteudo, tamanho, cor),
    );
  }

  criaTexto(conteudo, tamanho, cor) {
    return Text(
      conteudo,
      style: TextStyle(
        fontSize: tamanho,
        color: cor,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  imagemFundo(imagem) {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/img/$imagem'),
        fit: BoxFit.cover,
      ),
    );
  }
}
