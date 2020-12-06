
import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import { environment } from "../../environments/environment";



@Injectable({
  providedIn: 'root'
})
export class ProductService {

 // private url = environment.backend_api_url;

    constructor(private httpClient: HttpClient) { }


 // getAllProducts(pageNumber: number = 1) {
   // return this.httpClient.get( url  `${this.url}/products/page=${pageNumber}&per_page=10`);

  //}
}
