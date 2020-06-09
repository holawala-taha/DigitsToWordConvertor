@isTest
public with sharing class UnitTestDigitsToWordConvertor {
    
    @isTest
    public static void testConversion(){

        System.assertEquals(digitsToWordConvertor.convert(0).toLowerCase(),'zero');
        System.assertEquals(digitsToWordConvertor.convert(7).toLowerCase(),'seven');
        System.assertEquals(digitsToWordConvertor.convert(15).toLowerCase(),'fifteen');
        System.assertEquals(digitsToWordConvertor.convert(20).toLowerCase(),'twenty');
        System.assertEquals(digitsToWordConvertor.convert(33).toLowerCase(),'thirty three');
        System.assertEquals(digitsToWordConvertor.convert(100).toLowerCase(),'one hundred');
        System.assertEquals(digitsToWordConvertor.convert(176).toLowerCase(),'one hundred seventy six');
        System.assertEquals(digitsToWordConvertor.convert(1182).toLowerCase(),'one thousand one hundred eigthy two');
        System.assertEquals(digitsToWordConvertor.convert(10200).toLowerCase(),'ten thousand two hundred');
        System.assertEquals(digitsToWordConvertor.convert(1110091).toLowerCase(),'one million one hundred ten thousand ninety one');
        System.assertEquals(digitsToWordConvertor.convert(1001110011).toLowerCase(),'one billion one million one hundred ten thousand eleven');
    }
}
