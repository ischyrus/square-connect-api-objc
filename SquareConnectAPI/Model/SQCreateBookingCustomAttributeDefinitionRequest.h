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


#import "SQCustomAttributeDefinition.h"
@protocol SQCustomAttributeDefinition;
@class SQCustomAttributeDefinition;



@protocol SQCreateBookingCustomAttributeDefinitionRequest
@end

@interface SQCreateBookingCustomAttributeDefinitionRequest : SQObject

/* The custom attribute definition to create, with the following fields:  - `key`  - `name`. If provided, `name` must be unique (case-sensitive) across all visible booking-related custom attribute definitions for the seller.  - `description`  - `visibility`. Note that all custom attributes are visible in exported booking data, including those set to `VISIBILITY_HIDDEN`.  - `schema`. With the exception of the `Selection` data type, the `schema` is specified as a simple URL to the JSON schema definition hosted on the Square CDN. For more information, see [Specifying the schema](https://developer.squareup.com/docs/booking-custom-attributes-api/custom-attribute-definitions#specify-schema). 
 */
@property(nonatomic) SQCustomAttributeDefinition* customAttributeDefinition;
/* A unique identifier for this request, used to ensure idempotency. For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). [optional]
 */
@property(nonatomic) NSString* idempotencyKey;

@end
