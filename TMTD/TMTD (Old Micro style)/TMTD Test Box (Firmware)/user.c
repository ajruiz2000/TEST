


 if(mUSBUSARTIsTxTrfReady())
    {
		numBytesRead = getsUSBUSART(USB_Out_Buffer,64);
		if(numBytesRead != 0)
		{
			BYTE i;
	        
			for(i=0;i<numBytesRead;i++)
			{
				switch(USB_Out_Buffer[i])
				{
					case 0x0A:
					case 0x0D:
						USB_In_Buffer[i] = USB_Out_Buffer[i];
						break;
					default:
						USB_In_Buffer[i] = USB_Out_Buffer[i] + 1;
						break;
				}

			}

			putUSBUSART(USB_In_Buffer,numBytesRead);
		}
	}