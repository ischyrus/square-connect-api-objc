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


#import "SQCustomAttribute.h"
@protocol SQCustomAttribute;
@class SQCustomAttribute;



@protocol SQUpsertBookingCustomAttributeRequest
@end

@interface SQUpsertBookingCustomAttributeRequest : SQObject

/* The custom attribute to create or update, with the following fields:  - `value`. This value must conform to the `schema` specified by the definition. For more information, see [Value data types](https://developer.squareup.com/docs/booking-custom-attributes-api/custom-attributes#value-data-types).  - `version`. To enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control for an update operation, include this optional field and specify the current version of the custom attribute. 
 */
@property(nonatomic) SQCustomAttribute* customAttribute;
/* A unique identifier for this request, used to ensure idempotency. For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). [optional]
 */
@property(nonatomic) NSString* idempotencyKey;

@end
