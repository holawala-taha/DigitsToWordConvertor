public class digitsToWordConvertor {
    
    public static String convert(Integer digits){
        if(digits == 0)
            return 'Zero';

        String numberInWords = '';

        // Divide the numbers into group of 3 numbers
        String digitsString         = String.valueOf(digits);
        List<String> digitList      = new List<String>();

        if(digitsString.length() <= 2)
            return convertFirstTwoDigitsToNumber(digits);
        
        if(digitsString.length() == 3){
            Integer firstDigit  = Integer.valueOf(digitsString.substring(0,1));
            Integer otherDigits = Integer.valueOf(digitsString.substring(1,3));

            if(Math.MOD(digits,100) == 0)
                return convertFirstTwoDigitsToNumber(firstDigit) + ' hundred';

            return convertFirstTwoDigitsToNumber(firstDigit) + ' hundred ' /*and '*/ +   convertFirstTwoDigitsToNumber(otherDigits);
        }

        if(digitsString.length() >=4 && digitsString.length() <=6){
            Integer last3Digits      = Integer.valueOf(digitsString.substring(digitsString.length() - 3,digitsString.length()));
            Integer initialDigits    = Integer.valueOf(digitsString.substring(0,digitsString.length() - 3));
            if(Math.MOD(digits,1000) == 0)
                return convert(initialDigits) + ' thousand';
            
            return convert(initialDigits) + ' thousand ' + convert(last3Digits);
        }

        if(digitsString.length() >=7 && digitsString.length() <=9){
            Integer last6Digits      = Integer.valueOf(digitsString.substring(digitsString.length() - 6,digitsString.length()));
            Integer initialDigits    = Integer.valueOf(digitsString.substring(0,digitsString.length() - 6));
            if(Math.MOD(digits,1000000) == 0)
                return convert(initialDigits) + ' million';
            
            return convert(initialDigits) + ' million ' + convert(last6Digits);
        }
        
        if(digitsString.length() >=10 && digitsString.length() <=12){
            Integer last9Digits      = Integer.valueOf(digitsString.substring(digitsString.length() - 9,digitsString.length()));
            Integer initialDigits    = Integer.valueOf(digitsString.substring(0,digitsString.length() - 9));
            if(Math.MOD(digits,1000000000) == 0)
                return convert(initialDigits) + ' billion';
            
            return convert(initialDigits) + ' billion ' + convert(last9Digits);
        }


        return 'Number to big';
    }



    public static String convertFirstTwoDigitsToNumber(Integer digits){
        System.debug('2 digit: ' + digits);
        if(digits > 99)
            return 'Only 2 digits should be passed';

        if((digits >0 && digits <=19) || math.mod(digits,10) == 0) 
            return convertBasicDigitsToNumber(digits);

        String secondPositionDigit  = string.valueOf(digits).substring(0,1);
        String firstPositionDigit   = string.valueOf(digits).substring(1,2);

        return convertBasicDigitsToNumber(Integer.valueOf(secondPositionDigit + '0')) + ' ' + convertBasicDigitsToNumber(Integer.valueOf(firstPositionDigit));

    }

    public static String convertBasicDigitsToNumber(Integer digits){
        
        switch on digits {
            when 0 {
                return '';
            }
            when 1 {
                return 'One';
            }
            when 2 {
                return 'Two';
            }
            when 3 {
                return 'Three';
            }
            when 4 {
                return 'Four';
            }
            when 5 {
                return 'Five';
            }
            when 6 {
                return 'Six';
            }
            when 7 {
                return 'Seven';
            }
            when 8 {
                return 'Eigth';
            }
            when 9 {
                return 'Nine';
            }
            when 10 {
                return 'Ten';
            }
            when 11 {
                return 'Eleven';
            }
            when 12 {
                return 'Twelve';
            }
            when 13 {
                return 'Thirteen';
            }
            when 14 {
                return 'Fourteen';
            }
            when 15 {
                return 'Fifteen';
            }
            when 16 {
                return 'Sixteen';
            }
            when 17 {
                return 'Seventeen';
            }
            when 18 {
                return 'Eighteen';
            }
            when 19 {
                return 'Nineteen';
            }
            when 20 {
                return 'Twenty';
            }
            when 30 {
                return 'Thirty';
            }
            when 40 {
                return 'Fourty';
            }
            when 50 {
                return 'Fifty';
            }
            when 60 {
                return 'Sixty';
            }
            when 70 {
                return 'Seventy';
            }
            when 80 {
                return 'Eigthy';
            }
            when 90 {
                return 'Ninety';
            }
            when else {
                return 'Invalid digits';
            }
         }
    }

}
