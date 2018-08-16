<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://tempuri.org/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" targetNamespace="http://tempuri.org/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
      <s:element name="RequestBldList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="projGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="bldGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="state" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestBldListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="RequestBldListResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="RequestResult">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="ReturnTable">
            <s:complexType>
              <s:sequence>
                <s:any minOccurs="0" maxOccurs="unbounded" namespace="http://www.w3.org/2001/XMLSchema" processContents="lax" />
                <s:any minOccurs="1" namespace="urn:schemas-microsoft-com:xml-diffgram-v1" processContents="lax" />
              </s:sequence>
            </s:complexType>
          </s:element>
          <s:element minOccurs="0" maxOccurs="1" name="MainContent" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ErrMessage" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="ExecuteResult" type="s:boolean" />
        </s:sequence>
      </s:complexType>
      <s:element name="RequestRoomList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="projGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="bldGUID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestRoomListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="RequestRoomListResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestRoomCstList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="projGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="bldGUID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestRoomCstListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="RequestRoomCstListResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="UpdateBldState">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="bldList" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="UpdateBldStateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UpdateBldStateResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="InsertTenantList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="TenantXmlStr" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="InsertTenantListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="InsertTenantListResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestCstAndOppListDT">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="StrMobilePhone" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StrOppGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DtLastUpdateDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestCstAndOppListDTResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="RequestCstAndOppListDTResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="InsertCstAndOppList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CstAndOppXmlStr" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="InsertCstAndOppListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="InsertCstAndOppListResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestActivityListDT">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="LastUpdateDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="oppGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="userCode" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestActivityListDTResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="RequestActivityListDTResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="InsertActivityList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ActiityXmlStr" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="InsertActivityListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="InsertActivityListResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="UpdateOppSalesMan">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="strOppGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="strOriginalUserCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ModifiedUserCode" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="UpdateOppSalesManResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UpdateOppSalesManResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="InsertYqwqyInfo">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="TradeGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="GjContent" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="YqReason" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="GjType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="GjTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Remark" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="InsertYqwqyInfoResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="InsertYqwqyInfoResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="InsertYqCkInfo">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="TradeGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Qkyy" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CkMemo" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CreateOn" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="GjType" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="InsertYqCkInfoResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="InsertYqCkInfoResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Room_Fp">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="xmlData" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Reason" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Room_FpResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Room_FpResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="YQywDB">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="tradeguids" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="dbType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="gjType" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="YQywDBResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="YQywDBResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="YQywReAssignedZrr">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="tradeguids" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="usercode" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="YQywReAssignedZrrResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="YQywReAssignedZrrResult" type="tns:RequestResult" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestZsjProjects">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="buGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="projGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="begTimeStamp" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="endTimeStamp" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestZsjProjectsResponse">
        <s:complexType />
      </s:element>
      <s:element name="RequestZsjProducts">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="projGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="subProjGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="productGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="begTimeStamp" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="endTimeStamp" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestZsjProductsResponse">
        <s:complexType />
      </s:element>
      <s:element name="RequestZsjBuildings">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="projGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="subProjGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="bldGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="begTimeStamp" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="endTimeStamp" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestZsjBuildingsResponse">
        <s:complexType />
      </s:element>
      <s:element name="RequestZsjHxSets">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="subProjGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="bldGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="begTimeStamp" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="endTimeStamp" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestZsjHxSetsResponse">
        <s:complexType />
      </s:element>
      <s:element name="RequestZsjRooms">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="projGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="subProjGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="bldGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="roomGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="begTimeStamp" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="endTimeStamp" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestZsjRoomsResponse">
        <s:complexType />
      </s:element>
      <s:element name="RequestProviderInf">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="providerGUIDstr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="providerName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="beginTim" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="endTime" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestProviderInfResponse">
        <s:complexType />
      </s:element>
      <s:element name="RequestZsjBD">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="projGUIDStr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="projGUID_fqStr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="BDGUIDStr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="beginTim" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="endTime" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestZsjBDResponse">
        <s:complexType />
      </s:element>
      <s:element name="RequestProviderContacts">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="providerGUIDStr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="providerName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="providerEmployeeGUIDStr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="employeeName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="phone" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="begTimeStamp" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="endTimeStamp" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestProviderContactsResponse">
        <s:complexType />
      </s:element>
      <s:element name="RequestmyBusiness">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CompanyGUID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Sscrm_timestamp_data" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Escrm_timestamp_data" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestmyBusinessResponse">
        <s:complexType />
      </s:element>
      <s:element name="RequestCustomer">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CstGUIDStr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CstName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="MobileTelStr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="begTimeStamp" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="endTimeStamp" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestCustomerResponse">
        <s:complexType />
      </s:element>
      <s:element name="RequestCustomerAttach">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CstGUIDStr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ProjGUIDStr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="begTimeStamp" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="endTimeStamp" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestCustomerAttachResponse">
        <s:complexType />
      </s:element>
      <s:element name="RequestProviderProductType">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="providerGUIDStr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="providerName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ProductTypeCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="begTimeStamp" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="endTimeStamp" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="RequestProviderProductTypeResponse">
        <s:complexType />
      </s:element>
      <s:element name="RequestResult" nillable="true" type="tns:RequestResult" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="RequestBldListSoapIn">
    <wsdl:part name="parameters" element="tns:RequestBldList" />
  </wsdl:message>
  <wsdl:message name="RequestBldListSoapOut">
    <wsdl:part name="parameters" element="tns:RequestBldListResponse" />
  </wsdl:message>
  <wsdl:message name="RequestRoomListSoapIn">
    <wsdl:part name="parameters" element="tns:RequestRoomList" />
  </wsdl:message>
  <wsdl:message name="RequestRoomListSoapOut">
    <wsdl:part name="parameters" element="tns:RequestRoomListResponse" />
  </wsdl:message>
  <wsdl:message name="RequestRoomCstListSoapIn">
    <wsdl:part name="parameters" element="tns:RequestRoomCstList" />
  </wsdl:message>
  <wsdl:message name="RequestRoomCstListSoapOut">
    <wsdl:part name="parameters" element="tns:RequestRoomCstListResponse" />
  </wsdl:message>
  <wsdl:message name="UpdateBldStateSoapIn">
    <wsdl:part name="parameters" element="tns:UpdateBldState" />
  </wsdl:message>
  <wsdl:message name="UpdateBldStateSoapOut">
    <wsdl:part name="parameters" element="tns:UpdateBldStateResponse" />
  </wsdl:message>
  <wsdl:message name="InsertTenantListSoapIn">
    <wsdl:part name="parameters" element="tns:InsertTenantList" />
  </wsdl:message>
  <wsdl:message name="InsertTenantListSoapOut">
    <wsdl:part name="parameters" element="tns:InsertTenantListResponse" />
  </wsdl:message>
  <wsdl:message name="RequestCstAndOppListDTSoapIn">
    <wsdl:part name="parameters" element="tns:RequestCstAndOppListDT" />
  </wsdl:message>
  <wsdl:message name="RequestCstAndOppListDTSoapOut">
    <wsdl:part name="parameters" element="tns:RequestCstAndOppListDTResponse" />
  </wsdl:message>
  <wsdl:message name="InsertCstAndOppListSoapIn">
    <wsdl:part name="parameters" element="tns:InsertCstAndOppList" />
  </wsdl:message>
  <wsdl:message name="InsertCstAndOppListSoapOut">
    <wsdl:part name="parameters" element="tns:InsertCstAndOppListResponse" />
  </wsdl:message>
  <wsdl:message name="RequestActivityListDTSoapIn">
    <wsdl:part name="parameters" element="tns:RequestActivityListDT" />
  </wsdl:message>
  <wsdl:message name="RequestActivityListDTSoapOut">
    <wsdl:part name="parameters" element="tns:RequestActivityListDTResponse" />
  </wsdl:message>
  <wsdl:message name="InsertActivityListSoapIn">
    <wsdl:part name="parameters" element="tns:InsertActivityList" />
  </wsdl:message>
  <wsdl:message name="InsertActivityListSoapOut">
    <wsdl:part name="parameters" element="tns:InsertActivityListResponse" />
  </wsdl:message>
  <wsdl:message name="UpdateOppSalesManSoapIn">
    <wsdl:part name="parameters" element="tns:UpdateOppSalesMan" />
  </wsdl:message>
  <wsdl:message name="UpdateOppSalesManSoapOut">
    <wsdl:part name="parameters" element="tns:UpdateOppSalesManResponse" />
  </wsdl:message>
  <wsdl:message name="InsertYqwqyInfoSoapIn">
    <wsdl:part name="parameters" element="tns:InsertYqwqyInfo" />
  </wsdl:message>
  <wsdl:message name="InsertYqwqyInfoSoapOut">
    <wsdl:part name="parameters" element="tns:InsertYqwqyInfoResponse" />
  </wsdl:message>
  <wsdl:message name="InsertYqCkInfoSoapIn">
    <wsdl:part name="parameters" element="tns:InsertYqCkInfo" />
  </wsdl:message>
  <wsdl:message name="InsertYqCkInfoSoapOut">
    <wsdl:part name="parameters" element="tns:InsertYqCkInfoResponse" />
  </wsdl:message>
  <wsdl:message name="Room_FpSoapIn">
    <wsdl:part name="parameters" element="tns:Room_Fp" />
  </wsdl:message>
  <wsdl:message name="Room_FpSoapOut">
    <wsdl:part name="parameters" element="tns:Room_FpResponse" />
  </wsdl:message>
  <wsdl:message name="YQywDBSoapIn">
    <wsdl:part name="parameters" element="tns:YQywDB" />
  </wsdl:message>
  <wsdl:message name="YQywDBSoapOut">
    <wsdl:part name="parameters" element="tns:YQywDBResponse" />
  </wsdl:message>
  <wsdl:message name="YQywReAssignedZrrSoapIn">
    <wsdl:part name="parameters" element="tns:YQywReAssignedZrr" />
  </wsdl:message>
  <wsdl:message name="YQywReAssignedZrrSoapOut">
    <wsdl:part name="parameters" element="tns:YQywReAssignedZrrResponse" />
  </wsdl:message>
  <wsdl:message name="RequestZsjProjectsSoapIn">
    <wsdl:part name="parameters" element="tns:RequestZsjProjects" />
  </wsdl:message>
  <wsdl:message name="RequestZsjProjectsSoapOut">
    <wsdl:part name="parameters" element="tns:RequestZsjProjectsResponse" />
  </wsdl:message>
  <wsdl:message name="RequestZsjProductsSoapIn">
    <wsdl:part name="parameters" element="tns:RequestZsjProducts" />
  </wsdl:message>
  <wsdl:message name="RequestZsjProductsSoapOut">
    <wsdl:part name="parameters" element="tns:RequestZsjProductsResponse" />
  </wsdl:message>
  <wsdl:message name="RequestZsjBuildingsSoapIn">
    <wsdl:part name="parameters" element="tns:RequestZsjBuildings" />
  </wsdl:message>
  <wsdl:message name="RequestZsjBuildingsSoapOut">
    <wsdl:part name="parameters" element="tns:RequestZsjBuildingsResponse" />
  </wsdl:message>
  <wsdl:message name="RequestZsjHxSetsSoapIn">
    <wsdl:part name="parameters" element="tns:RequestZsjHxSets" />
  </wsdl:message>
  <wsdl:message name="RequestZsjHxSetsSoapOut">
    <wsdl:part name="parameters" element="tns:RequestZsjHxSetsResponse" />
  </wsdl:message>
  <wsdl:message name="RequestZsjRoomsSoapIn">
    <wsdl:part name="parameters" element="tns:RequestZsjRooms" />
  </wsdl:message>
  <wsdl:message name="RequestZsjRoomsSoapOut">
    <wsdl:part name="parameters" element="tns:RequestZsjRoomsResponse" />
  </wsdl:message>
  <wsdl:message name="RequestProviderInfSoapIn">
    <wsdl:part name="parameters" element="tns:RequestProviderInf" />
  </wsdl:message>
  <wsdl:message name="RequestProviderInfSoapOut">
    <wsdl:part name="parameters" element="tns:RequestProviderInfResponse" />
  </wsdl:message>
  <wsdl:message name="RequestZsjBDSoapIn">
    <wsdl:part name="parameters" element="tns:RequestZsjBD" />
  </wsdl:message>
  <wsdl:message name="RequestZsjBDSoapOut">
    <wsdl:part name="parameters" element="tns:RequestZsjBDResponse" />
  </wsdl:message>
  <wsdl:message name="RequestProviderContactsSoapIn">
    <wsdl:part name="parameters" element="tns:RequestProviderContacts" />
  </wsdl:message>
  <wsdl:message name="RequestProviderContactsSoapOut">
    <wsdl:part name="parameters" element="tns:RequestProviderContactsResponse" />
  </wsdl:message>
  <wsdl:message name="RequestmyBusinessSoapIn">
    <wsdl:part name="parameters" element="tns:RequestmyBusiness" />
  </wsdl:message>
  <wsdl:message name="RequestmyBusinessSoapOut">
    <wsdl:part name="parameters" element="tns:RequestmyBusinessResponse" />
  </wsdl:message>
  <wsdl:message name="RequestCustomerSoapIn">
    <wsdl:part name="parameters" element="tns:RequestCustomer" />
  </wsdl:message>
  <wsdl:message name="RequestCustomerSoapOut">
    <wsdl:part name="parameters" element="tns:RequestCustomerResponse" />
  </wsdl:message>
  <wsdl:message name="RequestCustomerAttachSoapIn">
    <wsdl:part name="parameters" element="tns:RequestCustomerAttach" />
  </wsdl:message>
  <wsdl:message name="RequestCustomerAttachSoapOut">
    <wsdl:part name="parameters" element="tns:RequestCustomerAttachResponse" />
  </wsdl:message>
  <wsdl:message name="RequestProviderProductTypeSoapIn">
    <wsdl:part name="parameters" element="tns:RequestProviderProductType" />
  </wsdl:message>
  <wsdl:message name="RequestProviderProductTypeSoapOut">
    <wsdl:part name="parameters" element="tns:RequestProviderProductTypeResponse" />
  </wsdl:message>
  <wsdl:message name="RequestBldListHttpGetIn">
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="bldGUID" type="s:string" />
    <wsdl:part name="state" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestBldListHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="RequestRoomListHttpGetIn">
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="bldGUID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestRoomListHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="RequestRoomCstListHttpGetIn">
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="bldGUID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestRoomCstListHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="UpdateBldStateHttpGetIn">
    <wsdl:part name="bldList" type="s:string" />
  </wsdl:message>
  <wsdl:message name="UpdateBldStateHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="InsertTenantListHttpGetIn">
    <wsdl:part name="TenantXmlStr" type="s:string" />
  </wsdl:message>
  <wsdl:message name="InsertTenantListHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="RequestCstAndOppListDTHttpGetIn">
    <wsdl:part name="StrMobilePhone" type="s:string" />
    <wsdl:part name="StrOppGUID" type="s:string" />
    <wsdl:part name="DtLastUpdateDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestCstAndOppListDTHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="InsertCstAndOppListHttpGetIn">
    <wsdl:part name="CstAndOppXmlStr" type="s:string" />
  </wsdl:message>
  <wsdl:message name="InsertCstAndOppListHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="RequestActivityListDTHttpGetIn">
    <wsdl:part name="LastUpdateDate" type="s:string" />
    <wsdl:part name="oppGUID" type="s:string" />
    <wsdl:part name="userCode" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestActivityListDTHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="InsertActivityListHttpGetIn">
    <wsdl:part name="ActiityXmlStr" type="s:string" />
  </wsdl:message>
  <wsdl:message name="InsertActivityListHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="UpdateOppSalesManHttpGetIn">
    <wsdl:part name="strOppGUID" type="s:string" />
    <wsdl:part name="strOriginalUserCode" type="s:string" />
    <wsdl:part name="ModifiedUserCode" type="s:string" />
  </wsdl:message>
  <wsdl:message name="UpdateOppSalesManHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="InsertYqwqyInfoHttpGetIn">
    <wsdl:part name="TradeGUID" type="s:string" />
    <wsdl:part name="UserCode" type="s:string" />
    <wsdl:part name="GjContent" type="s:string" />
    <wsdl:part name="YqReason" type="s:string" />
    <wsdl:part name="GjType" type="s:string" />
    <wsdl:part name="GjTime" type="s:string" />
    <wsdl:part name="Remark" type="s:string" />
  </wsdl:message>
  <wsdl:message name="InsertYqwqyInfoHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="InsertYqCkInfoHttpGetIn">
    <wsdl:part name="TradeGUID" type="s:string" />
    <wsdl:part name="UserCode" type="s:string" />
    <wsdl:part name="Qkyy" type="s:string" />
    <wsdl:part name="CkMemo" type="s:string" />
    <wsdl:part name="CreateOn" type="s:string" />
    <wsdl:part name="GjType" type="s:string" />
  </wsdl:message>
  <wsdl:message name="InsertYqCkInfoHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="Room_FpHttpGetIn">
    <wsdl:part name="xmlData" type="s:string" />
    <wsdl:part name="UserCode" type="s:string" />
    <wsdl:part name="Reason" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Room_FpHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="YQywDBHttpGetIn">
    <wsdl:part name="tradeguids" type="s:string" />
    <wsdl:part name="dbType" type="s:string" />
    <wsdl:part name="gjType" type="s:string" />
  </wsdl:message>
  <wsdl:message name="YQywDBHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="YQywReAssignedZrrHttpGetIn">
    <wsdl:part name="tradeguids" type="s:string" />
    <wsdl:part name="usercode" type="s:string" />
  </wsdl:message>
  <wsdl:message name="YQywReAssignedZrrHttpGetOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="RequestZsjProjectsHttpGetIn">
    <wsdl:part name="buGUID" type="s:string" />
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestZsjProjectsHttpGetOut" />
  <wsdl:message name="RequestZsjProductsHttpGetIn">
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="subProjGUID" type="s:string" />
    <wsdl:part name="productGUID" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestZsjProductsHttpGetOut" />
  <wsdl:message name="RequestZsjBuildingsHttpGetIn">
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="subProjGUID" type="s:string" />
    <wsdl:part name="bldGUID" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestZsjBuildingsHttpGetOut" />
  <wsdl:message name="RequestZsjHxSetsHttpGetIn">
    <wsdl:part name="subProjGUID" type="s:string" />
    <wsdl:part name="bldGUID" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestZsjHxSetsHttpGetOut" />
  <wsdl:message name="RequestZsjRoomsHttpGetIn">
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="subProjGUID" type="s:string" />
    <wsdl:part name="bldGUID" type="s:string" />
    <wsdl:part name="roomGUID" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestZsjRoomsHttpGetOut" />
  <wsdl:message name="RequestProviderInfHttpGetIn">
    <wsdl:part name="providerGUIDstr" type="s:string" />
    <wsdl:part name="providerName" type="s:string" />
    <wsdl:part name="beginTim" type="s:string" />
    <wsdl:part name="endTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestProviderInfHttpGetOut" />
  <wsdl:message name="RequestZsjBDHttpGetIn">
    <wsdl:part name="projGUIDStr" type="s:string" />
    <wsdl:part name="projGUID_fqStr" type="s:string" />
    <wsdl:part name="BDGUIDStr" type="s:string" />
    <wsdl:part name="beginTim" type="s:string" />
    <wsdl:part name="endTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestZsjBDHttpGetOut" />
  <wsdl:message name="RequestProviderContactsHttpGetIn">
    <wsdl:part name="providerGUIDStr" type="s:string" />
    <wsdl:part name="providerName" type="s:string" />
    <wsdl:part name="providerEmployeeGUIDStr" type="s:string" />
    <wsdl:part name="employeeName" type="s:string" />
    <wsdl:part name="phone" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestProviderContactsHttpGetOut" />
  <wsdl:message name="RequestmyBusinessHttpGetIn">
    <wsdl:part name="CompanyGUID" type="s:string" />
    <wsdl:part name="Sscrm_timestamp_data" type="s:string" />
    <wsdl:part name="Escrm_timestamp_data" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestmyBusinessHttpGetOut" />
  <wsdl:message name="RequestCustomerHttpGetIn">
    <wsdl:part name="CstGUIDStr" type="s:string" />
    <wsdl:part name="CstName" type="s:string" />
    <wsdl:part name="MobileTelStr" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestCustomerHttpGetOut" />
  <wsdl:message name="RequestCustomerAttachHttpGetIn">
    <wsdl:part name="CstGUIDStr" type="s:string" />
    <wsdl:part name="ProjGUIDStr" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestCustomerAttachHttpGetOut" />
  <wsdl:message name="RequestProviderProductTypeHttpGetIn">
    <wsdl:part name="providerGUIDStr" type="s:string" />
    <wsdl:part name="providerName" type="s:string" />
    <wsdl:part name="ProductTypeCode" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestProviderProductTypeHttpGetOut" />
  <wsdl:message name="RequestBldListHttpPostIn">
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="bldGUID" type="s:string" />
    <wsdl:part name="state" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestBldListHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="RequestRoomListHttpPostIn">
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="bldGUID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestRoomListHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="RequestRoomCstListHttpPostIn">
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="bldGUID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestRoomCstListHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="UpdateBldStateHttpPostIn">
    <wsdl:part name="bldList" type="s:string" />
  </wsdl:message>
  <wsdl:message name="UpdateBldStateHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="InsertTenantListHttpPostIn">
    <wsdl:part name="TenantXmlStr" type="s:string" />
  </wsdl:message>
  <wsdl:message name="InsertTenantListHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="RequestCstAndOppListDTHttpPostIn">
    <wsdl:part name="StrMobilePhone" type="s:string" />
    <wsdl:part name="StrOppGUID" type="s:string" />
    <wsdl:part name="DtLastUpdateDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestCstAndOppListDTHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="InsertCstAndOppListHttpPostIn">
    <wsdl:part name="CstAndOppXmlStr" type="s:string" />
  </wsdl:message>
  <wsdl:message name="InsertCstAndOppListHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="RequestActivityListDTHttpPostIn">
    <wsdl:part name="LastUpdateDate" type="s:string" />
    <wsdl:part name="oppGUID" type="s:string" />
    <wsdl:part name="userCode" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestActivityListDTHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="InsertActivityListHttpPostIn">
    <wsdl:part name="ActiityXmlStr" type="s:string" />
  </wsdl:message>
  <wsdl:message name="InsertActivityListHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="UpdateOppSalesManHttpPostIn">
    <wsdl:part name="strOppGUID" type="s:string" />
    <wsdl:part name="strOriginalUserCode" type="s:string" />
    <wsdl:part name="ModifiedUserCode" type="s:string" />
  </wsdl:message>
  <wsdl:message name="UpdateOppSalesManHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="InsertYqwqyInfoHttpPostIn">
    <wsdl:part name="TradeGUID" type="s:string" />
    <wsdl:part name="UserCode" type="s:string" />
    <wsdl:part name="GjContent" type="s:string" />
    <wsdl:part name="YqReason" type="s:string" />
    <wsdl:part name="GjType" type="s:string" />
    <wsdl:part name="GjTime" type="s:string" />
    <wsdl:part name="Remark" type="s:string" />
  </wsdl:message>
  <wsdl:message name="InsertYqwqyInfoHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="InsertYqCkInfoHttpPostIn">
    <wsdl:part name="TradeGUID" type="s:string" />
    <wsdl:part name="UserCode" type="s:string" />
    <wsdl:part name="Qkyy" type="s:string" />
    <wsdl:part name="CkMemo" type="s:string" />
    <wsdl:part name="CreateOn" type="s:string" />
    <wsdl:part name="GjType" type="s:string" />
  </wsdl:message>
  <wsdl:message name="InsertYqCkInfoHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="Room_FpHttpPostIn">
    <wsdl:part name="xmlData" type="s:string" />
    <wsdl:part name="UserCode" type="s:string" />
    <wsdl:part name="Reason" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Room_FpHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="YQywDBHttpPostIn">
    <wsdl:part name="tradeguids" type="s:string" />
    <wsdl:part name="dbType" type="s:string" />
    <wsdl:part name="gjType" type="s:string" />
  </wsdl:message>
  <wsdl:message name="YQywDBHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="YQywReAssignedZrrHttpPostIn">
    <wsdl:part name="tradeguids" type="s:string" />
    <wsdl:part name="usercode" type="s:string" />
  </wsdl:message>
  <wsdl:message name="YQywReAssignedZrrHttpPostOut">
    <wsdl:part name="Body" element="tns:RequestResult" />
  </wsdl:message>
  <wsdl:message name="RequestZsjProjectsHttpPostIn">
    <wsdl:part name="buGUID" type="s:string" />
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestZsjProjectsHttpPostOut" />
  <wsdl:message name="RequestZsjProductsHttpPostIn">
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="subProjGUID" type="s:string" />
    <wsdl:part name="productGUID" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestZsjProductsHttpPostOut" />
  <wsdl:message name="RequestZsjBuildingsHttpPostIn">
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="subProjGUID" type="s:string" />
    <wsdl:part name="bldGUID" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestZsjBuildingsHttpPostOut" />
  <wsdl:message name="RequestZsjHxSetsHttpPostIn">
    <wsdl:part name="subProjGUID" type="s:string" />
    <wsdl:part name="bldGUID" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestZsjHxSetsHttpPostOut" />
  <wsdl:message name="RequestZsjRoomsHttpPostIn">
    <wsdl:part name="projGUID" type="s:string" />
    <wsdl:part name="subProjGUID" type="s:string" />
    <wsdl:part name="bldGUID" type="s:string" />
    <wsdl:part name="roomGUID" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestZsjRoomsHttpPostOut" />
  <wsdl:message name="RequestProviderInfHttpPostIn">
    <wsdl:part name="providerGUIDstr" type="s:string" />
    <wsdl:part name="providerName" type="s:string" />
    <wsdl:part name="beginTim" type="s:string" />
    <wsdl:part name="endTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestProviderInfHttpPostOut" />
  <wsdl:message name="RequestZsjBDHttpPostIn">
    <wsdl:part name="projGUIDStr" type="s:string" />
    <wsdl:part name="projGUID_fqStr" type="s:string" />
    <wsdl:part name="BDGUIDStr" type="s:string" />
    <wsdl:part name="beginTim" type="s:string" />
    <wsdl:part name="endTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestZsjBDHttpPostOut" />
  <wsdl:message name="RequestProviderContactsHttpPostIn">
    <wsdl:part name="providerGUIDStr" type="s:string" />
    <wsdl:part name="providerName" type="s:string" />
    <wsdl:part name="providerEmployeeGUIDStr" type="s:string" />
    <wsdl:part name="employeeName" type="s:string" />
    <wsdl:part name="phone" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestProviderContactsHttpPostOut" />
  <wsdl:message name="RequestmyBusinessHttpPostIn">
    <wsdl:part name="CompanyGUID" type="s:string" />
    <wsdl:part name="Sscrm_timestamp_data" type="s:string" />
    <wsdl:part name="Escrm_timestamp_data" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestmyBusinessHttpPostOut" />
  <wsdl:message name="RequestCustomerHttpPostIn">
    <wsdl:part name="CstGUIDStr" type="s:string" />
    <wsdl:part name="CstName" type="s:string" />
    <wsdl:part name="MobileTelStr" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestCustomerHttpPostOut" />
  <wsdl:message name="RequestCustomerAttachHttpPostIn">
    <wsdl:part name="CstGUIDStr" type="s:string" />
    <wsdl:part name="ProjGUIDStr" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestCustomerAttachHttpPostOut" />
  <wsdl:message name="RequestProviderProductTypeHttpPostIn">
    <wsdl:part name="providerGUIDStr" type="s:string" />
    <wsdl:part name="providerName" type="s:string" />
    <wsdl:part name="ProductTypeCode" type="s:string" />
    <wsdl:part name="begTimeStamp" type="s:string" />
    <wsdl:part name="endTimeStamp" type="s:string" />
  </wsdl:message>
  <wsdl:message name="RequestProviderProductTypeHttpPostOut" />
  <wsdl:portType name="MainServiceSoap">
    <wsdl:operation name="RequestBldList">
      <wsdl:input message="tns:RequestBldListSoapIn" />
      <wsdl:output message="tns:RequestBldListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestRoomList">
      <wsdl:input message="tns:RequestRoomListSoapIn" />
      <wsdl:output message="tns:RequestRoomListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestRoomCstList">
      <wsdl:input message="tns:RequestRoomCstListSoapIn" />
      <wsdl:output message="tns:RequestRoomCstListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="UpdateBldState">
      <wsdl:input message="tns:UpdateBldStateSoapIn" />
      <wsdl:output message="tns:UpdateBldStateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertTenantList">
      <wsdl:input message="tns:InsertTenantListSoapIn" />
      <wsdl:output message="tns:InsertTenantListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestCstAndOppListDT">
      <wsdl:input message="tns:RequestCstAndOppListDTSoapIn" />
      <wsdl:output message="tns:RequestCstAndOppListDTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertCstAndOppList">
      <wsdl:input message="tns:InsertCstAndOppListSoapIn" />
      <wsdl:output message="tns:InsertCstAndOppListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestActivityListDT">
      <wsdl:input message="tns:RequestActivityListDTSoapIn" />
      <wsdl:output message="tns:RequestActivityListDTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertActivityList">
      <wsdl:input message="tns:InsertActivityListSoapIn" />
      <wsdl:output message="tns:InsertActivityListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="UpdateOppSalesMan">
      <wsdl:input message="tns:UpdateOppSalesManSoapIn" />
      <wsdl:output message="tns:UpdateOppSalesManSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertYqwqyInfo">
      <wsdl:input message="tns:InsertYqwqyInfoSoapIn" />
      <wsdl:output message="tns:InsertYqwqyInfoSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertYqCkInfo">
      <wsdl:input message="tns:InsertYqCkInfoSoapIn" />
      <wsdl:output message="tns:InsertYqCkInfoSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Room_Fp">
      <wsdl:input message="tns:Room_FpSoapIn" />
      <wsdl:output message="tns:Room_FpSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="YQywDB">
      <wsdl:input message="tns:YQywDBSoapIn" />
      <wsdl:output message="tns:YQywDBSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="YQywReAssignedZrr">
      <wsdl:input message="tns:YQywReAssignedZrrSoapIn" />
      <wsdl:output message="tns:YQywReAssignedZrrSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProjects">
      <wsdl:input message="tns:RequestZsjProjectsSoapIn" />
      <wsdl:output message="tns:RequestZsjProjectsSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProducts">
      <wsdl:input message="tns:RequestZsjProductsSoapIn" />
      <wsdl:output message="tns:RequestZsjProductsSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBuildings">
      <wsdl:input message="tns:RequestZsjBuildingsSoapIn" />
      <wsdl:output message="tns:RequestZsjBuildingsSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjHxSets">
      <wsdl:input message="tns:RequestZsjHxSetsSoapIn" />
      <wsdl:output message="tns:RequestZsjHxSetsSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjRooms">
      <wsdl:input message="tns:RequestZsjRoomsSoapIn" />
      <wsdl:output message="tns:RequestZsjRoomsSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderInf">
      <wsdl:input message="tns:RequestProviderInfSoapIn" />
      <wsdl:output message="tns:RequestProviderInfSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBD">
      <wsdl:input message="tns:RequestZsjBDSoapIn" />
      <wsdl:output message="tns:RequestZsjBDSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderContacts">
      <wsdl:input message="tns:RequestProviderContactsSoapIn" />
      <wsdl:output message="tns:RequestProviderContactsSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestmyBusiness">
      <wsdl:input message="tns:RequestmyBusinessSoapIn" />
      <wsdl:output message="tns:RequestmyBusinessSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestCustomer">
      <wsdl:input message="tns:RequestCustomerSoapIn" />
      <wsdl:output message="tns:RequestCustomerSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestCustomerAttach">
      <wsdl:input message="tns:RequestCustomerAttachSoapIn" />
      <wsdl:output message="tns:RequestCustomerAttachSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderProductType">
      <wsdl:input message="tns:RequestProviderProductTypeSoapIn" />
      <wsdl:output message="tns:RequestProviderProductTypeSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="MainServiceHttpGet">
    <wsdl:operation name="RequestBldList">
      <wsdl:input message="tns:RequestBldListHttpGetIn" />
      <wsdl:output message="tns:RequestBldListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestRoomList">
      <wsdl:input message="tns:RequestRoomListHttpGetIn" />
      <wsdl:output message="tns:RequestRoomListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestRoomCstList">
      <wsdl:input message="tns:RequestRoomCstListHttpGetIn" />
      <wsdl:output message="tns:RequestRoomCstListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="UpdateBldState">
      <wsdl:input message="tns:UpdateBldStateHttpGetIn" />
      <wsdl:output message="tns:UpdateBldStateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertTenantList">
      <wsdl:input message="tns:InsertTenantListHttpGetIn" />
      <wsdl:output message="tns:InsertTenantListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestCstAndOppListDT">
      <wsdl:input message="tns:RequestCstAndOppListDTHttpGetIn" />
      <wsdl:output message="tns:RequestCstAndOppListDTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertCstAndOppList">
      <wsdl:input message="tns:InsertCstAndOppListHttpGetIn" />
      <wsdl:output message="tns:InsertCstAndOppListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestActivityListDT">
      <wsdl:input message="tns:RequestActivityListDTHttpGetIn" />
      <wsdl:output message="tns:RequestActivityListDTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertActivityList">
      <wsdl:input message="tns:InsertActivityListHttpGetIn" />
      <wsdl:output message="tns:InsertActivityListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="UpdateOppSalesMan">
      <wsdl:input message="tns:UpdateOppSalesManHttpGetIn" />
      <wsdl:output message="tns:UpdateOppSalesManHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertYqwqyInfo">
      <wsdl:input message="tns:InsertYqwqyInfoHttpGetIn" />
      <wsdl:output message="tns:InsertYqwqyInfoHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertYqCkInfo">
      <wsdl:input message="tns:InsertYqCkInfoHttpGetIn" />
      <wsdl:output message="tns:InsertYqCkInfoHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Room_Fp">
      <wsdl:input message="tns:Room_FpHttpGetIn" />
      <wsdl:output message="tns:Room_FpHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="YQywDB">
      <wsdl:input message="tns:YQywDBHttpGetIn" />
      <wsdl:output message="tns:YQywDBHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="YQywReAssignedZrr">
      <wsdl:input message="tns:YQywReAssignedZrrHttpGetIn" />
      <wsdl:output message="tns:YQywReAssignedZrrHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProjects">
      <wsdl:input message="tns:RequestZsjProjectsHttpGetIn" />
      <wsdl:output message="tns:RequestZsjProjectsHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProducts">
      <wsdl:input message="tns:RequestZsjProductsHttpGetIn" />
      <wsdl:output message="tns:RequestZsjProductsHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBuildings">
      <wsdl:input message="tns:RequestZsjBuildingsHttpGetIn" />
      <wsdl:output message="tns:RequestZsjBuildingsHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjHxSets">
      <wsdl:input message="tns:RequestZsjHxSetsHttpGetIn" />
      <wsdl:output message="tns:RequestZsjHxSetsHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjRooms">
      <wsdl:input message="tns:RequestZsjRoomsHttpGetIn" />
      <wsdl:output message="tns:RequestZsjRoomsHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderInf">
      <wsdl:input message="tns:RequestProviderInfHttpGetIn" />
      <wsdl:output message="tns:RequestProviderInfHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBD">
      <wsdl:input message="tns:RequestZsjBDHttpGetIn" />
      <wsdl:output message="tns:RequestZsjBDHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderContacts">
      <wsdl:input message="tns:RequestProviderContactsHttpGetIn" />
      <wsdl:output message="tns:RequestProviderContactsHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestmyBusiness">
      <wsdl:input message="tns:RequestmyBusinessHttpGetIn" />
      <wsdl:output message="tns:RequestmyBusinessHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestCustomer">
      <wsdl:input message="tns:RequestCustomerHttpGetIn" />
      <wsdl:output message="tns:RequestCustomerHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestCustomerAttach">
      <wsdl:input message="tns:RequestCustomerAttachHttpGetIn" />
      <wsdl:output message="tns:RequestCustomerAttachHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderProductType">
      <wsdl:input message="tns:RequestProviderProductTypeHttpGetIn" />
      <wsdl:output message="tns:RequestProviderProductTypeHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="MainServiceHttpPost">
    <wsdl:operation name="RequestBldList">
      <wsdl:input message="tns:RequestBldListHttpPostIn" />
      <wsdl:output message="tns:RequestBldListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestRoomList">
      <wsdl:input message="tns:RequestRoomListHttpPostIn" />
      <wsdl:output message="tns:RequestRoomListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestRoomCstList">
      <wsdl:input message="tns:RequestRoomCstListHttpPostIn" />
      <wsdl:output message="tns:RequestRoomCstListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="UpdateBldState">
      <wsdl:input message="tns:UpdateBldStateHttpPostIn" />
      <wsdl:output message="tns:UpdateBldStateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertTenantList">
      <wsdl:input message="tns:InsertTenantListHttpPostIn" />
      <wsdl:output message="tns:InsertTenantListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestCstAndOppListDT">
      <wsdl:input message="tns:RequestCstAndOppListDTHttpPostIn" />
      <wsdl:output message="tns:RequestCstAndOppListDTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertCstAndOppList">
      <wsdl:input message="tns:InsertCstAndOppListHttpPostIn" />
      <wsdl:output message="tns:InsertCstAndOppListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestActivityListDT">
      <wsdl:input message="tns:RequestActivityListDTHttpPostIn" />
      <wsdl:output message="tns:RequestActivityListDTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertActivityList">
      <wsdl:input message="tns:InsertActivityListHttpPostIn" />
      <wsdl:output message="tns:InsertActivityListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="UpdateOppSalesMan">
      <wsdl:input message="tns:UpdateOppSalesManHttpPostIn" />
      <wsdl:output message="tns:UpdateOppSalesManHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertYqwqyInfo">
      <wsdl:input message="tns:InsertYqwqyInfoHttpPostIn" />
      <wsdl:output message="tns:InsertYqwqyInfoHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="InsertYqCkInfo">
      <wsdl:input message="tns:InsertYqCkInfoHttpPostIn" />
      <wsdl:output message="tns:InsertYqCkInfoHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Room_Fp">
      <wsdl:input message="tns:Room_FpHttpPostIn" />
      <wsdl:output message="tns:Room_FpHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="YQywDB">
      <wsdl:input message="tns:YQywDBHttpPostIn" />
      <wsdl:output message="tns:YQywDBHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="YQywReAssignedZrr">
      <wsdl:input message="tns:YQywReAssignedZrrHttpPostIn" />
      <wsdl:output message="tns:YQywReAssignedZrrHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProjects">
      <wsdl:input message="tns:RequestZsjProjectsHttpPostIn" />
      <wsdl:output message="tns:RequestZsjProjectsHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProducts">
      <wsdl:input message="tns:RequestZsjProductsHttpPostIn" />
      <wsdl:output message="tns:RequestZsjProductsHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBuildings">
      <wsdl:input message="tns:RequestZsjBuildingsHttpPostIn" />
      <wsdl:output message="tns:RequestZsjBuildingsHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjHxSets">
      <wsdl:input message="tns:RequestZsjHxSetsHttpPostIn" />
      <wsdl:output message="tns:RequestZsjHxSetsHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjRooms">
      <wsdl:input message="tns:RequestZsjRoomsHttpPostIn" />
      <wsdl:output message="tns:RequestZsjRoomsHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderInf">
      <wsdl:input message="tns:RequestProviderInfHttpPostIn" />
      <wsdl:output message="tns:RequestProviderInfHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBD">
      <wsdl:input message="tns:RequestZsjBDHttpPostIn" />
      <wsdl:output message="tns:RequestZsjBDHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderContacts">
      <wsdl:input message="tns:RequestProviderContactsHttpPostIn" />
      <wsdl:output message="tns:RequestProviderContactsHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestmyBusiness">
      <wsdl:input message="tns:RequestmyBusinessHttpPostIn" />
      <wsdl:output message="tns:RequestmyBusinessHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestCustomer">
      <wsdl:input message="tns:RequestCustomerHttpPostIn" />
      <wsdl:output message="tns:RequestCustomerHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestCustomerAttach">
      <wsdl:input message="tns:RequestCustomerAttachHttpPostIn" />
      <wsdl:output message="tns:RequestCustomerAttachHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderProductType">
      <wsdl:input message="tns:RequestProviderProductTypeHttpPostIn" />
      <wsdl:output message="tns:RequestProviderProductTypeHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="MainServiceSoap" type="tns:MainServiceSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="RequestBldList">
      <soap:operation soapAction="http://tempuri.org/RequestBldList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestRoomList">
      <soap:operation soapAction="http://tempuri.org/RequestRoomList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestRoomCstList">
      <soap:operation soapAction="http://tempuri.org/RequestRoomCstList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateBldState">
      <soap:operation soapAction="http://tempuri.org/UpdateBldState" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertTenantList">
      <soap:operation soapAction="http://tempuri.org/InsertTenantList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestCstAndOppListDT">
      <soap:operation soapAction="http://tempuri.org/RequestCstAndOppListDT" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertCstAndOppList">
      <soap:operation soapAction="http://tempuri.org/InsertCstAndOppList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestActivityListDT">
      <soap:operation soapAction="http://tempuri.org/RequestActivityListDT" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertActivityList">
      <soap:operation soapAction="http://tempuri.org/InsertActivityList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateOppSalesMan">
      <soap:operation soapAction="http://tempuri.org/UpdateOppSalesMan" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertYqwqyInfo">
      <soap:operation soapAction="http://tempuri.org/InsertYqwqyInfo" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertYqCkInfo">
      <soap:operation soapAction="http://tempuri.org/InsertYqCkInfo" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Room_Fp">
      <soap:operation soapAction="http://tempuri.org/Room_Fp" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="YQywDB">
      <soap:operation soapAction="http://tempuri.org/YQywDB" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="YQywReAssignedZrr">
      <soap:operation soapAction="http://tempuri.org/YQywReAssignedZrr" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProjects">
      <soap:operation soapAction="http://tempuri.org/RequestZsjProjects" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProducts">
      <soap:operation soapAction="http://tempuri.org/RequestZsjProducts" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBuildings">
      <soap:operation soapAction="http://tempuri.org/RequestZsjBuildings" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjHxSets">
      <soap:operation soapAction="http://tempuri.org/RequestZsjHxSets" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjRooms">
      <soap:operation soapAction="http://tempuri.org/RequestZsjRooms" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestProviderInf">
      <soap:operation soapAction="http://tempuri.org/RequestProviderInf" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBD">
      <soap:operation soapAction="http://tempuri.org/RequestZsjBD" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestProviderContacts">
      <soap:operation soapAction="http://tempuri.org/RequestProviderContacts" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestmyBusiness">
      <soap:operation soapAction="http://tempuri.org/RequestmyBusiness" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestCustomer">
      <soap:operation soapAction="http://tempuri.org/RequestCustomer" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestCustomerAttach">
      <soap:operation soapAction="http://tempuri.org/RequestCustomerAttach" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestProviderProductType">
      <soap:operation soapAction="http://tempuri.org/RequestProviderProductType" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="MainServiceSoap12" type="tns:MainServiceSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="RequestBldList">
      <soap12:operation soapAction="http://tempuri.org/RequestBldList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestRoomList">
      <soap12:operation soapAction="http://tempuri.org/RequestRoomList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestRoomCstList">
      <soap12:operation soapAction="http://tempuri.org/RequestRoomCstList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateBldState">
      <soap12:operation soapAction="http://tempuri.org/UpdateBldState" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertTenantList">
      <soap12:operation soapAction="http://tempuri.org/InsertTenantList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestCstAndOppListDT">
      <soap12:operation soapAction="http://tempuri.org/RequestCstAndOppListDT" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertCstAndOppList">
      <soap12:operation soapAction="http://tempuri.org/InsertCstAndOppList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestActivityListDT">
      <soap12:operation soapAction="http://tempuri.org/RequestActivityListDT" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertActivityList">
      <soap12:operation soapAction="http://tempuri.org/InsertActivityList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateOppSalesMan">
      <soap12:operation soapAction="http://tempuri.org/UpdateOppSalesMan" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertYqwqyInfo">
      <soap12:operation soapAction="http://tempuri.org/InsertYqwqyInfo" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertYqCkInfo">
      <soap12:operation soapAction="http://tempuri.org/InsertYqCkInfo" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Room_Fp">
      <soap12:operation soapAction="http://tempuri.org/Room_Fp" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="YQywDB">
      <soap12:operation soapAction="http://tempuri.org/YQywDB" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="YQywReAssignedZrr">
      <soap12:operation soapAction="http://tempuri.org/YQywReAssignedZrr" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProjects">
      <soap12:operation soapAction="http://tempuri.org/RequestZsjProjects" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProducts">
      <soap12:operation soapAction="http://tempuri.org/RequestZsjProducts" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBuildings">
      <soap12:operation soapAction="http://tempuri.org/RequestZsjBuildings" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjHxSets">
      <soap12:operation soapAction="http://tempuri.org/RequestZsjHxSets" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjRooms">
      <soap12:operation soapAction="http://tempuri.org/RequestZsjRooms" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestProviderInf">
      <soap12:operation soapAction="http://tempuri.org/RequestProviderInf" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBD">
      <soap12:operation soapAction="http://tempuri.org/RequestZsjBD" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestProviderContacts">
      <soap12:operation soapAction="http://tempuri.org/RequestProviderContacts" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestmyBusiness">
      <soap12:operation soapAction="http://tempuri.org/RequestmyBusiness" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestCustomer">
      <soap12:operation soapAction="http://tempuri.org/RequestCustomer" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestCustomerAttach">
      <soap12:operation soapAction="http://tempuri.org/RequestCustomerAttach" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestProviderProductType">
      <soap12:operation soapAction="http://tempuri.org/RequestProviderProductType" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="MainServiceHttpGet" type="tns:MainServiceHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="RequestBldList">
      <http:operation location="/RequestBldList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestRoomList">
      <http:operation location="/RequestRoomList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestRoomCstList">
      <http:operation location="/RequestRoomCstList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateBldState">
      <http:operation location="/UpdateBldState" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertTenantList">
      <http:operation location="/InsertTenantList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestCstAndOppListDT">
      <http:operation location="/RequestCstAndOppListDT" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertCstAndOppList">
      <http:operation location="/InsertCstAndOppList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestActivityListDT">
      <http:operation location="/RequestActivityListDT" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertActivityList">
      <http:operation location="/InsertActivityList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateOppSalesMan">
      <http:operation location="/UpdateOppSalesMan" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertYqwqyInfo">
      <http:operation location="/InsertYqwqyInfo" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertYqCkInfo">
      <http:operation location="/InsertYqCkInfo" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Room_Fp">
      <http:operation location="/Room_Fp" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="YQywDB">
      <http:operation location="/YQywDB" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="YQywReAssignedZrr">
      <http:operation location="/YQywReAssignedZrr" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProjects">
      <http:operation location="/RequestZsjProjects" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProducts">
      <http:operation location="/RequestZsjProducts" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBuildings">
      <http:operation location="/RequestZsjBuildings" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjHxSets">
      <http:operation location="/RequestZsjHxSets" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjRooms">
      <http:operation location="/RequestZsjRooms" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderInf">
      <http:operation location="/RequestProviderInf" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBD">
      <http:operation location="/RequestZsjBD" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderContacts">
      <http:operation location="/RequestProviderContacts" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestmyBusiness">
      <http:operation location="/RequestmyBusiness" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestCustomer">
      <http:operation location="/RequestCustomer" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestCustomerAttach">
      <http:operation location="/RequestCustomerAttach" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderProductType">
      <http:operation location="/RequestProviderProductType" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="MainServiceHttpPost" type="tns:MainServiceHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="RequestBldList">
      <http:operation location="/RequestBldList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestRoomList">
      <http:operation location="/RequestRoomList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestRoomCstList">
      <http:operation location="/RequestRoomCstList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateBldState">
      <http:operation location="/UpdateBldState" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertTenantList">
      <http:operation location="/InsertTenantList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestCstAndOppListDT">
      <http:operation location="/RequestCstAndOppListDT" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertCstAndOppList">
      <http:operation location="/InsertCstAndOppList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestActivityListDT">
      <http:operation location="/RequestActivityListDT" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertActivityList">
      <http:operation location="/InsertActivityList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateOppSalesMan">
      <http:operation location="/UpdateOppSalesMan" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertYqwqyInfo">
      <http:operation location="/InsertYqwqyInfo" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="InsertYqCkInfo">
      <http:operation location="/InsertYqCkInfo" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Room_Fp">
      <http:operation location="/Room_Fp" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="YQywDB">
      <http:operation location="/YQywDB" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="YQywReAssignedZrr">
      <http:operation location="/YQywReAssignedZrr" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProjects">
      <http:operation location="/RequestZsjProjects" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjProducts">
      <http:operation location="/RequestZsjProducts" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBuildings">
      <http:operation location="/RequestZsjBuildings" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjHxSets">
      <http:operation location="/RequestZsjHxSets" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjRooms">
      <http:operation location="/RequestZsjRooms" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderInf">
      <http:operation location="/RequestProviderInf" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestZsjBD">
      <http:operation location="/RequestZsjBD" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderContacts">
      <http:operation location="/RequestProviderContacts" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestmyBusiness">
      <http:operation location="/RequestmyBusiness" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestCustomer">
      <http:operation location="/RequestCustomer" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestCustomerAttach">
      <http:operation location="/RequestCustomerAttach" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
    <wsdl:operation name="RequestProviderProductType">
      <http:operation location="/RequestProviderProductType" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output />
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="MainService">
    <wsdl:port name="MainServiceSoap" binding="tns:MainServiceSoap">
      <soap:address location="http://10.16.10.160:8088/MainService.asmx" />
    </wsdl:port>
    <wsdl:port name="MainServiceSoap12" binding="tns:MainServiceSoap12">
      <soap12:address location="http://10.16.10.160:8088/MainService.asmx" />
    </wsdl:port>
    <wsdl:port name="MainServiceHttpGet" binding="tns:MainServiceHttpGet">
      <http:address location="http://10.16.10.160:8088/MainService.asmx" />
    </wsdl:port>
    <wsdl:port name="MainServiceHttpPost" binding="tns:MainServiceHttpPost">
      <http:address location="http://10.16.10.160:8088/MainService.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>