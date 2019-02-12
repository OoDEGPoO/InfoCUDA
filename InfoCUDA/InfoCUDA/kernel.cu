//CUDA
#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include "D:\Desarrollo\CUDA\CUDA-By-Example-master\common\book.h"

//Salida
#include <fstream>
#include <iostream>
using namespace std;
#include <stdio.h>

int main(void) {

	//Diego-Edgar Gracia Peña
	//Fichero de salida
	ofstream salida;
	salida.open("salida.txt");

	//dispositivo CUDA
	cudaDeviceProp prop;
	int count, driverVersion = 0, runtimeVersion = 0;
	HANDLE_ERROR(cudaGetDeviceCount(&count));
	for (int i = 0; i < count;i++) {
		cudaGetDeviceProperties(&prop, i);
		cudaDriverGetVersion(&driverVersion);
		cudaRuntimeGetVersion(&runtimeVersion);
		printf(" Nombre: %s \n", prop.name);
		printf(" --Driver de CUDA: %d.%d\n", driverVersion / 1000, (driverVersion % 100) / 10);
		printf(" --Version Runtime: %d.%d\n", runtimeVersion / 1000, (runtimeVersion % 100) / 10);
		printf(" --major y minior : %d,%d  \n", prop.major, prop.minor);
		printf(" --pciBusID: %d \n", prop.pciBusID);
		printf(" --pciDeviceID : %d \n", prop.pciDeviceID);
		printf(" --tccDriver : %d \n", prop.tccDriver);
		printf(" Frecuencia de reloj: %d \n", prop.clockRate);
		printf(" Numero de Multiprocesadores: %d \n", prop.multiProcessorCount);
		printf(" Capacidad Bus de Memoria: %d bits \n", prop.memoryBusWidth);
		printf(" Frecuencia de memoria: %d \n", prop.memoryClockRate);
		printf(" dimension warp: %d  \n", prop.warpSize);
		printf(" registros por bloque %d  \n", prop.regsPerBlock);
		printf(" memoria global total: %u \n", prop.totalGlobalMem);
		printf(" memoria compartida por bloque: %u \n", prop.sharedMemPerBlock);
		printf(" pitch: %u \n", prop.memPitch);//DEGP
		printf(" max hilos por bloque %d \n", prop.maxThreadsPerBlock);
		printf(" max dimension de bloque: %d \n", prop.maxThreadsDim);
		printf(" max dimension de grid: %d \n", prop.maxGridSize);
		printf(" total ConstMem: %u \n", prop.totalConstMem);
		printf(" alineamiento de textura: %u \n", prop.textureAlignment);
		printf(" deviceoverlap : %d \n", prop.deviceOverlap);
		printf(" multiProcessorCount : %d \n", prop.multiProcessorCount);
		printf(" kernelExecTimeoutEnabled : %d \n", prop.kernelExecTimeoutEnabled);
		printf(" integrated : %d \n", prop.integrated);
		printf(" canMapHostMemory : %d \n", prop.canMapHostMemory);
		printf(" computeMode : %d \n", prop.computeMode);
		printf(" concurrentKernels : %d \n", prop.concurrentKernels);
		printf(" ECCEnabled: %d \n", prop.ECCEnabled);

		salida << i << "\n";
		salida << " Nombre: " << prop.name << " \n";
		salida << " --Driver de CUDA: " << driverVersion / 1000 << "." << (driverVersion % 100) / 10 << "\n";
		salida << " --Version Runtime: " << runtimeVersion / 1000 << "." << (runtimeVersion % 100) / 10 << "\n";
		salida << " --major y minior : " << prop.major << "," << prop.minor << "\n";
		salida << " --pciBusID: " << prop.pciBusID << "\n";
		salida << " --pciDeviceID : " << prop.pciDeviceID << "\n";
		salida << " --tccDriver : " << prop.tccDriver << "\n";
		salida << " Frecuencia de reloj: " << prop.clockRate << "\n";
		salida << " Numero de Multiprocesadores: " << prop.multiProcessorCount << " \n";
		salida << " Capacidad Bus de Memoria: " << prop.memoryBusWidth << " bits\n";
		salida << " Frecuencia de memoria: " << prop.memoryClockRate << "\n";
		salida << " dimension de warp: " << prop.warpSize << "\n";
		salida << " registros por bloque " << prop.regsPerBlock << "\n";
		salida << " memoria global total: " << prop.totalGlobalMem << "\n";
		salida << " memoria compartida por bloque: " << prop.sharedMemPerBlock << "\n";
		salida << " pitch: " << prop.memPitch << "\n";
		salida << " max hilos por bloque " << prop.maxThreadsPerBlock << "\n";
		salida << " max dimension de bloque: " << prop.maxThreadsDim << "\n";//D
		salida << " max dimension de grid: " << prop.maxGridSize << "\n";//E
		salida << " total ConstMem: " << prop.totalConstMem << "\n";//G
		salida << " alineamiento de textura: " << prop.textureAlignment << "\n";//P
		salida << " deviceoverlap : " << prop.deviceOverlap << "\n";
		salida << " multiProcessorCount : " << prop.multiProcessorCount << "\n";
		salida << " kernelExecTimeoutEnabled : " << prop.kernelExecTimeoutEnabled << "\n";
		salida << " integrated : " << prop.integrated << "\n";
		salida << " canMapHostMemory : " << prop.canMapHostMemory << "\n";
		salida << " computeMode : " << prop.computeMode << "\n";
		salida << " concurrentKernels : " << prop.concurrentKernels << "\n";
		salida << " ECCEnabled: " << prop.ECCEnabled << "\n";
	}

	salida.close();
	//char *s;
	//scanf("%c", s);

	return 0;
}