import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})


export class LoginComponent implements OnInit {
  
  constructor(private fb: FormBuilder,
    private readonly userService:UserService) { }


  loginForm = this.fb.group({
    user: ['', [Validators.required, Validators.email]],
    password: ['', [Validators.required, Validators.minLength(6)]]
  });

  iniciarSesion(){
    // if(this.loginForm.valid){
    //   this.userService.__getLogin(this.loginForm.value).subscribe((rest:any)=>{
    //     if(rest.issuccess){
    //       console.log(rest.data);
    //     }
    //   });
    // }


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


