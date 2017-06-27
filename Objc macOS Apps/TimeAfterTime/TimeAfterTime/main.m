//
//  main.m
//  TimeAfterTime
//
//  Created by Héctor Gonzalo Andrés on 23/9/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <Foundation/Foundation.h>   //Esta es la importación del framework principal de Objective-C
                                    //Hay que fijarse en que se usa el import en vez del include
                                    //import es una versión más inteligente de include

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //NSDate *now = [NSDate date];    //En esta linea hemos creado un puntero de tipo NSDate, y le hemos asignado
                                        //la dirección de una nueva instancia de NSDate que se crea al enviar el mensaje date a
                                        //la clase NSDate
        //Queda comentada la línea anterior, porque también se puede hacer de la siguiente manera (y así se vé el nesteo de mensajes)
        NSDate *now = [[NSDate alloc]init];
        
        NSLog(@"This NSDate object lives at %p", now);  //Visualizaremos el contenido de now con %p para ver la dirección de
                                                        //memoria en la que vive el objeto referenciado por now
        NSLog(@"The date is %@", now);  //Aquí lo que hacemos es imprimir el "description" del objeto now
        
        //Hasta ahora hemos usado métodos de clase, ya que no hemos mandado mensaje a ningún objeto, sino que lo hemos hecho
        //a la clase NSDate
        
        double seconds = [now timeIntervalSince1970];   //Ahora estamos llamando a un método de objeto
                                                        //al método timeIntervalSince1970
                                                        //del objeto now del tipo NSDate
        NSLog(@"It has been %f seconds since the start of 1970", seconds);
        
        NSDate *nowAumentado = [now dateByAddingTimeInterval:100000];   //Queremos saber la fecha de ahora + 100000 secs
                                                                        //Lo calculamos mediante un mensaje
        NSLog(@"The date + 100000secs is %@", nowAumentado);
        
        //Ahora queremos trabajar con formato fecha, para ello utilizaremos la calse NSCalendar
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar type is %@", [cal calendarIdentifier]); //Como el description no nos daba lo que queríamos
                                                                    //utilizamos un mensaje (SIEMPRE BUSCAR EN DOC)
        
        //Para ver como es el paso de múltiples argumentos, vamos a ver en que día del mes estamos
        
        unsigned long day = [ cal ordinalityOfUnit:NSCalendarUnitDay    //Dime en día
                                            inUnit:NSCalendarUnitMonth  //del mes
                                           forDate:now                  //a que estamos hoy
                             ];
        NSLog(@"This is day %lu of the month", day);
    }
    return 0;
}
