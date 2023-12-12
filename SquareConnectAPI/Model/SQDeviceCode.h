#import <Foundation/Foundation.h>
#import "SQObject.h"

/**
* Square Connect API
* Client library for accessing the Square Connect APIs
*
* OpenAPI spec version: 2.0
* Contact: developers@squareup.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/





@protocol SQDeviceCode
@end

@interface SQDeviceCode : SQObject

/* The unique id for this device code. [optional]
 */
@property(nonatomic) NSString* _id;
/* An optional user-defined name for the device code. [optional]
 */
@property(nonatomic) NSString* name;
/* The unique code that can be used to login. [optional]
 */
@property(nonatomic) NSString* code;
/* The unique id of the device that used this code. Populated when the device is paired up. [optional]
 */
@property(nonatomic) NSString* deviceId;
/* The targeting product type of the device code. 
 */
@property(nonatomic) NSString* productType;
/* The location assigned to this code. [optional]
 */
@property(nonatomic) NSString* locationId;
/* The pairing status of the device code. [optional]
 */
@property(nonatomic) NSString* status;
/* When this DeviceCode will expire and no longer login. Timestamp in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* pairBy;
/* When this DeviceCode was created. Timestamp in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* createdAt;
/* When this DeviceCode's status was last changed. Timestamp in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* statusChangedAt;
/* When this DeviceCode was paired. Timestamp in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* pairedAt;

@end
