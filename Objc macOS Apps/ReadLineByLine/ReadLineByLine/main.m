//
//  main.m
//  ReadLineByLine
//
//  Created by Héctor Gonzalo Andrés on 13/10/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //Zona de declaraciones
        
        NSURL *rutaArchivo = [NSURL fileURLWithPath:@"/Users/hectorgoan/Desktop/lemario.txt"];  //OJO CON LA RUTA!
        NSString *contenidoFichero = [NSString stringWithContentsOfURL:rutaArchivo encoding:NSUTF8StringEncoding error:nil];
        
        
        //Cuerpo del programa
        
        //NSLog(@"Contenido del fichero = %@ ", contenidoFichero);
        
        //Lo queremos línea a línea
        NSArray * contenidoFicheroLineaALinea = [contenidoFichero componentsSeparatedByString:@"\n"];
        if([contenidoFicheroLineaALinea count] == 0)
        {
            NSLog(@"El archivo contiene 0 líneas A.K.A. está vacío");
            return 0;
        }
        
        for (NSString * unaLinea in contenidoFicheroLineaALinea)
        {
            NSLog(@"%@", unaLinea);
        }
    }
    return 0;
}
