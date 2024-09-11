#include <SPI.h>
#include <MFRC522.h>
#include <AESLib.h>
#include <SHA256.h>

#define RST_PIN         9
#define SS_PIN          10
#define balanceBlock    4
#define pinBlock        1
#define phoneBlock      2
#define maxAttempts     5
#define lockoutDuration 1800000  // 30 minutes in milliseconds

MFRC522 mfrc522(SS_PIN, RST_PIN);
AESLib aesLib;
SHA256 sha256;
byte aes_key[] = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F };
unsigned long lockoutStartTime = 0;
byte failedAttempts = 0;

String phoneNumber = "5643765432"; // Store phone number to be written on the card
int initialBalance = 10000;        // Initial balance in rupees
String pinCode = "1234";           // Example PIN (hidden on card)

// Encrypt Data
void encryptData(byte* input, byte* output) {
    aesLib.encrypt(input, sizeof(input), output, aes_key, 128, NULL);
}

// Decrypt Data
void decryptData(byte* input, byte* output) {
    aesLib.decrypt(input, sizeof(input), output, aes_key, 128, NULL);
}

// Hash Data
void generateHash(byte* input, byte* hashOutput) {
    sha256.reset();
    sha256.update(input, 16);  // Update with the size of input
    sha256.finalize(hashOutput, 32);  // Generate a 32-byte hash
}

// Verify Hash
bool verifyHash(byte* data, byte* storedHash) {
    byte newHash[32];
    generateHash(data, newHash);
    return memcmp(newHash, storedHash, 32) == 0;
}

// Authenticate Block
bool authenticateBlock(byte block, MFRC522::MIFARE_Key* key) {
    MFRC522::StatusCode status = mfrc522.PCD_Authenticate(MFRC522::PICC_CMD_MF_AUTH_KEY_A, block, key, &(mfrc522.uid));
    return status == MFRC522::STATUS_OK;
}

// Check if Card is Locked
bool isCardLocked() {
    if (failedAttempts >= maxAttempts) {
        unsigned long currentTime = millis();
        if (currentTime - lockoutStartTime < lockoutDuration) {
            Serial.println("Card is locked due to too many failed attempts.");
            return true;
        } else {
            // Reset failed attempts after lockout period
            failedAttempts = 0;
        }
    }
    return false;
}

// Check PIN with Brute Force Protection
bool checkPIN(String enteredPIN, String storedPIN) {
    if (isCardLocked()) {
        return false;
    }

    if (enteredPIN != storedPIN) {
        failedAttempts++;
        if (failedAttempts >= maxAttempts) {
            lockoutStartTime = millis();
            Serial.println("Too many failed attempts. Card locked for 30 minutes.");
        } else {
            Serial.print("Incorrect PIN! Attempts remaining: ");
            Serial.println(maxAttempts - failedAttempts);
        }
        return false;
    } else {
        failedAttempts = 0; // Reset counter on success
        return true;
    }
}

void setup() {
    Serial.begin(9600);
    SPI.begin();
    mfrc522.PCD_Init();
    Serial.println("Place your NFC card near the reader...");
}

void loop() {
    if (!mfrc522.PICC_IsNewCardPresent() || !mfrc522.PICC_ReadCardSerial()) {
        return;
    }

    MFRC522::MIFARE_Key key;
    for (byte i = 0; i < 6; i++) {
        key.keyByte[i] = 0xFF; // Default key
    }

    // Store encrypted balance
    if (authenticateBlock(balanceBlock, &key)) {
        byte balanceData[16];
        sprintf((char*)balanceData, "%d", initialBalance); // Convert balance to string
        byte encryptedBalance[16];
        encryptData(balanceData, encryptedBalance);
        mfrc522.MIFARE_Write(balanceBlock, encryptedBalance, 16);
        Serial.println("Balance encrypted and written.");
    }

    // Store encrypted phone number
    if (authenticateBlock(phoneBlock, &key)) {
        byte phoneData[16];
        phoneNumber.toCharArray((char*)phoneData, 16); // Convert phone number to byte array
        byte encryptedPhone[16];
        encryptData(phoneData, encryptedPhone);
        mfrc522.MIFARE_Write(phoneBlock, encryptedPhone, 16);
        Serial.println("Phone number encrypted and written.");
    }

    // Store encrypted PIN
    if (authenticateBlock(pinBlock, &key)) {
        byte pinData[16];
        pinCode.toCharArray((char*)pinData, 16); // Convert PIN to byte array
        byte encryptedPIN[16];
        encryptData(pinData, encryptedPIN);
        mfrc522.MIFARE_Write(pinBlock, encryptedPIN, 16);
        Serial.println("PIN encrypted and written.");
    }

    mfrc522.PICC_HaltA();  // Halt PICC
    mfrc522.PCD_StopCrypto1();  // Stop encryption
}
