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





@protocol SQFulfillmentFulfillmentEntry
@end

@interface SQFulfillmentFulfillmentEntry : SQObject

/* A unique ID that identifies the fulfillment entry only within this order. [optional]
 */
@property(nonatomic) NSString* uid;
/* The `uid` from the order line item. 
 */
@property(nonatomic) NSString* lineItemUid;
/* The quantity of the line item being fulfilled, formatted as a decimal number. For example, `\"3\"`.  Fulfillments for line items with a `quantity_unit` can have non-integer quantities. For example, `\"1.70000\"`. 
 */
@property(nonatomic) NSString* quantity;
/* Application-defined data attached to this fulfillment entry. Metadata fields are intended to store descriptive references or associations with an entity in another system or store brief information about the object. Square does not process this field; it only stores and returns it in relevant API calls. Do not use metadata to store any sensitive information (such as personally identifiable information or card details).  Keys written by applications must be 60 characters or less and must be in the character set `[a-zA-Z0-9_-]`. Entries can also include metadata generated by Square. These keys are prefixed with a namespace, separated from the key with a ':' character.  Values have a maximum length of 255 characters.  An application can have up to 10 entries per metadata field.  Entries written by applications are private and can only be read or modified by the same application.  For more information, see [Metadata](https://developer.squareup.com/docs/build-basics/metadata). [optional]
 */
@property(nonatomic) NSDictionary<NSString*, NSString*>* metadata;

@end
