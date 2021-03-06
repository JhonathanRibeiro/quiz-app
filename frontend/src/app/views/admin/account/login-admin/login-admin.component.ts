import { Component } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/services/auth.service';
import { Usuario } from './usuario';

@Component({
  selector: 'app-login-admin',
  templateUrl: './login-admin.component.html',
  styleUrls: ['./login-admin.component.css']
})
export class LoginAdminComponent{
  public formulario: FormGroup = new FormGroup({});
  public usuario: Usuario = new Usuario();

  constructor(
    private auth: AuthService,
    private router: Router
    ){ }

  public login(): void {
    if(this.usuario.email === 'admin@ids.inf.br' && this.usuario.senha === 'admin0207') {
      this.router.navigate(['/admin/ranking']);
      this.auth.setStorage('usuario', this.usuario.email);
    } else {
      document.querySelector('#erro-message')!.innerHTML = `
      <span class="text-danger">Usuário ou senha inválidos.</span>
      `;
    }
  }
}
