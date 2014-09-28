#!/usr/bin/python

# -*- coding: utf-8 -*-

"Modulo para controlar el tiempo de ejecucion de funciones"

import time
import os


#def media datos

def punto_por_coma(fichero): pass

#def leer datos

#def separar x e y

#def estimar

#def suavizar



def medir (fun , max, mostrar = 0):   #usar argv para argumentos variables

  x, y = [], []	
  try:
    for n in range(max):	      #cambiar for por while
	  t0 = time.clock()         #usar clock en win32 y time en unix
	  fun(n)	
	  t = time.clock()
	  dt = t - t0
	  y.append(dt)
	  x.append(n)
  
  except:
    print 'Error'
	
  directorio='./estats_%s/' %fun.__name__ 
  
  if not os.path.exists(directorio):                                               #not ('estats_%s' %fun.__name__) in os.listdir('./'): 
    os.mkdir(directorio)	
	
  escribir_datos(x, '%sestadisticas_x.txt' %directorio)
  escribir_datos(y, '%sestadisticas_y.txt' %directorio)
  
  graficar(x, y, mostrar)
	
		
		
def graficar(x, y, mostrar = False):
  import matplotlib.pyplot as plt
  
  plt.plot(x, y)
  plt.xlabel('n')
  plt.ylabel('t (s)')
  plt.savefig('estadistica')	
  if mostrar:  
    plt.show()	
	

def escribir_datos(x, fichero):
  r = open(fichero, 'w')
  for n in x:
	r.write('%s\n' %n)
  r.close()	
	
	
def leer_datos(fichero):
  r = open(fichero, 'r')
  lineas = r.readlines()  
  lineas = [linea.split() for linea in lineas]
  return lineas
	
	
def get_precesion(): pass
	
	
	
	
	
def main(): pass



if __name__ == '__main__':
  main()