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





@protocol SQPublishInvoiceRequest
@end

@interface SQPublishInvoiceRequest : SQObject

/* The version of the [invoice](https://developer.squareup.com/reference/square_2023-10-18/objects/Invoice) to publish. This must match the current version of the invoice; otherwise, the request is rejected. 
 */
@property(nonatomic) NSNumber* version;
/* A unique string that identifies the `PublishInvoice` request. If you do not  provide `idempotency_key` (or provide an empty string as the value), the endpoint  treats each request as independent.  For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). [optional]
 */
@property(nonatomic) NSString* idempotencyKey;

@end
