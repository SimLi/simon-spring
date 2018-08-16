package com.devperson;


import com.devperson.ws.MainServiceStub;
import org.apache.axis2.AxisFault;

import java.rmi.RemoteException;

public class CloudServerApplicationTests {

	public static void main(String[] args) {
		try {
			MainServiceStub mainServiceStub = new MainServiceStub();
			mainServiceStub.requestmyBusiness(null);
		} catch (AxisFault axisFault) {
			axisFault.printStackTrace();
		} catch (RemoteException e) {
			e.printStackTrace();
		}
	}


}
