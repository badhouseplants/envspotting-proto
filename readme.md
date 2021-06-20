# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [environments/environments.v1.proto](#environments/environments.v1.proto)
    - [EnvironmentID](#gitlab_aggregator.v1.EnvironmentID)
    - [EnvironmentInfo](#gitlab_aggregator.v1.EnvironmentInfo)
    - [EnvironmentName](#gitlab_aggregator.v1.EnvironmentName)
  
    - [Environments](#gitlab_aggregator.v1.Environments)
  
- [projects/projects.v1.proto](#projects/projects.v1.proto)
    - [ProjectID](#gitlab_aggregator.v1.ProjectID)
    - [ProjectInfo](#gitlab_aggregator.v1.ProjectInfo)
    - [ProjectName](#gitlab_aggregator.v1.ProjectName)
  
    - [Projects](#gitlab_aggregator.v1.Projects)
  
- [common/common.proto](#common/common.proto)
    - [EmptyMessage](#common.EmptyMessage)
  
- [applications/applications.v1.proto](#applications/applications.v1.proto)
    - [AppID](#gitlab_aggregator.v1.AppID)
    - [AppInfo](#gitlab_aggregator.v1.AppInfo)
    - [AppName](#gitlab_aggregator.v1.AppName)
    - [Contour](#gitlab_aggregator.v1.Contour)
    - [Service](#gitlab_aggregator.v1.Service)
  
    - [Applications](#gitlab_aggregator.v1.Applications)
  
- [authorization/authorization.v1.proto](#authorization/authorization.v1.proto)
    - [UserCreds](#gitlab_aggregator.v1.UserCreds)
    - [UserInfo](#gitlab_aggregator.v1.UserInfo)
    - [UserSensitiveInfo](#gitlab_aggregator.v1.UserSensitiveInfo)
  
    - [Authorization](#gitlab_aggregator.v1.Authorization)
  
- [Scalar Value Types](#scalar-value-types)



<a name="environments/environments.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## environments/environments.v1.proto
This file has messages for describing gitlab environments


<a name="gitlab_aggregator.v1.EnvironmentID"></a>

### EnvironmentID
Represents a Gitlab Environment ID


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| projectId | [int64](#int64) |  | Gitlab Project ID |
| id | [int64](#int64) |  | Gitlab Environment Id |






<a name="gitlab_aggregator.v1.EnvironmentInfo"></a>

### EnvironmentInfo
Represents a Gitlab Environment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  | Gitlab Environment ID |
| name | [string](#string) |  | Gitlab Environment name |
| state | [string](#string) |  | Gitlab Environment state |
| url | [string](#string) |  | Gitlab Environment external URL |
| ref | [string](#string) |  | Gitlab Environment commit ref |
| sha | [string](#string) |  | Gitlab Environment commit SHA |
| ciStatus | [string](#string) |  | Gitlab Environment Gitlab-CI status |
| ciId | [int64](#int64) |  | Gitlab Environment Gitlab-CI ID |
| userId | [int64](#int64) |  | Gitlab Environment Gitlab-CI trigger user ID |
| userName | [string](#string) |  | Gitlab Environment Gitlab-CI trigger user name |
| updatedAd | [string](#string) |  | Gitlab Environment update time |






<a name="gitlab_aggregator.v1.EnvironmentName"></a>

### EnvironmentName
Represents a Gitlab Environment name


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| projectId | [int64](#int64) |  | Gitlab Project ID |
| name | [string](#string) |  | Gitlab Environment name |





 

 

 


<a name="gitlab_aggregator.v1.Environments"></a>

### Environments
Service for handling environments
Kinda gitlab proxy

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Get | [EnvironmentID](#gitlab_aggregator.v1.EnvironmentID) | [EnvironmentInfo](#gitlab_aggregator.v1.EnvironmentInfo) | Get Environment by ID |
| List | [EnvironmentName](#gitlab_aggregator.v1.EnvironmentName) | [EnvironmentInfo](#gitlab_aggregator.v1.EnvironmentInfo) stream | Stream Environments by name |

 



<a name="projects/projects.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## projects/projects.v1.proto
This file has messages for describing gitlab projects


<a name="gitlab_aggregator.v1.ProjectID"></a>

### ProjectID
Represents a Gitlab Project ID


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  | Gitlab Project ID |






<a name="gitlab_aggregator.v1.ProjectInfo"></a>

### ProjectInfo
Represents a Gitlab Project


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  | Gitlab Project ID |
| name | [string](#string) |  | Gitlab Project name |
| description | [string](#string) |  | Gitlab Project description |
| webUrl | [string](#string) |  | Gitlab Project URL |
| avatarUrl | [string](#string) |  | Gitlab Project avatar URL |
| readmeUrl | [string](#string) |  | Gitlab Project readme ID |






<a name="gitlab_aggregator.v1.ProjectName"></a>

### ProjectName
Represents a Gitlab Project name


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Gitlab Project name |





 

 

 


<a name="gitlab_aggregator.v1.Projects"></a>

### Projects
Service for handling projects
Kinda gitlab proxy

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Get | [ProjectID](#gitlab_aggregator.v1.ProjectID) | [ProjectInfo](#gitlab_aggregator.v1.ProjectInfo) | Get project by ID |
| List | [ProjectName](#gitlab_aggregator.v1.ProjectName) | [ProjectInfo](#gitlab_aggregator.v1.ProjectInfo) stream | Stream projects by name |

 



<a name="common/common.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/common.proto
This file has messages for reusable common messages


<a name="common.EmptyMessage"></a>

### EmptyMessage
Represents an empty message





 

 

 

 



<a name="applications/applications.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## applications/applications.v1.proto
This file has messages for describing applications


<a name="gitlab_aggregator.v1.AppID"></a>

### AppID
Represents an application UUID only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Application id: UUID |






<a name="gitlab_aggregator.v1.AppInfo"></a>

### AppInfo
Represents a application


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| name | [string](#string) |  | Application name: Unique string |
| contour | [Contour](#gitlab_aggregator.v1.Contour) | repeated | Map: &lt;contour name: [services]&gt; |






<a name="gitlab_aggregator.v1.AppName"></a>

### AppName
Represents an application name only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Application name |






<a name="gitlab_aggregator.v1.Contour"></a>

### Contour
Represents a contour (the whole environment)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | String |
| service | [Service](#gitlab_aggregator.v1.Service) | repeated | Array of maps &lt;projectID:environmentID&gt; |






<a name="gitlab_aggregator.v1.Service"></a>

### Service
Represents a service


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project | [int64](#int64) |  | Project ID from Gitlab |
| environment | [int64](#int64) |  | Environment ID from Gitlab |





 

 

 


<a name="gitlab_aggregator.v1.Applications"></a>

### Applications
Service for handling applications

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [AppName](#gitlab_aggregator.v1.AppName) | [AppInfo](#gitlab_aggregator.v1.AppInfo) | Use to add a whole new app |
| Get | [AppName](#gitlab_aggregator.v1.AppName) | [AppInfo](#gitlab_aggregator.v1.AppInfo) | Use to get app by ProjectID |
| List | [.common.EmptyMessage](#common.EmptyMessage) | [AppInfo](#gitlab_aggregator.v1.AppInfo) stream | Use to list all apps in db |
| Update | [AppInfo](#gitlab_aggregator.v1.AppInfo) | [AppInfo](#gitlab_aggregator.v1.AppInfo) | Use to update an app (add/edit contour, edit name) |
| Delete | [AppInfo](#gitlab_aggregator.v1.AppInfo) | [.common.EmptyMessage](#common.EmptyMessage) | Use to delete an app (❗️not implemented yet❗️) |

 



<a name="authorization/authorization.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## authorization/authorization.v1.proto
This file has messages for describing authorization


<a name="gitlab_aggregator.v1.UserCreds"></a>

### UserCreds
Represents credentials


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| username | [string](#string) |  | Username: unix-like |
| password | [string](#string) |  | Password |






<a name="gitlab_aggregator.v1.UserInfo"></a>

### UserInfo
Represents the user without sensitive data


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| username | [string](#string) |  | Username: unix-like |






<a name="gitlab_aggregator.v1.UserSensitiveInfo"></a>

### UserSensitiveInfo
Represents the user


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| username | [string](#string) |  | Username: unix-like |
| password | [string](#string) |  | Password |





 

 

 


<a name="gitlab_aggregator.v1.Authorization"></a>

### Authorization
Service for handling authorization

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| SignIn | [UserCreds](#gitlab_aggregator.v1.UserCreds) | [UserInfo](#gitlab_aggregator.v1.UserInfo) | Use to sign in |
| SignUp | [UserCreds](#gitlab_aggregator.v1.UserCreds) | [UserInfo](#gitlab_aggregator.v1.UserInfo) | Use to sign up |
| RefreshToken | [.common.EmptyMessage](#common.EmptyMessage) | [.common.EmptyMessage](#common.EmptyMessage) | Use to refresh access token |

 



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

