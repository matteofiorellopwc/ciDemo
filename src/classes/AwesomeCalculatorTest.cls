@isTest
private class AwesomeCalculatorTest {
    @isTest static void testCalloutAdd() {              
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new CalculatorCalloutMock());
        // Call the method that invokes a callout
        Double x = 1.0;
        Double y = 2.0;
        Double result = AwesomeCalculator.add(x, y);
        // Verify that a fake result is returned
        System.assertEquals(3.0, result); 
    }
      @isTest static void testCalloutMultiply() {              
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new CalculatorCalloutMock.CalculatorMockMultiply());
        // Call the method that invokes a callout
        Double x = 1.0;
        Double y = 2.0;
        Double result = AwesomeCalculator.multiply(x, y);
        // Verify that a fake result is returned
        System.assertEquals(3.0, result); 
    }
      @isTest static void testCalloutSubStract() {              
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new CalculatorCalloutMock.CalculatorMockSubstract());
        // Call the method that invokes a callout
        Double x = 2.0;
        Double y = 1.0;
        Double result = AwesomeCalculator.subtract(x, y);
        // Verify that a fake result is returned
        System.assertEquals(3.0, result); 
    }
      @isTest static void testCalloutDivide() {              
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new CalculatorCalloutMock.CalculatorMockDivide());
        // Call the method that invokes a callout
        Double x = 2.0;
        Double y = 1.0;
        Double result = AwesomeCalculator.divide(x, y);
        // Verify that a fake result is returned
        System.assertEquals(3.0, result); 
    }
}