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





@protocol SQListLocationBookingProfilesRequest
@end

@interface SQListLocationBookingProfilesRequest : SQObject

/* The maximum number of results to return in a paged response. [optional]
 */
@property(nonatomic) NSNumber* limit;
/* The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results. [optional]
 */
@property(nonatomic) NSString* cursor;

@end
