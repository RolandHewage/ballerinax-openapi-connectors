// Copyright (c) 2022 WSO2 LLC. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/constraint;

public type User Permission;

public type RoleAssignment record {
    # ID of the role for this role assignment.
    string role;
};

public type DeviceCollection record {
    # The collection of devices.
    Device[] value;
    # URL to get the next page of devices.
    string nextLink?;
};

public type DeviceTelemetry record {
    # The last known value of this device telemetry.
    record {} value?;
    # String-formatted date representing the time when the telemetry value was sent.
    string timestamp?;
};

public type SymmetricKey record {
    # The primary key for this credential.
    string primaryKey;
    # The secondary key for this credential.
    string secondaryKey;
};

public type DeviceCredentials record {
    # ID scope for connecting to the IoT Central application.
    string idScope;
    SymmetricKey symmetricKey?;
    X509 x509?;
    Tpm tpm?;
};

public type X509 record {
    X509Certificates clientCertificates?;
};

public type DeviceTemplateCollection record {
    # The collection of device templates.
    DeviceTemplate[] value;
    # URL to get the next page of device templates.
    string nextLink?;
};

public type Tpm record {
    # The TPM endorsement key for this credential.
    string endorsementKey;
};

public type SymmetricKeyAttestation Attestation;

public type DeviceTemplate record {
    # Unique ID of the device template.
    string '\@id?;
    # The JSON-LD types of this device template.
    string[] '\@type;
    # ETag used to prevent conflict in device template updates.
    string etag?;
    # Display name of the device template.
    string displayName?;
    # Detailed description of the device template.
    string description?;
    # The capability model utilized by this device template.
    record {} capabilityModel;
};

public type Permission record {
    # List of role assignments that specify the permissions to access the application.
    @constraint:Array {minLength: 1}
    RoleAssignment[] roles;
};

public type DeviceCommandCollection record {
    # The collection of device command executions.
    DeviceCommand[] value;
    # URL to get the next page of device command executions.
    string nextLink?;
};

public type X509Attestation Attestation;

public type RoleCollection record {
    # The collection of roles.
    Role[] value;
    # URL to get the next page of roles.
    string nextLink?;
};

# Property values associated with the device.
public type DeviceProperties record {
};

public type UserCollection record {
    # The collection of users.
    User[] value;
    # URL to get the next page of users.
    string nextLink?;
};

public type ApiTokenCollection record {
    # The collection of API tokens.
    ApiToken[] value;
    # URL to get the next page of API tokens.
    string nextLink?;
};

public type TpmAttestation Attestation;

public type X509Certificates record {
    X509Certificate primary;
    X509Certificate secondary?;
};

public type Device record {
    # Unique ID of the device.
    string id?;
    # ETag used to prevent conflict in device updates.
    string etag?;
    # Display name of the device.
    string displayName?;
    # The device template definition for the device.
    string template?;
    # Whether the device connection to IoT Central has been enabled.
    boolean enabled?;
    # Whether resources have been allocated for the device.
    boolean provisioned?;
    # Whether the device is simulated.
    boolean simulated?;
};

public type X509CertificateInfo record {
    # The SHA-1 hash value of the certificate.
    string sha1Thumbprint;
};

public type DeviceCommand record {
    # The request ID of the device command execution.
    string id?;
    # Connection timeout in seconds to wait for a disconnected device to come online. Defaults to 0 seconds.
    @constraint:Int {maxValue: 30}
    int connectionTimeout?;
    # Response timeout in seconds to wait for a command completion on a device. Defaults to 30 seconds.
    @constraint:Int {minValue: 5, maxValue: 30}
    int responseTimeout?;
    # The payload for the device command.
    record {} request?;
    # The payload of the device command response.
    record {} response?;
    # The status code of the device command response.
    int responseCode?;
};

public type Attestation record {
    # Type of the attestation.
    string 'type;
};

public type X509Certificate record {
    # The string representation of this certificate.
    string certificate?;
    X509CertificateInfo info?;
};

public type Role record {
    # Unique ID of the role.
    string id?;
    # Display name of the role.
    string displayName?;
};

public type EmailUser User;

public type ApiToken Permission;

public type Collection record {
    # The collection of entities.
    record {}[] value;
    # URL to get the next page of entities.
    string nextLink?;
};

public type Payload record {
};

public type ServicePrincipalUser User;
