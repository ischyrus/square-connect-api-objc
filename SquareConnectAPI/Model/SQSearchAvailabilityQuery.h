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


#import "SQSearchAvailabilityFilter.h"
@protocol SQSearchAvailabilityFilter;
@class SQSearchAvailabilityFilter;



@protocol SQSearchAvailabilityQuery
@end

@interface SQSearchAvailabilityQuery : SQObject

/* The query filter to search for buyer-accessible availabilities of existing bookings. 
 */
@property(nonatomic) SQSearchAvailabilityFilter* filter;

@end
