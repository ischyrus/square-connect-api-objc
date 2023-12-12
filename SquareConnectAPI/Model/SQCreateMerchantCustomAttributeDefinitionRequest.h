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



@protocol SQCreateMerchantCustomAttributeDefinitionRequest
@end

@interface SQCreateMerchantCustomAttributeDefinitionRequest : SQObject

/* The custom attribute definition to create. Note the following: - With the exception of the `Selection` data type, the `schema` is specified as a simple URL to the JSON schema definition hosted on the Square CDN. For more information, including supported values and constraints, see [Supported data types](https://developer.squareup.com/docs/devtools/customattributes/overview#supported-data-types). - `name` is required unless `visibility` is set to `VISIBILITY_HIDDEN`. 
 */
@property(nonatomic) SQCustomAttributeDefinition* customAttributeDefinition;
/* A unique identifier for this request, used to ensure idempotency. For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). [optional]
 */
@property(nonatomic) NSString* idempotencyKey;

@end
