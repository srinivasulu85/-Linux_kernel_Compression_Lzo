#include <stdio.h>
#include <stdlib.h>
#include<stdio.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <unistd.h>
#include  "D:\Users\srinivas.d\Documents\LZO\src\lzo.h"
#include  "D:\Users\srinivas.d\Documents\LZO\src\lzodefs.h"

#define IN_LEN (128*1024L)
#define OUT_LEN (IN_LEN + IN_LEN/16 + 64 + 3)
 
extern int lzo1x_1_compress(const unsigned char *src, size_t src_len,
		     unsigned char *dst, size_t *dst_len, void *wrkmem);
		 
 extern  int lzo1x_decompress_safe(const unsigned char *src, size_t src_len,
			  unsigned char *dst, size_t *dst_len);
int main (){
   
    

   char *inputFileData = "/data/input-comp.comp", *outputFileComp = "output-comp.comp", *outputFileDecomp = "output-decomp.comp";

   FILE *fp = (FILE*)fopen(inputFileData,"rb");
   FILE *fpout = (FILE*)fopen(outputFileComp,"wb");

   static unsigned char input_data[IN_LEN],    // Input data buffer
                   output_data_buff[IN_LEN]   // output data from compression
                  ;  
   
    size_t szReadData, szWriteData;
    void *wrkmem;
    size_t out_len;
    
    wrkmem = (void *)malloc(LZO1X_1_MEM_COMPRESS);

   if ((fp != NULL) && (fpout != NULL)){
      do {
         szReadData = fread(&input_data[0],sizeof(unsigned char ), IN_LEN, fp);
         if (szReadData > 0 ){
            
            unsigned int szCompData  = lzo1x_1_compress(&input_data[0], szReadData, &output_data_buff[0], &out_len, wrkmem);
            szWriteData = fwrite(output_data_buff,1, (size_t)out_len,fpout);
            printf("compressed %lu bytes into %lu bytes\n",(unsigned long) szReadData, (unsigned long) out_len);
           
          }
      } while (szReadData > 0);
      fclose(fp);
      fclose(fpout);

      /// Now test decompression
      FILE *fpin = (FILE*)fopen(outputFileComp,"rb");
      FILE *fpout = (FILE*)fopen(outputFileDecomp,"wb");
      int extractionResult; 
      size_t szReadData;
      size_t new_length;

      if ((fpin != NULL) && (fpout != NULL)){
         do {
             new_length = IN_LEN;
            szReadData = fread(&input_data[0],sizeof(unsigned char ), IN_LEN, fpin);
            if (szReadData > 0 ){
               extractionResult = lzo1x_decompress_safe(&input_data[0], szReadData, &output_data_buff[0], &new_length );
               szWriteData = fwrite(output_data_buff,1, (size_t)new_length,fpout);
               printf("decompressed %lu bytes back into %lu bytes\n",(unsigned long) szReadData, (unsigned long) new_length);
            }
         } while (szReadData > 0);
         printf ("Decompressed data write completed\n");
         fclose(fpin);
         fclose(fpout);
      }
   }
      
    free(wrkmem);
    
   return 0;
}

