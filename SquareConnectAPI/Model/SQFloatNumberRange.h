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





@protocol SQFloatNumberRange
@end

@interface SQFloatNumberRange : SQObject

/* A decimal value indicating where the range starts. [optional]
 */
@property(nonatomic) NSString* startAt;
/* A decimal value indicating where the range ends. [optional]
 */
@property(nonatomic) NSString* endAt;

@end
