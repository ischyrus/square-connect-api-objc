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





@protocol SQListTeamMemberBookingProfilesRequest
@end

@interface SQListTeamMemberBookingProfilesRequest : SQObject

/* Indicates whether to include only bookable team members in the returned result (`true`) or not (`false`). [optional]
 */
@property(nonatomic) NSNumber* bookableOnly;
/* The maximum number of results to return in a paged response. [optional]
 */
@property(nonatomic) NSNumber* limit;
/* The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results. [optional]
 */
@property(nonatomic) NSString* cursor;
/* Indicates whether to include only team members enabled at the given location in the returned result. [optional]
 */
@property(nonatomic) NSString* locationId;

@end
