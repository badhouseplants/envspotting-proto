# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [environments/environments.v1.proto](#environments/environments.v1.proto)
    - [EnvironmentID](#environments.v1.EnvironmentID)
    - [EnvironmentInfo](#environments.v1.EnvironmentInfo)
    - [EnvironmentName](#environments.v1.EnvironmentName)
  
    - [Environments](#environments.v1.Environments)
  
- [projects/projects.v1.proto](#projects/projects.v1.proto)
    - [ProjectID](#projects.v1.ProjectID)
    - [ProjectInfo](#projects.v1.ProjectInfo)
    - [ProjectName](#projects.v1.ProjectName)
  
    - [Projects](#projects.v1.Projects)
  
- [common/common.proto](#common/common.proto)
    - [EmptyMessage](#common.EmptyMessage)
  
- [contours/contours.v1.proto](#contours/contours.v1.proto)
    - [ContourId](#contours.v1.ContourId)
    - [ContourIdAndName](#contours.v1.ContourIdAndName)
    - [ContourIdAndService](#contours.v1.ContourIdAndService)
    - [ContourIdAndServices](#contours.v1.ContourIdAndServices)
    - [ContourInfo](#contours.v1.ContourInfo)
    - [ContourName](#contours.v1.ContourName)
    - [Service](#contours.v1.Service)
  
    - [Contours](#contours.v1.Contours)
  
- [users/users.v1.proto](#users/users.v1.proto)
    - [UserCreds](#users.v1.UserCreds)
    - [UserId](#users.v1.UserId)
    - [UserInfo](#users.v1.UserInfo)
    - [UserInfoWithSensitive](#users.v1.UserInfoWithSensitive)
    - [UserName](#users.v1.UserName)
  
    - [Authentication](#users.v1.Authentication)
  
- [applications/applications.v1.proto](#applications/applications.v1.proto)
    - [AppId](#applications.v1.AppId)
    - [AppInfo](#applications.v1.AppInfo)
    - [AppName](#applications.v1.AppName)
    - [Contour](#applications.v1.Contour)
    - [Service](#applications.v1.Service)
  
    - [Applications](#applications.v1.Applications)
  
- [authorization/authorization.v1.proto](#authorization/authorization.v1.proto)
    - [Authorization](#authorization.v1.Authorization)
  
- [authentication/authentication.v1.proto](#authentication/authentication.v1.proto)
    - [UserCreds](#authentication.v1.UserCreds)
    - [UserInfo](#authentication.v1.UserInfo)
  
    - [Authentication](#authentication.v1.Authentication)
  
- [Scalar Value Types](#scalar-value-types)



<a name="environments/environments.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## environments/environments.v1.proto
This file has messages for describing gitlab environments


<a name="environments.v1.EnvironmentID"></a>

### EnvironmentID
Represents a Gitlab Environment ID


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project_id | [int64](#int64) |  | Gitlab Project ID |
| id | [int64](#int64) |  | Gitlab Environment Id |






<a name="environments.v1.EnvironmentInfo"></a>

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
| ci_status | [string](#string) |  | Gitlab Environment Gitlab-CI status |
| ci_id | [int64](#int64) |  | Gitlab Environment Gitlab-CI ID |
| user_id | [int64](#int64) |  | Gitlab Environment Gitlab-CI trigger user ID |
| user_name | [string](#string) |  | Gitlab Environment Gitlab-CI trigger user name |
| updated_at | [string](#string) |  | Gitlab Environment update time |






<a name="environments.v1.EnvironmentName"></a>

### EnvironmentName
Represents a Gitlab Environment name


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project_id | [int64](#int64) |  | Gitlab Project ID |
| name | [string](#string) |  | Gitlab Environment name |





 

 

 


<a name="environments.v1.Environments"></a>

### Environments
Service for handling environments
Kinda gitlab proxy

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Get | [EnvironmentID](#environments.v1.EnvironmentID) | [EnvironmentInfo](#environments.v1.EnvironmentInfo) | Get Environment by ID |
| List | [EnvironmentName](#environments.v1.EnvironmentName) | [EnvironmentInfo](#environments.v1.EnvironmentInfo) stream | Stream Environments by name |

 



<a name="projects/projects.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## projects/projects.v1.proto
This file has messages for describing gitlab projects


<a name="projects.v1.ProjectID"></a>

### ProjectID
Represents a Gitlab Project ID


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  | Gitlab Project ID |






<a name="projects.v1.ProjectInfo"></a>

### ProjectInfo
Represents a Gitlab Project


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  | Gitlab Project ID |
| name | [string](#string) |  | Gitlab Project name |
| description | [string](#string) |  | Gitlab Project description |
| web_url | [string](#string) |  | Gitlab Project URL |
| avatar_url | [string](#string) |  | Gitlab Project avatar URL |
| readme_url | [string](#string) |  | Gitlab Project readme ID |






<a name="projects.v1.ProjectName"></a>

### ProjectName
Represents a Gitlab Project name


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Gitlab Project name |





 

 

 


<a name="projects.v1.Projects"></a>

### Projects
Service for handling projects
Kinda gitlab proxy

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Get | [ProjectID](#projects.v1.ProjectID) | [ProjectInfo](#projects.v1.ProjectInfo) | Get project by ID |
| List | [ProjectName](#projects.v1.ProjectName) | [ProjectInfo](#projects.v1.ProjectInfo) stream | Stream projects by name |

 



<a name="common/common.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/common.proto
This file has messages for reusable common messages


<a name="common.EmptyMessage"></a>

### EmptyMessage
Represents an empty message





 

 

 

 



<a name="contours/contours.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## contours/contours.v1.proto
This file has messages for describing contours


<a name="contours.v1.ContourId"></a>

### ContourId
Represents an contour UUID only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Contour id: UUID |






<a name="contours.v1.ContourIdAndName"></a>

### ContourIdAndName



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| name | [string](#string) |  | Contour name: Unique string |






<a name="contours.v1.ContourIdAndService"></a>

### ContourIdAndService



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| services | [Service](#contours.v1.Service) | repeated | Array of maps &lt;projectID:environmentID&gt; |






<a name="contours.v1.ContourIdAndServices"></a>

### ContourIdAndServices



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| services | [Service](#contours.v1.Service) | repeated | Array of maps &lt;projectID:environmentID&gt; |






<a name="contours.v1.ContourInfo"></a>

### ContourInfo
Represents a contour


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| name | [string](#string) |  | Contour name: Unique string |
| services | [Service](#contours.v1.Service) | repeated | Array of maps &lt;projectID:environmentID&gt; |






<a name="contours.v1.ContourName"></a>

### ContourName
Represents an contour name only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Application name |






<a name="contours.v1.Service"></a>

### Service
Represents a service


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project | [int64](#int64) |  | Project ID from Gitlab |
| environment | [int64](#int64) |  | Environment ID from Gitlab |





 

 

 


<a name="contours.v1.Contours"></a>

### Contours
Service for handling contours

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [ContourName](#contours.v1.ContourName) | [ContourInfo](#contours.v1.ContourInfo) | Use to add a whole new app |
| Get | [ContourId](#contours.v1.ContourId) | [ContourInfo](#contours.v1.ContourInfo) | Use to get app by ProjectID |
| List | [.common.EmptyMessage](#common.EmptyMessage) | [ContourInfo](#contours.v1.ContourInfo) stream | Use to list all apps in db |
| Update | [ContourInfo](#contours.v1.ContourInfo) | [ContourInfo](#contours.v1.ContourInfo) | Use to update an app (add/edit contour, edit name) |
| Delete | [ContourInfo](#contours.v1.ContourInfo) | [.common.EmptyMessage](#common.EmptyMessage) | Use to delete an app (❗️not implemented yet❗️) |
| AddServices | [.common.EmptyMessage](#common.EmptyMessage) | [.common.EmptyMessage](#common.EmptyMessage) | Use to add a services to the contour |

 



<a name="users/users.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## users/users.v1.proto
This file has messages for describing authentication


<a name="users.v1.UserCreds"></a>

### UserCreds
Represents credentials (username and password)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| username | [string](#string) |  | Username: unix-like |
| password | [string](#string) |  | Password |






<a name="users.v1.UserId"></a>

### UserId
Represents user ID only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |






<a name="users.v1.UserInfo"></a>

### UserInfo
Represents the user without sensitive data


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| username | [string](#string) |  | Username: unix-like |






<a name="users.v1.UserInfoWithSensitive"></a>

### UserInfoWithSensitive



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| username | [string](#string) |  | Username: unix-like |
| password | [string](#string) |  | Password |






<a name="users.v1.UserName"></a>

### UserName
Represents username only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| username | [string](#string) |  | Username |





 

 

 


<a name="users.v1.Authentication"></a>

### Authentication
Service for handling users

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [UserCreds](#users.v1.UserCreds) | [UserInfo](#users.v1.UserInfo) | Use to create a user |
| Update | [UserInfoWithSensitive](#users.v1.UserInfoWithSensitive) | [UserInfo](#users.v1.UserInfo) |  |
| Get | [UserId](#users.v1.UserId) | [UserInfo](#users.v1.UserInfo) |  |
| List | [UserName](#users.v1.UserName) | [UserInfo](#users.v1.UserInfo) stream |  |
| SignUp | [UserCreds](#users.v1.UserCreds) | [UserInfo](#users.v1.UserInfo) | Use to sign up |

 



<a name="applications/applications.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## applications/applications.v1.proto
This file has messages for describing applications


<a name="applications.v1.AppId"></a>

### AppId
Represents an application UUID only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Application id: UUID |






<a name="applications.v1.AppInfo"></a>

### AppInfo
Represents a application


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| name | [string](#string) |  | Application name: Unique string |
| contour | [Contour](#applications.v1.Contour) | repeated | Map: &lt;contour name: [services]&gt; |






<a name="applications.v1.AppName"></a>

### AppName
Represents an application name only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Application name |






<a name="applications.v1.Contour"></a>

### Contour
Represents a contour (the whole environment)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | String |
| service | [Service](#applications.v1.Service) | repeated | Array of maps &lt;projectID:environmentID&gt; |






<a name="applications.v1.Service"></a>

### Service
Represents a service


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project | [int64](#int64) |  | Project ID from Gitlab |
| environment | [int64](#int64) |  | Environment ID from Gitlab |





 

 

 


<a name="applications.v1.Applications"></a>

### Applications
Service for handling applications

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [AppName](#applications.v1.AppName) | [AppInfo](#applications.v1.AppInfo) | Use to add a whole new app |
| Get | [AppId](#applications.v1.AppId) | [AppInfo](#applications.v1.AppInfo) | Use to get app by ProjectID |
| List | [.common.EmptyMessage](#common.EmptyMessage) | [AppInfo](#applications.v1.AppInfo) stream | Use to list all apps in db |
| Update | [AppInfo](#applications.v1.AppInfo) | [AppInfo](#applications.v1.AppInfo) | Use to update an app (add/edit contour, edit name) |
| Delete | [AppInfo](#applications.v1.AppInfo) | [.common.EmptyMessage](#common.EmptyMessage) | Use to delete an app (❗️not implemented yet❗️) |

 



<a name="authorization/authorization.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## authorization/authorization.v1.proto
This file has messages for describing authorization

 

 

 


<a name="authorization.v1.Authorization"></a>

### Authorization
Service for handling authorization

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| RefreshToken | [.common.EmptyMessage](#common.EmptyMessage) | [.common.EmptyMessage](#common.EmptyMessage) | Use to refresh access token |

 



<a name="authentication/authentication.v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## authentication/authentication.v1.proto
This file has messages for describing authentication


<a name="authentication.v1.UserCreds"></a>

### UserCreds
Represents credentials


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| username | [string](#string) |  | Username: unix-like |
| password | [string](#string) |  | Password |






<a name="authentication.v1.UserInfo"></a>

### UserInfo
Represents the user without sensitive data


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| username | [string](#string) |  | Username: unix-like |





 

 

 


<a name="authentication.v1.Authentication"></a>

### Authentication
Service for handling authentication

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| SignIn | [UserCreds](#authentication.v1.UserCreds) | [UserInfo](#authentication.v1.UserInfo) | Use to sign in |
| SignUp | [UserCreds](#authentication.v1.UserCreds) | [UserInfo](#authentication.v1.UserInfo) | Use to sign up |

 



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

