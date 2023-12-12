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





@protocol SQMerchantCustomAttributeDeleteRequest
@end

@interface SQMerchantCustomAttributeDeleteRequest : SQObject

/* The key of the associated custom attribute definition. Represented as a qualified key if the requesting app is not the definition owner. [optional]
 */
@property(nonatomic) NSString* key;

@end