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





@protocol SQBreakType
@end

@interface SQBreakType : SQObject

/* The UUID for this object. [optional]
 */
@property(nonatomic) NSString* _id;
/* The ID of the business location this type of break applies to. 
 */
@property(nonatomic) NSString* locationId;
/* A human-readable name for this type of break. The name is displayed to employees in Square products. 
 */
@property(nonatomic) NSString* breakName;
/* Format: RFC-3339 P[n]Y[n]M[n]DT[n]H[n]M[n]S. The expected length of this break. Precision less than minutes is truncated.  Example for break expected duration of 15 minutes: T15M 
 */
@property(nonatomic) NSString* expectedDuration;
/* Whether this break counts towards time worked for compensation purposes. 
 */
@property(nonatomic) NSNumber* isPaid;
/* Used for resolving concurrency issues. The request fails if the version provided does not match the server version at the time of the request. If a value is not provided, Square's servers execute a \"blind\" write; potentially overwriting another writer's data. [optional]
 */
@property(nonatomic) NSNumber* version;
/* A read-only timestamp in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* createdAt;
/* A read-only timestamp in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* updatedAt;

@end