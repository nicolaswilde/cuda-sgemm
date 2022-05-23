default:
	nvcc sgemm.cu -o sgemm.exe -arch=compute_61 -code=sm_61 -lcublas --ptxas-options=-v -maxrregcount=128

run:
	sgemm.exe
