

fat:
	sh createlib.sh
	-mkdir lib
	lipo -create -arch i386 libomp_oss/exports/mac_32/lib.thin/libiomp5.dylib -arch x86_64 libomp_oss/exports/mac_32e/lib.thin/libiomp5.dylib -output lib/libiomp5.dylib
	-mv libomp_oss/exports/common/include include

clean:
	rm *~
	rm -rf lib
	rm -rf include
