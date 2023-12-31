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





@protocol SQTenderSquareAccountDetails
@end

@interface SQTenderSquareAccountDetails : SQObject

/* The Square Account payment's current state (such as `AUTHORIZED` or `CAPTURED`). See [TenderSquareAccountDetailsStatus](https://developer.squareup.com/reference/square_2023-10-18/enums/TenderSquareAccountDetailsStatus) for possible values. [optional]
 */
@property(nonatomic) NSString* status;

@end
