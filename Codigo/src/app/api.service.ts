import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpResponse } from '@angular/common/http';
import { Producto } from './producto';
import { Token } from './token';
import { Observable, of, throwError } from 'rxjs';
import { retry, catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  apiURL = 'https://sleepy-gorge-24969.herokuapp.com';
  autorizacion: Token;

  constructor(private http: HttpClient) {}
 
  login(usuario) : Observable<HttpResponse<Token>> {
    var resultado=this.http.post<Token>(this.apiURL + '/api/login/',usuario,{'observe':'response'})
    .pipe(
    retry(1),
    catchError(this.handleError)
    )
    resultado.subscribe(valor => {
      if(valor.status==200)
        this.autorizacion=valor.body;
      else
        this.autorizacion={token:"?"}
    })
    return resultado;
  }

  getProductos(): Observable<HttpResponse<Producto[]>> {
    console.log(this.autorizacion.token);
    return this.http.get<Producto>(this.apiURL + '/producto/',
    {
      'headers': {
        'Content-Type': 'application/json',
        'Authorization': 'Token ' + this.autorizacion.token
      },
      'observe': 'response'
    })
    .pipe(
    retry(1),
    catchError(this.handleError)
    )
  }
  
  private handleError(error: any) {
      console.error(error);
      return of(error);
  }
}