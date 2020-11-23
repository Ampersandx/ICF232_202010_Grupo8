import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./tabs/tabs.module').then(m => m.TabsPageModule)
  },
  {
    path: 'login',
    loadChildren: () => import('./login/login.module').then( m => m.LoginPageModule)
  },
  {
    path: 'recuperar-pass',
    loadChildren: () => import('./recuperar-pass/recuperar-pass.module').then( m => m.RecuperarPassPageModule)
  },
  {
    path: 'registro',
    loadChildren: () => import('./registro/registro.module').then( m => m.RegistroPageModule)
  },
  {
    path: 'editar-datos',
    loadChildren: () => import('./editar-datos/editar-datos.module').then( m => m.EditarDatosPageModule)
  },
  {
    path: 'historial-compras',
    loadChildren: () => import('./historial-compras/historial-compras.module').then( m => m.HistorialComprasPageModule)
  },
  {
    path: 'estado-cotizacion',
    loadChildren: () => import('./estado-cotizacion/estado-cotizacion.module').then( m => m.EstadoCotizacionPageModule)
  },
  {
    path: 'info-producto',
    loadChildren: () => import('./info-producto/info-producto.module').then( m => m.InfoProductoPageModule)
  },
  {
    path: 'editar-direccion',
    loadChildren: () => import('./editar-direccion/editar-direccion.module').then( m => m.EditarDireccionPageModule)
  },
  {
    path: 'cambiar-pass',
    loadChildren: () => import('./cambiar-pass/cambiar-pass.module').then( m => m.CambiarPassPageModule)
  },
  {
    path: 'cambiar-correo',
    loadChildren: () => import('./cambiar-correo/cambiar-correo.module').then( m => m.CambiarCorreoPageModule)
  },
  {
    path: 'datos-despacho',
    loadChildren: () => import('./datos-despacho/datos-despacho.module').then( m => m.DatosDespachoPageModule)
  },
  {
    path: 'modal-historial',
    loadChildren: () => import('./modal-historial/modal-historial.module').then( m => m.ModalHistorialPageModule)
  },
  {
    path: 'modal-cotizacion',
    loadChildren: () => import('./modal-cotizacion/modal-cotizacion.module').then( m => m.ModalCotizacionPageModule)
  }
];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
