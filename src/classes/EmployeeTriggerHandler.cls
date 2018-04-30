public class EmployeeTriggerHandler{
/*Comment-Demo1*/
    public static void invokeFlow(Employee__c  emp){
        Map<String, Object> params = new Map<String, Object>();
        params.put('varInput', emp.Name);
        Flow.Interview.InvokeFlowFromApex callFlow = new Flow.Interview.InvokeFlowFromApex(params);
        callFlow.start();
         
        // Obtain the results
        String returnValue = (String) callFlow.getVariableValue('varOutput');
        System.debug('Flow returned ' + returnValue);        
    }
	
	public static fetchEmpName void(){
		System.debug('--fetchEmpName--');
	}
}