import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { QuestioncardComponent } from './components/questioncard/questioncard.component';
import { AdminComponent } from './views/admin/admin.component';
import { AgradecimentoComponent } from './views/agradecimento/agradecimento.component';
import { ApresentacaoComponent } from './views/apresentacao/apresentacao.component';
import { LoginComponent } from './views/login/login.component';
import { RankingComponent } from './views/ranking/ranking.component';
import { RegrasComponent } from './views/regras/regras.component';

const routes: Routes = [
  { path:'', component: LoginComponent },
  { path:'login', component: LoginComponent },
  { path:'apresentacao', component: ApresentacaoComponent },
  { path: 'regras', component: RegrasComponent },
  
  { path:'quiz', component: QuestioncardComponent },
  { path:'agradecimento', component: AgradecimentoComponent },
  { path:'ranking', component: RankingComponent },
  { path:'admin', component: AdminComponent }

];



@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
