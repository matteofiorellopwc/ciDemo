@isTest
global class CalculatorCalloutMock implements WebServiceMock {
   global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
        // start - specify the response you want to send
        calculatorServices.doAddResponse response_x = 
            new calculatorServices.doAddResponse();
        response_x.return_x = 3.0;
        // end
        response.put('response_x', response_x); 
   }
   
   global class CalculatorMockDivide implements WebServiceMock{
	   global void doInvoke(
	           Object stub,
	           Object request,
	           Map<String, Object> response,
	           String endpoint,
	           String soapAction,
	           String requestName,
	           String responseNS,
	           String responseName,
	           String responseType) {
	        // start - specify the response you want to send
	        calculatorServices.doDivideResponse response_x = new calculatorServices.doDivideResponse();
	        response_x.return_x = 3.0;
	        // end
	        response.put('response_x', response_x); 
	   }
	}
	
	 global class CalculatorMockMultiply implements WebServiceMock{
	   global void doInvoke(
	           Object stub,
	           Object request,
	           Map<String, Object> response,
	           String endpoint,
	           String soapAction,
	           String requestName,
	           String responseNS,
	           String responseName,
	           String responseType) {
	        // start - specify the response you want to send
	        calculatorServices.doMultiplyResponse response_x = new calculatorServices.doMultiplyResponse();
	        response_x.return_x = 3.0;
	        // end
	        response.put('response_x', response_x); 
	   }
	}
	
	 global class CalculatorMockSubstract implements WebServiceMock{
	   global void doInvoke(
	           Object stub,
	           Object request,
	           Map<String, Object> response,
	           String endpoint,
	           String soapAction,
	           String requestName,
	           String responseNS,
	           String responseName,
	           String responseType) {
	        // start - specify the response you want to send
	        calculatorServices.doSubtractResponse response_x = new calculatorServices.doSubtractResponse();
	        response_x.return_x = 3.0;
	        // end
	        response.put('response_x', response_x); 
	   }
	}
	
}