# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [environments/environments.v1.proto](#environments/environments.v1.proto)
    - [EnvID](#gitlab_aggregator.v1.EnvID)
    - [EnvInfo](#gitlab_aggregator.v1.EnvInfo)
    - [EnvName](#gitlab_aggregator.v1.EnvName)
  
    - [Environments](#gitlab_aggregator.v1.Environments)
  
- [projects/projects.v1.proto](#projects/projects.v1.proto)
    - [ProjectID](#gitlab_aggregator.v1.ProjectID)
    - [ProjectInfo](#gitlab_aggregator.v1.ProjectInfo)
    - [ProjectName](#gitlab_aggregator.v1.ProjectName)
  
    - [Projects](#gitlab_aggregator.v1.Projects)
  
- [applications/applications.v1.proto](#applications/applications.v1.proto)
    - [AppInfo](#gitlab_aggregator.v1.AppInfo)
    - [AppName](#gitlab_aggregator.v1.AppName)
    - [Contour](#gitlab_aggregator.v1.Contour)
    - [EmptyMessage](#gitlab_aggregator.v1.EmptyMessage)
    - [Service](#gitlab_aggregator.v1.Service)
  
    - [Applications](#gitlab_aggregator.v1.Applications)
  
- [Scalar Value Types](#scalar-value-types)



<a name="environments/environments.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## environments/environments.v1.proto



<a name="gitlab_aggregator.v1.EnvID"></a>

### EnvID



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| projectId | [int64](#int64) |  |  |
| id | [int64](#int64) |  |  |






<a name="gitlab_aggregator.v1.EnvInfo"></a>

### EnvInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| name | [string](#string) |  |  |
| state | [string](#string) |  |  |
| url | [string](#string) |  |  |
| ref | [string](#string) |  |  |
| sha | [string](#string) |  |  |
| ciStatus | [string](#string) |  |  |
| userId | [int64](#int64) |  |  |
| userName | [string](#string) |  |  |
| updatedAd | [string](#string) |  |  |






<a name="gitlab_aggregator.v1.EnvName"></a>

### EnvName



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| projectId | [int64](#int64) |  |  |
| name | [string](#string) |  |  |





 

 

 


<a name="gitlab_aggregator.v1.Environments"></a>

### Environments
Environments services

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Get | [EnvID](#gitlab_aggregator.v1.EnvID) | [EnvInfo](#gitlab_aggregator.v1.EnvInfo) |  |
| List | [EnvName](#gitlab_aggregator.v1.EnvName) | [EnvInfo](#gitlab_aggregator.v1.EnvInfo) stream |  |

 



<a name="projects/projects.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## projects/projects.v1.proto



<a name="gitlab_aggregator.v1.ProjectID"></a>

### ProjectID



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |






<a name="gitlab_aggregator.v1.ProjectInfo"></a>

### ProjectInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| name | [string](#string) |  |  |
| description | [string](#string) |  |  |
| webUrl | [string](#string) |  |  |
| avatarUrl | [string](#string) |  |  |
| readmeUrl | [string](#string) |  |  |






<a name="gitlab_aggregator.v1.ProjectName"></a>

### ProjectName



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |





 

 

 


<a name="gitlab_aggregator.v1.Projects"></a>

### Projects
Projects service

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Get | [ProjectID](#gitlab_aggregator.v1.ProjectID) | [ProjectInfo](#gitlab_aggregator.v1.ProjectInfo) |  |
| List | [ProjectName](#gitlab_aggregator.v1.ProjectName) | [ProjectInfo](#gitlab_aggregator.v1.ProjectInfo) stream |  |

 



<a name="applications/applications.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## applications/applications.v1.proto



<a name="gitlab_aggregator.v1.AppInfo"></a>

### AppInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |
| contour | [Contour](#gitlab_aggregator.v1.Contour) | repeated |  |






<a name="gitlab_aggregator.v1.AppName"></a>

### AppName



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |






<a name="gitlab_aggregator.v1.Contour"></a>

### Contour



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| service | [Service](#gitlab_aggregator.v1.Service) | repeated |  |






<a name="gitlab_aggregator.v1.EmptyMessage"></a>

### EmptyMessage







<a name="gitlab_aggregator.v1.Service"></a>

### Service



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project | [int64](#int64) |  |  |
| environment | [int64](#int64) |  |  |





 

 

 


<a name="gitlab_aggregator.v1.Applications"></a>

### Applications
Applications services

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [AppName](#gitlab_aggregator.v1.AppName) | [AppInfo](#gitlab_aggregator.v1.AppInfo) |  |
| Get | [AppName](#gitlab_aggregator.v1.AppName) | [AppInfo](#gitlab_aggregator.v1.AppInfo) |  |
| List | [EmptyMessage](#gitlab_aggregator.v1.EmptyMessage) | [AppInfo](#gitlab_aggregator.v1.AppInfo) stream |  |
| Update | [AppInfo](#gitlab_aggregator.v1.AppInfo) | [AppInfo](#gitlab_aggregator.v1.AppInfo) |  |
| Delete | [AppInfo](#gitlab_aggregator.v1.AppInfo) | [EmptyMessage](#gitlab_aggregator.v1.EmptyMessage) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

