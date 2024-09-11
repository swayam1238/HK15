#include <SPI.h>
#include <MFRC522.h>
#include <AESLib.h>

#define RST_PIN         9
#define SS_PIN          10
#define balanceBlock    4
#define pinBlock        1
#define transactionLimit 2000  // ₹2000 transaction limit

MFRC522 mfrc522(SS_PIN, RST_PIN);
AESLib aesLib;
byte aes_key[] = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F };

// Encrypt Data
void encryptData(byte* input, byte* output) {
    aesLib.encrypt(input, sizeof(input), output, aes_key, 128, NULL);
}

// Decrypt Data
void decryptData(byte* input, byte* output) {
    aesLib.decrypt(input, sizeof(input), output, aes_key, 128, NULL);
}

// Authenticate Block
bool authenticateBlock(byte block, MFRC522::MIFARE_Key* key) {
    MFRC522::StatusCode status = mfrc522.PCD_Authenticate(MFRC522::PICC_CMD_MF_AUTH_KEY_A, block, key, &(mfrc522.uid));
    return status == MFRC522::STATUS_OK;
}

// Check PIN
bool checkPIN(String enteredPIN, String storedPIN) {
    return enteredPIN == storedPIN;
}

void setup() {
    Serial.begin(9600);
    SPI.begin();
    mfrc522.PCD_Init();
    Serial.println("POS Reader Ready.");
}

void loop() {
    if (!mfrc522.PICC_IsNewCardPresent() || !mfrc522.PICC_ReadCardSerial()) {
        return;
    }

    MFRC522::MIFARE_Key key;
    for (byte i = 0; i < 6; i++) {
        key.keyByte[i] = 0xFF; // Default key
    }

    if (authenticateBlock(balanceBlock, &key)) {
        byte buffer[16], decryptedBalance[16];
        mfrc522.MIFARE_Read(balanceBlock, buffer, NULL);
        decryptData(buffer, decryptedBalance);
        int balance = atoi((char*)decryptedBalance);
        Serial.print("Current balance: ₹");
        Serial.println(balance);

        int transactionAmount = 200; // Example transaction amount (set dynamically)
        Serial.print("Transaction Amount: ₹");
        Serial.println(transactionAmount);

        if (transactionAmount > transactionLimit) {
            Serial.println("Enter PIN: ");
            String enteredPIN = "1234"; // Example (replace with actual input)
            
            if (authenticateBlock(pinBlock, &key)) {
                byte bufferPIN[16], decryptedPIN[16];
                mfrc522.MIFARE_Read(pinBlock, bufferPIN, NULL);
                decryptData(bufferPIN, decryptedPIN);
                String storedPIN = String((char*)decryptedPIN);

                if (!checkPIN(enteredPIN, storedPIN)) {
                    Serial.println("Transaction failed. Incorrect PIN.");
                    return;
                }
            }
        }

        if (balance >= transactionAmount) {
            balance -= transactionAmount;
            byte encryptedBalance[16];
            encryptData((byte*)String(balance).c_str(), encryptedBalance);
            mfrc522.MIFARE_Write(balanceBlock, encryptedBalance, 16);
            Serial.print("Transaction successful! New balance: ₹");
            Serial.println(balance);
        } else {
            Serial.println("Insufficient funds.");
        }
    }

    mfrc522.PICC_HaltA();  // Halt PICC
    mfrc522.PCD_StopCrypto1();  // Stop encryption
}
