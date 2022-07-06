import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})


export class LoginComponent implements OnInit {
  
  constructor(private fb: FormBuilder) { }

  userName: any;  
  loginForm = this.fb.group({
    user: ['', [Validators.required, Validators.email]],
    password: ['', [Validators.required, Validators.minLength(6)]]
  });

  iniciarSesion(){
    let x =0;
    if(this.loginForm.get('user')?.value=="admin"){
      if(this.loginForm.get('password')?.value=="123456"){
        x=1;
      }
    }
    if(x>0){
      sessionStorage.setItem('token', 'Mercedes');
      window.location.href="/dashboard";
    }else{
      sessionStorage.removeItem('token');
    }
  }

  ngOnInit(): void {
  }

}



// export class Usuario {
//   id: number;
//   name: string;
//   password: string;
//   fullName: string;

//   constructor(user:Usuario) {
//       {
//         this.id = user.id;
//         this.name = user.name || '';
//         this.password = user.password || '';
//         this.fullName = user.fullName || '';
//       }
//   }
// }