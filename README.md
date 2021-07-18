# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [apps/applications/applications_v1.proto](#apps/applications/applications_v1.proto)
    - [AppFullInfo](#apps.AppFullInfo)
    - [AppId](#apps.AppId)
    - [AppIdAndName](#apps.AppIdAndName)
    - [AppNameAndDescription](#apps.AppNameAndDescription)
    - [AppWithoutContours](#apps.AppWithoutContours)
    - [ListOptions](#apps.ListOptions)
  
    - [Applications](#apps.Applications)
  
- [apps/contours/contours_v1.proto](#apps/contours/contours_v1.proto)
    - [ContourId](#apps.ContourId)
    - [ContourIdAndName](#apps.ContourIdAndName)
    - [ContourInfo](#apps.ContourInfo)
    - [ContourInfoWithoutServices](#apps.ContourInfoWithoutServices)
    - [ContourNameAndDescription](#apps.ContourNameAndDescription)
    - [ContoursListOption](#apps.ContoursListOption)
    - [RepeatedServiceWithId](#apps.RepeatedServiceWithId)
    - [RepeatedServiceWithoutId](#apps.RepeatedServiceWithoutId)
    - [ServiceIdAndContourId](#apps.ServiceIdAndContourId)
    - [ServiceInfo](#apps.ServiceInfo)
    - [ServiceWithoutId](#apps.ServiceWithoutId)
  
    - [Contours](#apps.Contours)
  
- [common/common_v1.proto](#common/common_v1.proto)
    - [EmptyMessage](#common.EmptyMessage)
  
- [users/authentication/authentication_v1.proto](#users/authentication/authentication_v1.proto)
    - [Authentication](#users.Authentication)
  
- [users/authorization/authorization_v1.proto](#users/authorization/authorization_v1.proto)
    - [Authorization](#users.Authorization)
  
- [users/rights/rights_v1.proto](#users/rights/rights_v1.proto)
    - [AccessRuleId](#users.AccessRuleId)
    - [AccessRuleIdAndRight](#users.AccessRuleIdAndRight)
    - [AccessRuleInfo](#users.AccessRuleInfo)
    - [AccessRuleWithoutId](#users.AccessRuleWithoutId)
    - [ListOptions](#users.ListOptions)
  
    - [AccessRights](#users.AccessRights)
  
    - [Rights](#users.Rights)
  
- [users/accounts/accounts_v1.proto](#users/accounts/accounts_v1.proto)
    - [AccountCreds](#users.AccountCreds)
    - [AccountId](#users.AccountId)
    - [AccountInfo](#users.AccountInfo)
    - [AccountInfoWithSensitive](#users.AccountInfoWithSensitive)
    - [AccountName](#users.AccountName)
    - [PasswordUpdate](#users.PasswordUpdate)
  
    - [Accounts](#users.Accounts)
  
- [external/gitlab/environments/environments_v1.proto](#external/gitlab/environments/environments_v1.proto)
    - [EnvironmentID](#gitlab.EnvironmentID)
    - [EnvironmentInfo](#gitlab.EnvironmentInfo)
    - [EnvironmentName](#gitlab.EnvironmentName)
  
    - [Environments](#gitlab.Environments)
  
- [external/gitlab/projects/projects_v1.proto](#external/gitlab/projects/projects_v1.proto)
    - [ProjectID](#gitlab.ProjectID)
    - [ProjectInfo](#gitlab.ProjectInfo)
    - [ProjectName](#gitlab.ProjectName)
  
    - [Projects](#gitlab.Projects)
  
- [Scalar Value Types](#scalar-value-types)



<a name="apps/applications/applications_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## apps/applications/applications_v1.proto
This file has messages for describing applications


<a name="apps.AppFullInfo"></a>

### AppFullInfo
Represents an application with contours


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| name | [string](#string) |  | Application name: Unique string |
| description | [string](#string) |  | Application brief description |
| contours | [ContourInfo](#apps.ContourInfo) | repeated | Map: &lt;contour name: [services]&gt; |






<a name="apps.AppId"></a>

### AppId
Represents an application UUID only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Application id: UUID |






<a name="apps.AppIdAndName"></a>

### AppIdAndName
Represents an application name and id


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| name | [string](#string) |  | Application name: Unique string |






<a name="apps.AppNameAndDescription"></a>

### AppNameAndDescription
Represents an application name only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Application name |
| description | [string](#string) |  | Application brief description |






<a name="apps.AppWithoutContours"></a>

### AppWithoutContours
Represents a application


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| name | [string](#string) |  | Application name: Unique string |
| description | [string](#string) |  | Application brief description |






<a name="apps.ListOptions"></a>

### ListOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| added | [bool](#bool) |  |  |





 

 

 


<a name="apps.Applications"></a>

### Applications
Service for handling applications

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [AppNameAndDescription](#apps.AppNameAndDescription) | [AppWithoutContours](#apps.AppWithoutContours) | Use to add a whole new app |
| Get | [AppId](#apps.AppId) | [AppFullInfo](#apps.AppFullInfo) | Use to get app by ProjectID |
| List | [ListOptions](#apps.ListOptions) | [AppWithoutContours](#apps.AppWithoutContours) stream | Use to list all apps in db |
| Update | [AppWithoutContours](#apps.AppWithoutContours) | [AppWithoutContours](#apps.AppWithoutContours) | Use to update an app (add/edit contour, edit name) |
| Delete | [AppIdAndName](#apps.AppIdAndName) | [.common.EmptyMessage](#common.EmptyMessage) | Use to delete an app |

 



<a name="apps/contours/contours_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## apps/contours/contours_v1.proto
This file has messages for describing contours


<a name="apps.ContourId"></a>

### ContourId
Represents an contour UUID only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Contour ID: UUID |






<a name="apps.ContourIdAndName"></a>

### ContourIdAndName



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| name | [string](#string) |  | Contour name: Unique string |
| app_id | [string](#string) |  | Applcation ID: UUID |






<a name="apps.ContourInfo"></a>

### ContourInfo
Represents a full contour


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| name | [string](#string) |  | Contour name: Unique string |
| description | [string](#string) |  |  |
| services | [ServiceInfo](#apps.ServiceInfo) | repeated | Array of maps &lt;projectID:environmentID&gt; |
| app_id | [string](#string) |  | Applcation ID: UUID |






<a name="apps.ContourInfoWithoutServices"></a>

### ContourInfoWithoutServices



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |
| description | [string](#string) |  |  |






<a name="apps.ContourNameAndDescription"></a>

### ContourNameAndDescription



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| description | [string](#string) |  |  |
| app_id | [string](#string) |  | Applcation ID: UUID |






<a name="apps.ContoursListOption"></a>

### ContoursListOption



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| app_id | [string](#string) |  | Applcation ID: UUID |






<a name="apps.RepeatedServiceWithId"></a>

### RepeatedServiceWithId
Represents an array of services


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| contour_id | [string](#string) |  |  |
| services | [ServiceInfo](#apps.ServiceInfo) | repeated |  |






<a name="apps.RepeatedServiceWithoutId"></a>

### RepeatedServiceWithoutId
Represents an array of services


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| contour_id | [string](#string) |  |  |
| services | [ServiceWithoutId](#apps.ServiceWithoutId) | repeated |  |






<a name="apps.ServiceIdAndContourId"></a>

### ServiceIdAndContourId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| contour_id | [string](#string) |  |  |
| service_id | [string](#string) |  |  |






<a name="apps.ServiceInfo"></a>

### ServiceInfo
Represents a service


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| project | [int64](#int64) |  | Project ID from Gitlab |
| environment | [int64](#int64) |  | Environment ID from Gitlab |






<a name="apps.ServiceWithoutId"></a>

### ServiceWithoutId
Represents a service without ID


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project | [int64](#int64) |  | Project ID from Gitlab |
| environment | [int64](#int64) |  | Environment ID from Gitlab |





 

 

 


<a name="apps.Contours"></a>

### Contours
Service for handling contours

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [ContourNameAndDescription](#apps.ContourNameAndDescription) | [ContourInfoWithoutServices](#apps.ContourInfoWithoutServices) | Use to add a whole new app |
| Get | [ContourId](#apps.ContourId) | [ContourInfo](#apps.ContourInfo) | Use to get app by ProjectID |
| List | [ContoursListOption](#apps.ContoursListOption) | [ContourInfo](#apps.ContourInfo) stream | Use to list all apps in db |
| Update | [ContourInfoWithoutServices](#apps.ContourInfoWithoutServices) | [ContourInfoWithoutServices](#apps.ContourInfoWithoutServices) | Use to update an app (add/edit contour, edit name) |
| Delete | [ContourIdAndName](#apps.ContourIdAndName) | [.common.EmptyMessage](#common.EmptyMessage) | Use to delete an app (❗️not implemented yet❗️) |
| AddServices | [RepeatedServiceWithoutId](#apps.RepeatedServiceWithoutId) | [.common.EmptyMessage](#common.EmptyMessage) | Use to add a services to the contour |
| RemoveService | [ServiceIdAndContourId](#apps.ServiceIdAndContourId) | [.common.EmptyMessage](#common.EmptyMessage) | Use to rmove services from the contour |

 



<a name="common/common_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/common_v1.proto
This file has messages for reusable common messages


<a name="common.EmptyMessage"></a>

### EmptyMessage
Represents an empty message





 

 

 

 



<a name="users/authentication/authentication_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## users/authentication/authentication_v1.proto
Messages for describing authentication

 

 

 


<a name="users.Authentication"></a>

### Authentication
Service for handling authentication

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| SignIn | [AccountCreds](#users.AccountCreds) | [.common.EmptyMessage](#common.EmptyMessage) | Use to sign in |
| SignUp | [AccountCreds](#users.AccountCreds) | [.common.EmptyMessage](#common.EmptyMessage) | Use to sign up |

 



<a name="users/authorization/authorization_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## users/authorization/authorization_v1.proto
This file has messages for describing authorization

 

 

 


<a name="users.Authorization"></a>

### Authorization
Service for handling authorization

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| RefreshToken | [.common.EmptyMessage](#common.EmptyMessage) | [.common.EmptyMessage](#common.EmptyMessage) | Use to refresh access token |

 



<a name="users/rights/rights_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## users/rights/rights_v1.proto
This file has messages for describing applications


<a name="users.AccessRuleId"></a>

### AccessRuleId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="users.AccessRuleIdAndRight"></a>

### AccessRuleIdAndRight



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| access_right | [AccessRights](#users.AccessRights) |  |  |






<a name="users.AccessRuleInfo"></a>

### AccessRuleInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| user_d | [string](#string) |  |  |
| application_id | [string](#string) |  |  |
| access_right | [AccessRights](#users.AccessRights) |  |  |






<a name="users.AccessRuleWithoutId"></a>

### AccessRuleWithoutId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [string](#string) |  |  |
| application_id | [string](#string) |  |  |
| access_right | [AccessRights](#users.AccessRights) |  |  |






<a name="users.ListOptions"></a>

### ListOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| app_id | [apps.AppId](#apps.AppId) |  |  |





 


<a name="users.AccessRights"></a>

### AccessRights


| Name | Number | Description |
| ---- | ------ | ----------- |
| ACCESS_RIGHTS_READ_UNSPECIFIED | 0 |  |
| ACCESS_RIGHTS_WRITE | 1 |  |
| ACCESS_RIGHTS_DELETE | 2 |  |


 

 


<a name="users.Rights"></a>

### Rights
Service for handling access rights

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [AccessRuleWithoutId](#users.AccessRuleWithoutId) | [AccessRuleInfo](#users.AccessRuleInfo) |  |
| Update | [AccessRuleIdAndRight](#users.AccessRuleIdAndRight) | [AccessRuleIdAndRight](#users.AccessRuleIdAndRight) |  |
| Delete | [AccessRuleId](#users.AccessRuleId) | [.common.EmptyMessage](#common.EmptyMessage) |  |
| Get | [AccessRuleId](#users.AccessRuleId) | [AccessRuleInfo](#users.AccessRuleInfo) |  |
| List | [ListOptions](#users.ListOptions) | [AccessRuleInfo](#users.AccessRuleInfo) stream |  |

 



<a name="users/accounts/accounts_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## users/accounts/accounts_v1.proto
This file has messages for describing authentication


<a name="users.AccountCreds"></a>

### AccountCreds
Represents credentials (username and password)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| username | [string](#string) |  | username: unix-like |
| password | [string](#string) |  | Password |






<a name="users.AccountId"></a>

### AccountId
Represents Account ID only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |






<a name="users.AccountInfo"></a>

### AccountInfo
Represents the Account without sensitive data


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| username | [string](#string) |  | username: unix-like |
| gitlab_token | [string](#string) |  |  |






<a name="users.AccountInfoWithSensitive"></a>

### AccountInfoWithSensitive



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | UUID |
| username | [string](#string) |  | username: unix-like |
| password | [string](#string) |  | Password |
| gitlab_token | [string](#string) |  |  |






<a name="users.AccountName"></a>

### AccountName
Represents username only


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| username | [string](#string) |  | username |






<a name="users.PasswordUpdate"></a>

### PasswordUpdate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| username | [string](#string) |  |  |
| old_password | [string](#string) |  |  |
| new_password | [string](#string) |  |  |





 

 

 


<a name="users.Accounts"></a>

### Accounts
Service for handling accounts

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [AccountCreds](#users.AccountCreds) | [AccountInfo](#users.AccountInfo) | Use to create a Account |
| UpdateUser | [AccountInfo](#users.AccountInfo) | [AccountInfo](#users.AccountInfo) | Use to update a Account |
| UpdatePassword | [PasswordUpdate](#users.PasswordUpdate) | [.common.EmptyMessage](#common.EmptyMessage) |  |
| Get | [AccountId](#users.AccountId) | [AccountInfo](#users.AccountInfo) | Account to get a Account by ID |
| List | [AccountName](#users.AccountName) | [AccountInfo](#users.AccountInfo) stream | List Accounts |
| AddAppToUser | [.apps.AppId](#apps.AppId) | [.common.EmptyMessage](#common.EmptyMessage) | Add an app to the user app list |

 



<a name="external/gitlab/environments/environments_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## external/gitlab/environments/environments_v1.proto
This file has messages for describing gitlab environments


<a name="gitlab.EnvironmentID"></a>

### EnvironmentID
Represents a Gitlab Environment ID


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project_id | [int64](#int64) |  | Gitlab Project ID |
| id | [int64](#int64) |  | Gitlab Environment Id |






<a name="gitlab.EnvironmentInfo"></a>

### EnvironmentInfo
Represents a Gitlab Environment


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  | Gitlab Environment ID |
| name | [string](#string) |  | Gitlab Environment name |
| state | [string](#string) |  | Gitlab Environment state |
| url | [string](#string) |  | Gitlab Environment external URL |
| ref | [string](#string) |  | Gitlab Environment commit |
| sha | [string](#string) |  | Gitlab Environment commit SHA |
| ci_status | [string](#string) |  | Gitlab Environment Gitlab-CI status |
| ci_id | [int64](#int64) |  | Gitlab Environment Gitlab-CI ID |
| user_id | [int64](#int64) |  | Gitlab Environment Gitlab-CI trigger user ID |
| user_name | [string](#string) |  | Gitlab Environment Gitlab-CI trigger user name |
| updated_at | [string](#string) |  | Gitlab Environment update time |






<a name="gitlab.EnvironmentName"></a>

### EnvironmentName
Represents a Gitlab Environment name


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project_id | [int64](#int64) |  | Gitlab Project ID |
| name | [string](#string) |  | Gitlab Environment name |





 

 

 


<a name="gitlab.Environments"></a>

### Environments
Service for handling environments
Kinda gitlab proxy

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Get | [EnvironmentID](#gitlab.EnvironmentID) | [EnvironmentInfo](#gitlab.EnvironmentInfo) | Get Environment by ID |
| List | [EnvironmentName](#gitlab.EnvironmentName) | [EnvironmentInfo](#gitlab.EnvironmentInfo) stream | Stream Environments by name |

 



<a name="external/gitlab/projects/projects_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## external/gitlab/projects/projects_v1.proto
This file has messages for describing gitlab projects


<a name="gitlab.ProjectID"></a>

### ProjectID
Represents a Gitlab Project ID


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  | Gitlab Project ID |






<a name="gitlab.ProjectInfo"></a>

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






<a name="gitlab.ProjectName"></a>

### ProjectName
Represents a Gitlab Project name


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Gitlab Project name |





 

 

 


<a name="gitlab.Projects"></a>

### Projects
Service for handling projects
Kinda gitlab proxy

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Get | [ProjectID](#gitlab.ProjectID) | [ProjectInfo](#gitlab.ProjectInfo) | Get project by ID |
| List | [ProjectName](#gitlab.ProjectName) | [ProjectInfo](#gitlab.ProjectInfo) stream | Stream projects by name |

 



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

