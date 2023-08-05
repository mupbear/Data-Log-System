#include <SPI.h>          //Library for using SPI Communication 
#include <mcp2515.h>      //Library for using CAN Communication

struct can_frame canMsgTX;
struct can_frame canMsgRX;

MCP2515 mcp2515(10); // chip select CS pin 

void setup()
{
  Serial.begin(9600);
  SPI.begin();               //Begins SPI communication

  mcp2515.reset();
  mcp2515.setBitrate(CAN_500KBPS, MCP_8MHZ); //Sets CAN at speed 500KBPS and Clock 8MHz
  mcp2515.setNormalMode();

  canMsgTX.can_id  = 0x040;           //CAN id as 0x036
  canMsgTX.can_dlc = 1;               //CAN data length as 1 byte
}

void loop()
{
  // sends data
  canMsgTX.data[0] = 12;        //Update pot value in [0] 
  mcp2515.sendMessage(&canMsgTX);     //Sends the CAN message
  
  // receives data
  if (mcp2515.readMessage(&canMsgRX) == MCP2515::ERROR_OK) // To receive data (Poll Read)
  {
    if (canMsgRX.can_id == 0x036)
    {
      int x = canMsgRX.data[0];
      Serial.println("Message:");
      Serial.println(x);
    }
  }
  delay(200);
}
