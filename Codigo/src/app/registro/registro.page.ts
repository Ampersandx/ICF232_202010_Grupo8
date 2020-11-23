import { Component, OnInit } from '@angular/core';
import { Router} from '@angular/router';
import { PostProvider } from '../../providers/post-provider';
import { ToastController} from '@ionic/angular'



@Component({
  selector: 'app-registro',
  templateUrl: './registro.page.html',
  styleUrls: ['./registro.page.scss'],
})
export class RegistroPage implements OnInit {

  nombre: string ="";
  email: string ="";
  password: string ="";
  confirm_password: string="";

  constructor(
    private router: Router,
    private postPvdr: PostProvider,
    public toastCtrl: ToastController,
  ) { }

  ngOnInit(){
  }

  formLogin(){
    this.router.navigate(['/login']);
  }

  async tryRegister(){

    if(this.nombre == ""){
      const toast = await this.toastCtrl.create({
          message: 'Se requiere el nombre',
          duration: 2000
      });
      toast.present();
    }else if(this.email == ""){
      const toast = await this.toastCtrl.create({
        message: 'Se requiere un email',
        duration: 2000
      });
      toast.present();

    }else if(this.password == ""){
      const toast = await this.toastCtrl.create({
        message: 'Se requiere la contraseña',
        duration: 2000
      });
      toast.present();

    }else if(this.password != this.confirm_password){
      const toast = await this.toastCtrl.create({
        message: 'Las contraseñas no coinciden',
        duration: 2000
      });
      toast.present();
    }else{
      let body = {
        nombre: this.nombre,
        email: this.email,
        password: this.password,
        aksi: 'registro'
      };
      this.postPvdr.postData(body, 'proses-api.php').subscribe(async data =>{
        var alertmsg = data.msg;
        if(data.success){
            this.router.navigate(['/login']);
            const toast = await this.toastCtrl.create({
              message: 'Registro exitoso',
              duration: 2000
            });
            toast.present();
        }else{
          const toast = await this.toastCtrl.create({
            message: alertmsg,
            duration: 2000
          });

        }
      });
    }
  }

    
  }


