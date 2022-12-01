import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-item-card',
  templateUrl: './item-card.component.html',
  styleUrls: ['./item-card.component.scss']
})
export class ItemCardComponent {
  @Input() personagem: any = {
    nome: '',
    imagem: '',
    nomeAtor: '',
    descricao: '',
  };
}
