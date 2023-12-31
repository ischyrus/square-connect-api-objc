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





@protocol SQSaveCardOptions
@end

@interface SQSaveCardOptions : SQObject

/* The square-assigned ID of the customer linked to the saved card. 
 */
@property(nonatomic) NSString* customerId;
/* The id of the created card-on-file. [optional]
 */
@property(nonatomic) NSString* cardId;
/* An optional user-defined reference ID that can be used to associate this `Card` to another entity in an external system. For example, a customer ID generated by a third-party system. [optional]
 */
@property(nonatomic) NSString* referenceId;

@end
