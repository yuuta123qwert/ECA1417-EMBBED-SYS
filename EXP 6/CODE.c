```cpp
// Arduino to 16x2 LCD Display using Proteus

#include <LiquidCrystal.h>

// LCD pins: RS, EN, D4, D5, D6, D7
LiquidCrystal lcd(7, 8, 9, 10, 11, 12);

void setup()
{
  lcd.begin(16, 2);

  lcd.print("Hello World!");
}

void loop()
{
  for (int i = 0; i < 13; i++)
  {
    lcd.scrollDisplayLeft();
    delay(700);
  }
}
```
