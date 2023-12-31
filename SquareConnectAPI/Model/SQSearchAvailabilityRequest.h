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


#import "SQSearchAvailabilityQuery.h"
@protocol SQSearchAvailabilityQuery;
@class SQSearchAvailabilityQuery;



@protocol SQSearchAvailabilityRequest
@end

@interface SQSearchAvailabilityRequest : SQObject

/* Query conditions used to filter buyer-accessible booking availabilities. 
 */
@property(nonatomic) SQSearchAvailabilityQuery* query;

@end
